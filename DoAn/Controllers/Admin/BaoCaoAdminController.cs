using DoAn.Models.Dao.Admin;
using DoAn.Models.Dao.QuanLy;
using DoAn.Models.EF;
using DoAn.Models.Model.Admin;
using DoAn.Models.Model.QuanLy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Controllers.Admin
{
    public class BaoCaoAdminController : Controller
    {
        // GET: BaoCaoAdmin
        TraSuaEntities db = new TraSuaEntities();
        BaoCaoChiNhanhDao dao = new BaoCaoChiNhanhDao();
        // GET: BaoCaoQuanLy
        public ActionResult Index(string ngay=null)
        {
            ViewBag.NguyenLieu = db.NguyenLieux.ToList();
            var session = (DoAn.Common.Session.UserLogin)Session[DoAn.Common.Constants.USER_SESSION];
            if (session != null)
            {
                var list = db.BaoCaoChiNhanhs.OrderByDescending(x => x.MaBaoCao).ToList();
                if(ngay == null || ngay == "")
                {
                    DateTime now = DateTime.Now;
                    ViewBag.NgayBaoCao = now.Day.ToString() + '/' + now.Month.ToString() + '/' + now.Year.ToString();
                    list = list.ToList();
                    var model = new List<BaoCaoAdminModel>();
                    var soluong = db.NguyenLieux.ToList().Count();
                    foreach (var item in list)
                    {
                        var dao = new DoanhThuDao();
                        if (dao.ngay_hoadon(item.NgayBaoCao) == Convert.ToInt32(now.Day) &&
                           dao.thang_hoadon(item.NgayBaoCao) == Convert.ToInt32(now.Month) &&
                           dao.nam_hoadon(item.NgayBaoCao) == Convert.ToInt32(now.Year))
                        {
                            var itemmodel = new BaoCaoAdminModel();
                            itemmodel.Id = item.MaBaoCao;
                            itemmodel.TenChiNhanh = db.ChiNhanhs.FirstOrDefault(x => x.Id == item.MaChiNhanh).TenChiNhanh;
                            itemmodel.SoLuongBan = item.SoLuongBan.ToString();
                            itemmodel.DoanhThu = String.Format("{0:0,0}", item.DoanhThu);
                            var ghichucsdl = item.GhiChu;
                            string[] ghichu = ghichucsdl.Split(',');
                            string slton_nguyenlieu = "";
                            foreach (var ghichuitem in ghichu)
                            {
                                string[] ten_soluong_nl = ghichuitem.Split(':');
                                slton_nguyenlieu += ten_soluong_nl[1] + ',';
                            }
                            string[] slton_nl_lst = slton_nguyenlieu.Split(',');
                            itemmodel.NguyenLieu1 = slton_nl_lst[0];
                            itemmodel.NguyenLieu2 = slton_nl_lst[1];
                            itemmodel.NguyenLieu3 = slton_nl_lst[2];
                            itemmodel.NguyenLieu4 = slton_nl_lst[3];
                            itemmodel.NguyenLieu5 = slton_nl_lst[4];
                            itemmodel.NguyenLieu6 = slton_nl_lst[5];
                            itemmodel.NguyenLieu7 = slton_nl_lst[6];
                            itemmodel.NguyenLieu8 = slton_nl_lst[7];
                            itemmodel.NguyenLieu9 = slton_nl_lst[8];
                            itemmodel.NguyenLieu10 = slton_nl_lst[9];
                            itemmodel.NguyenLieu11 = slton_nl_lst[10];
                            itemmodel.NguyenLieu12 = slton_nl_lst[11];
                            itemmodel.NguyenLieu13 = slton_nl_lst[12];
                            itemmodel.NguyenLieu14 = slton_nl_lst[13];
                            itemmodel.NguyenLieu15 = slton_nl_lst[14];
                            if (soluong >= 16)
                            {
                                itemmodel.NguyenLieu16 = slton_nl_lst[15];
                            }
                            if (soluong >= 17)
                            {
                                itemmodel.NguyenLieu17 = slton_nl_lst[16];
                            }
                            if (soluong >= 18)
                            {
                                itemmodel.NguyenLieu18 = slton_nl_lst[17];
                            }
                            if (soluong >= 19)
                            {
                                itemmodel.NguyenLieu19 = slton_nl_lst[18];
                            }
                            if (soluong >= 20)
                            {
                                itemmodel.NguyenLieu20 = slton_nl_lst[19];
                            }
                            model.Add(itemmodel);
                        }
                    
                    }
                    return View(model);
                }
                else
                {
                    var ngay_split = ngay.Split('-');
                    var ngay_bc = ngay_split[2];
                    var thang_bc = ngay_split[1];
                    var nam_bc = ngay_split[0];

                    ViewBag.NgayBaoCao = ngay_bc.ToString() + '/' +thang_bc.ToString() + '/' + nam_bc.ToString();


                    var model = new List<BaoCaoAdminModel>();
                    var soluong = db.NguyenLieux.ToList().Count();
                    foreach (var item in list)
                    {
                        var dao = new DoanhThuDao();
                        if (dao.ngay_hoadon(item.NgayBaoCao) == Convert.ToInt32(ngay_bc) &&
                            dao.thang_hoadon(item.NgayBaoCao) == Convert.ToInt32(thang_bc) &&
                            dao.nam_hoadon(item.NgayBaoCao) == Convert.ToInt32(nam_bc))
                        {
                            var itemmodel = new BaoCaoAdminModel();
                            itemmodel.Id = item.MaBaoCao;
                            itemmodel.TenChiNhanh = db.ChiNhanhs.FirstOrDefault(x => x.Id == item.MaChiNhanh).TenChiNhanh;
                            itemmodel.SoLuongBan = item.SoLuongBan.ToString();
                            itemmodel.DoanhThu = String.Format("{0:0,0}", item.DoanhThu);
                            var ghichucsdl = item.GhiChu;
                            string[] ghichu = ghichucsdl.Split(',');
                            string slton_nguyenlieu = "";
                            foreach (var ghichuitem in ghichu)
                            {
                                string[] ten_soluong_nl = ghichuitem.Split(':');
                                slton_nguyenlieu += ten_soluong_nl[1] + ',';
                            }
                            string[] slton_nl_lst = slton_nguyenlieu.Split(',');
                            itemmodel.NguyenLieu1 = slton_nl_lst[0];
                            itemmodel.NguyenLieu2 = slton_nl_lst[1];
                            itemmodel.NguyenLieu3 = slton_nl_lst[2];
                            itemmodel.NguyenLieu4 = slton_nl_lst[3];
                            itemmodel.NguyenLieu5 = slton_nl_lst[4];
                            itemmodel.NguyenLieu6 = slton_nl_lst[5];
                            itemmodel.NguyenLieu7 = slton_nl_lst[6];
                            itemmodel.NguyenLieu8 = slton_nl_lst[7];
                            itemmodel.NguyenLieu9 = slton_nl_lst[8];
                            itemmodel.NguyenLieu10 = slton_nl_lst[9];
                            itemmodel.NguyenLieu11 = slton_nl_lst[10];
                            itemmodel.NguyenLieu12 = slton_nl_lst[11];
                            itemmodel.NguyenLieu13 = slton_nl_lst[12];
                            itemmodel.NguyenLieu14 = slton_nl_lst[13];
                            itemmodel.NguyenLieu15 = slton_nl_lst[14];
                            if (soluong >= 16)
                            {
                                itemmodel.NguyenLieu16 = slton_nl_lst[15];
                            }
                            if (soluong >= 17)
                            {
                                itemmodel.NguyenLieu17 = slton_nl_lst[16];
                            }
                            if (soluong >= 18)
                            {
                                itemmodel.NguyenLieu18 = slton_nl_lst[17];
                            }
                            if (soluong >= 19)
                            {
                                itemmodel.NguyenLieu19 = slton_nl_lst[18];
                            }
                            if (soluong >= 20)
                            {
                                itemmodel.NguyenLieu20 = slton_nl_lst[19];
                            }
                            model.Add(itemmodel);
                        }

                        

                    }
                    return View(model);

                }
                
                
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        
    }
}