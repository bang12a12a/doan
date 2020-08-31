using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.Models.Model.QuanLy
{
    public class BaoCaoQuanLyModel
    {
        public int Id { set; get; }

        public int MaChiNhanh { set; get; }
        public DateTime? NgayBaoCao { set; get; }
        public int STT { set; get; }
        public int? TongSoLuong { set; get; }
        public int? DoanhThu { set; get; }
        public string GhiChu { set; get; }

        public string NgayBaoCaoShow { set; get; }
        public string TenChiNhanh { set; get; }

        public string DoanhThuShow { set; get; }

    }
}