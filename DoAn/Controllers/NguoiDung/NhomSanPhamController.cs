using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models.EF;
namespace DoAn.Controllers.NguoiDung
{
    public class NhomSanPhamController : Controller
    {
        TraSuaEntities db = new TraSuaEntities();
        // GET: NhomSanPham
        public ActionResult LstNhomSanPham()
        {
            var lstnhomsanpham = db.LoaiSanPhams.Where(x=>x.SanPhamChinh==1).ToList();
            return View(lstnhomsanpham);
        }
    }
}