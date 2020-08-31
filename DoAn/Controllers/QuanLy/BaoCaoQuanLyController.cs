using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models.EF;
using DoAn.Models.Model.QuanLy;
using DoAn.Models.Dao.QuanLy;

namespace DoAn.Controllers.QuanLy
{
    public class BaoCaoQuanLyController : Controller
    {
        TraSuaEntities db = new TraSuaEntities();
        BaoCaoChiNhanhDao dao = new BaoCaoChiNhanhDao();
        // GET: BaoCaoQuanLy
        public ActionResult Index()
        {
            var session = (DoAn.Common.Session.NhanVienSession)Session[DoAn.Common.Constants.NHANVIEN_SESSION];
            if (session != null)
            {
                ViewBag.NguyenLieu = db.NguyenLieux.ToList();
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }


        }
        public JsonResult List( int? page)
        {
            var session_nhanvien = (DoAn.Common.Session.NhanVienSession)Session[DoAn.Common.Constants.NHANVIEN_SESSION];
            var list = db.BaoCaoChiNhanhs.Where(x=>x.MaChiNhanh==session_nhanvien.MaChiNhanh).OrderByDescending(x => x.MaBaoCao).ToList();

            int pageSize = 10;
            var data = new List<BaoCaoQuanLyModel>();
            int i = 0;
            foreach (var item in list)
            {
                i++;
                var itemmodel = new BaoCaoQuanLyModel();
                itemmodel.STT = i;
                itemmodel.Id = item.MaBaoCao;
                itemmodel.NgayBaoCaoShow =String.Format("{0:d/M/yyyy}",item.NgayBaoCao);
                itemmodel.TongSoLuong = item.SoLuongBan;
                itemmodel.DoanhThu = item.DoanhThu;
                itemmodel.GhiChu = item.GhiChu;
                data.Add(itemmodel);
            }
            if (page > 0)
            {
                page = page;
            }
            else
            {
                page = 1;
            }
            int start = (int)(page - 1) * pageSize;

            ViewBag.pageCurrent = page;
            int totalPage = data.Count();
            float totalNumsize = (totalPage / (float)pageSize);
            int numSize = (int)Math.Ceiling(totalNumsize);
            ViewBag.numSize = numSize;
            var datamodel = data.Skip(start).Take(pageSize);

            return Json(new { data = datamodel, pageCurrent = page, numSize = numSize }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Add(BaoCaoQuanLyModel baocaochinhanh)
        {
            var session = (DoAn.Common.Session.NhanVienSession)Session[DoAn.Common.Constants.NHANVIEN_SESSION];
            return Json(dao.AddBaoCaoChiNhanh(baocaochinhanh, session.MaChiNhanh), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetbyID(int ID)
        {
            var baocao = db.BaoCaoChiNhanhs.FirstOrDefault(x => x.MaBaoCao == ID);
            return Json(baocao, JsonRequestBehavior.AllowGet);
        }
       
        public JsonResult Update(BaoCaoQuanLyModel baocaochinhanh)
        {
            return Json(dao.updateBaoCaoChiNhanh(baocaochinhanh), JsonRequestBehavior.AllowGet);
        }
        public JsonResult Delete(int ID)
        {
            return Json(dao.DeleteBaoCaoChiNhanh(ID), JsonRequestBehavior.AllowGet);
        }
    }
}