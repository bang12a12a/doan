namespace DoAn.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BaoCaoChiNhanh")]
    public partial class BaoCaoChiNhanh
    {
        [Key]
        public int MaBaoCao { get; set; }

        public DateTime? NgayBaoCao { get; set; }

        public int? MaChiNhanh { get; set; }

        public int? SoLuongBan { get; set; }

        public int? DoanhThu { get; set; }

        public string GhiChu { get; set; }
    }
}
