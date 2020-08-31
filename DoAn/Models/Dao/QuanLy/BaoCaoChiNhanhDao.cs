using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DoAn.Models.Dao.Admin;
using DoAn.Models.EF;
using DoAn.Models.Model.QuanLy;
namespace DoAn.Models.Dao.QuanLy
{
    public class BaoCaoChiNhanhDao
    {
        TraSuaEntities db = null;
        public BaoCaoChiNhanhDao()
        {
            db = new TraSuaEntities();
        }

        public BaoCaoChiNhanh getByid(int? mabaocao)
        {
            return db.BaoCaoChiNhanhs.SingleOrDefault(x => x.MaBaoCao == mabaocao);
        }
        public BaoCaoChiNhanh FindSanPham(int? mabaocao)
        {
            return (db.BaoCaoChiNhanhs.Find(mabaocao));
        }
        public int AddBaoCaoChiNhanh(BaoCaoQuanLyModel bccn, int? machinhanh)
        {
            var baocaochinhanh = new BaoCaoChiNhanh();
            baocaochinhanh.MaChiNhanh = machinhanh;
            DateTime now = DateTime.Now;
            baocaochinhanh.NgayBaoCao =now;
            baocaochinhanh.SoLuongBan = this.layTongSoLuong(now,machinhanh);
            baocaochinhanh.DoanhThu = this.layDoanhThu(now, machinhanh);
            baocaochinhanh.GhiChu = bccn.GhiChu;
            db.BaoCaoChiNhanhs.Add(baocaochinhanh);
            db.SaveChanges();
            return baocaochinhanh.MaBaoCao;
        }
        public int DeleteBaoCaoChiNhanh(int mabaocao)
        {
            var baocaochinhanh = db.BaoCaoChiNhanhs.Find(mabaocao);
            db.BaoCaoChiNhanhs.Remove(baocaochinhanh);
            db.SaveChanges();
            return baocaochinhanh.MaBaoCao;
        }
        public int updateBaoCaoChiNhanh(BaoCaoQuanLyModel bccn)
        {
            var baocaochinhanh = db.BaoCaoChiNhanhs.Find(bccn.Id);
            baocaochinhanh.GhiChu = bccn.GhiChu;
            db.SaveChanges();
            return baocaochinhanh.MaBaoCao;
        }
        public int layTongSoLuong(DateTime now, int? machinhanh)
        {

            int tongsoluongban=0;
            var listhoadon = db.HoaDonBans.Where(x=> x.MaChiNhanh == machinhanh).ToList();
            foreach(var item in listhoadon)
            {
                var dao = new DoanhThuDao();
                if (dao.ngay_hoadon(item.NgayBan) == Convert.ToInt32(now.Day) &&
                    dao.thang_hoadon(item.NgayBan) == Convert.ToInt32(now.Month) &&
                    dao.nam_hoadon(item.NgayBan) == Convert.ToInt32(now.Year))
                {
                    var listcthoadon = db.ChiTietHDBs.Where(x => x.MaHDB == item.Id).ToList();
                    foreach (var itemsp in listcthoadon)
                    {
                        if (new CategoryDao().getSPChinh(itemsp.MaSanPham) == 1)
                        {
                            tongsoluongban += 1;
                        }
                    }
                }
               
                
            }
            return tongsoluongban;
        }
        public int? layDoanhThu(DateTime now, int? machinhanh)
        {

            int? tongdoanhthu=0;
            var listhoadon = db.HoaDonBans.Where(x => x.MaChiNhanh == machinhanh).ToList();
            foreach (var item in listhoadon)
            {
                var dao = new DoanhThuDao();
                if (dao.ngay_hoadon(item.NgayBan) == Convert.ToInt32(now.Day) &&
                    dao.thang_hoadon(item.NgayBan) == Convert.ToInt32(now.Month) &&
                    dao.nam_hoadon(item.NgayBan) == Convert.ToInt32(now.Year))
                {
                    tongdoanhthu += item.TongTien_HoaDon;
                }


            }
            return tongdoanhthu;
        }

    }
}