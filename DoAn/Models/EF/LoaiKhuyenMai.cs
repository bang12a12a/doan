namespace DoAn.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiKhuyenMai")]
    public partial class LoaiKhuyenMai
    {
        public int Id { get; set; }

        public string TenLoaiKhuyenMai { get; set; }
    }
}
