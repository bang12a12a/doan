﻿using DoAn.Models.Dao.NguoiDung;
using DoAn.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Controllers.NguoiDung
{
    public class DanhGiaController : Controller
    {
        // GET: DanhGia
        TraSuaEntities db = new TraSuaEntities();
        public ActionResult Insert(string sosao, string masanpham, string noidung)
        {
            var session = (DoAn.Common.Session.UserLogin)Session[DoAn.Common.Constants.USER_SESSION];
            if (session != null)
            {
                var vnoidung = noidung;
                var vdanhgiasao = int.Parse(sosao);
                var vmasanpham = masanpham;
                DateTime dtime = DateTime.Now;
                var binhluan = new BinhLuan();
                binhluan.NoiDung = noidung;
                binhluan.DanhGia = vdanhgiasao;
                binhluan.MaKhachHang = session.UserId;
                binhluan.MaSanPham = int.Parse(masanpham);
                binhluan.ThoiGian = dtime;
                new BinhLuanDao().Insert(binhluan);

            }
            return RedirectToAction("ChiTietSanPham", "SanPham", new { masanpham = int.Parse(masanpham) });
        }
    }
}