USE [master]
GO
/****** Object:  Database [ChuoiTraSua]    Script Date: 5/13/2020 10:16:33 PM ******/
CREATE DATABASE [ChuoiTraSua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChuoiTraSua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ChuoiTraSua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChuoiTraSua_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ChuoiTraSua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ChuoiTraSua] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChuoiTraSua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChuoiTraSua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChuoiTraSua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChuoiTraSua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChuoiTraSua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChuoiTraSua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChuoiTraSua] SET  MULTI_USER 
GO
ALTER DATABASE [ChuoiTraSua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChuoiTraSua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChuoiTraSua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChuoiTraSua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChuoiTraSua] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChuoiTraSua] SET QUERY_STORE = OFF
GO
USE [ChuoiTraSua]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[DanhGia] [int] NULL,
	[MaKhachHang] [int] NULL,
	[MaSanPham] [int] NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChiNhanh] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHDB] [nvarchar](50) NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [int] NULL,
	[ThanhTien] [int] NULL,
	[ThuocSanPham] [int] NULL,
	[ChiTietThu] [int] NULL,
 CONSTRAINT [PK_ChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHDN] [nvarchar](50) NULL,
	[MaNguyenLieu] [int] NULL,
	[MaDonViTinh] [int] NULL,
	[GiaNhap] [int] NULL,
	[SoLuong] [int] NULL,
	[ChietKhau] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](max) NULL,
	[Luong] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDonViTinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[ThuocSanPham] [int] NULL,
	[SanPhamThu] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[Id] [nvarchar](50) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaKhach] [int] NULL,
	[NgayBan] [datetime] NULL,
	[GiamGia] [int] NULL,
	[TongTien] [int] NULL,
	[DaThanhToan] [int] NULL,
	[Duyet] [int] NULL,
	[MaChiNhanh] [int] NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[Id] [nvarchar](50) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[TongTien] [int] NULL,
	[ChietKhau] [int] NULL,
	[DaThanhToan] [int] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[SDT] [varchar](50) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id] [nvarchar](50) NOT NULL,
	[TenKhuyenMai] [nvarchar](max) NULL,
	[PhanTram] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaLoaiKhuyenMai] [int] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiKhuyenMai]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhuyenMai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiKhuyenMai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](max) NULL,
	[SanPhamChinh] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNguyenLieu] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu_DonVi]    Script Date: 5/13/2020 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu_DonVi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaNguyenLieu] [int] NULL,
	[MaDonViTinh] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [int] NULL,
 CONSTRAINT [PK_NguyenLieu_DonVi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/13/2020 10:16:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/13/2020 10:16:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[SDT] [char](15) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaChucVu] [int] NULL,
	[MaChiNhanh] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 5/13/2020 10:16:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGian] [datetime] NULL,
	[MaKhachHang] [int] NULL,
	[DaXem] [int] NULL,
 CONSTRAINT [PK_PhanHoi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/13/2020 10:16:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[MaLoaiSanPham] [int] NULL,
	[GiaBan] [int] NULL,
	[KhuyenMai] [int] NULL,
	[Anh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPChinh_Phu]    Script Date: 5/13/2020 10:16:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPChinh_Phu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SPChinh_Phu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SPChinh_Phu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (1, N'nội dung', 4, 1, 17, CAST(N'2020-04-22T15:01:10.630' AS DateTime))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (2, N'bình luận 1', 4, 1, 17, CAST(N'2020-04-22T15:07:33.490' AS DateTime))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (3, N'sản phẩm rất hoàn hảo', 2, 1, 17, CAST(N'2020-04-22T15:19:44.397' AS DateTime))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (4, N'sản phẩm rất ngon', 2, 1, 17, CAST(N'2020-04-22T15:20:00.317' AS DateTime))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (5, N'sản phẩm hoàn hảo', 5, 1, 16, CAST(N'2020-05-13T20:22:00.690' AS DateTime))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (6, N'bình luận 1', 3, 1, 16, CAST(N'2020-05-13T20:22:48.997' AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[ChiNhanh] ON 

INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (1, N'Chi Nhánh Cầu Giấy', N'Số 132, Cầu Giấy, Hà Nội', N'ghi chú chi nhánh 1')
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (2, N'Chi Nhánh Long Biên', N'Số 32, Long Biên, Hà Nội', NULL)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (4, N'Chi Nhánh Đống Đa', N'Số 234, Đống Đa, Hà Nội', NULL)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (5, N'Chi Nhánh Thanh Xuân', N'Số 221, Thanh Xuân,Hà Nội', NULL)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (6, N'Chi Nhánh Hà Đông', N'Số 1904, Hà Đông, Hà Nội', NULL)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (7, N'Chi Nhánh Đan Phượng', N'Số 214, Đan Phượng, Hà Nội', NULL)
SET IDENTITY_INSERT [dbo].[ChiNhanh] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHDB] ON 

INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1387, N'1122047', 16, 1, 0, 28800, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1388, N'1122047', 74, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1389, N'1122047', 65, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1390, N'1122047', 69, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1391, N'1122047', 49, 1, 0, 16000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1392, N'1122047', 51, 1, 0, 10000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1393, N'1122047', 19, 1, 0, 28800, 19, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1394, N'1122047', 75, 1, 0, 8000, 19, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1395, N'1122047', 68, 1, 0, 0, 19, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1396, N'1122047', 73, 1, 0, 0, 19, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1397, N'1122047', 56, 1, 0, 10000, 19, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1398, N'1122415', 38, 1, NULL, 32000, 38, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1399, N'1122415', 75, 1, NULL, 8000, 38, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1400, N'1122415', 68, 1, NULL, 0, 38, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1401, N'1122415', 69, 1, NULL, 0, 38, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1402, N'1122415', 49, 1, NULL, 16000, 38, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1403, N'1122415', 45, 1, NULL, 32000, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1404, N'1122415', 75, 1, NULL, 8000, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1405, N'1122415', 68, 1, NULL, 0, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1406, N'1122415', 73, 1, NULL, 0, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1407, N'1122415', 50, 1, NULL, 10000, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1408, N'11225330', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1409, N'11225330', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1410, N'11225330', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1411, N'11225330', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1412, N'11225330', 41, 1, NULL, 32000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1413, N'11225330', 75, 1, NULL, 8000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1414, N'11225330', 68, 1, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1415, N'11225330', 73, 1, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1416, N'11225520', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1417, N'11225520', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1418, N'11225520', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1419, N'11225520', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1420, N'11225520', 41, 1, NULL, 32000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1421, N'11225520', 75, 1, NULL, 8000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1422, N'11225520', 68, 1, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1423, N'11225520', 73, 1, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1424, N'1123049', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1425, N'1123049', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1426, N'1123049', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1427, N'1123049', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1428, N'1123246', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1429, N'1123246', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1430, N'1123246', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1431, N'1123246', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1432, N'1123429', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1433, N'1123429', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1434, N'1123429', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1435, N'1123429', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1436, N'1723557', 47, 1, NULL, 32000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1437, N'1723557', 75, 1, NULL, 8000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1438, N'1723557', 63, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1439, N'1723557', 69, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1440, N'1723557', 49, 1, NULL, 16000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1441, N'1723310', 15, 1, 0, 32000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1442, N'1723310', 75, 1, 0, 8000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1443, N'1723310', 63, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1444, N'1723310', 69, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1445, N'1723310', 49, 1, 0, 16000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1446, N'1723310', 7, 1, 0, 39000, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1447, N'1723310', 75, 1, 0, 8000, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1448, N'1723310', 67, 1, 0, 0, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1449, N'1723310', 69, 1, 0, 0, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1450, N'1723310', 49, 1, 0, 16000, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1451, N'17233252', 34, 1, 0, 32000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1452, N'17233252', 75, 1, 0, 8000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1453, N'17233252', 68, 1, 0, 0, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1454, N'17233252', 73, 1, 0, 0, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1455, N'17233914', 17, 1, 0, 32000, 17, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1456, N'17233914', 75, 1, 0, 8000, 17, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1457, N'17233914', 68, 1, 0, 0, 17, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1458, N'17233914', 73, 1, 0, 0, 17, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1459, N'17233914', 59, 1, 0, 10000, 17, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1460, N'17234029', 7, 1, 0, 39000, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1461, N'17234029', 75, 1, 0, 8000, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1462, N'17234029', 68, 1, 0, 0, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1463, N'17234029', 73, 1, 0, 0, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1464, N'17234736', 1, 1, 0, 40000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1465, N'17234736', 75, 1, 0, 8000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1466, N'17234736', 68, 1, 0, 0, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1467, N'17234736', 73, 1, 0, 0, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (1468, N'17234736', 55, 1, 0, 10000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2436, N'11317578', 20, 2, 0, 64000, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2437, N'11317578', 75, 2, 0, 16000, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2438, N'11317578', 63, 2, 0, 0, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2439, N'11317578', 69, 2, 0, 0, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2440, N'11317578', 50, 2, 0, 20000, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2441, N'11317578', 52, 2, 0, 20000, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2442, N'113202054', 1, 2, 0, 80000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2443, N'113202054', 75, 2, 0, 16000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2444, N'113202054', 68, 2, 0, 0, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2445, N'113202054', 73, 2, 0, 0, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2446, N'113202054', 49, 2, 0, 32000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2447, N'113202054', 51, 2, 0, 20000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2448, N'113202054', 2, 1, 0, 39000, 2, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2449, N'113202054', 75, 1, 0, 8000, 2, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2450, N'113202054', 68, 1, 0, 0, 2, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2451, N'113202054', 73, 1, 0, 0, 2, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2452, N'113202054', 62, 1, 0, 10000, 2, 2)
GO
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2453, N'113215124', 21, 2, 0, 64000, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2454, N'113215124', 75, 2, 0, 16000, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2455, N'113215124', 68, 2, 0, 0, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2456, N'113215124', 71, 2, 0, 0, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2457, N'113215124', 50, 2, 0, 20000, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2458, N'113215124', 20, 1, 0, 32000, 20, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2459, N'113215124', 75, 1, 0, 8000, 20, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2460, N'113215124', 68, 1, 0, 0, 20, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2461, N'113215124', 73, 1, 0, 0, 20, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2462, N'113215124', 1, 1, 0, 40000, 1, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2463, N'113215124', 75, 1, 0, 8000, 1, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2464, N'113215124', 68, 1, 0, 0, 1, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2465, N'113215124', 73, 1, 0, 0, 1, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2466, N'113215124', 53, 1, 0, 10000, 1, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2467, N'11322654', 20, 1, 0, 32000, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2468, N'11322654', 75, 1, 0, 8000, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2469, N'11322654', 68, 1, 0, 0, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2470, N'11322654', 73, 1, 0, 0, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2471, N'11322654', 49, 1, 0, 16000, 20, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2472, N'11322654', 16, 1, 0, 32000, 16, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2473, N'11322654', 75, 1, 0, 8000, 16, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2474, N'11322654', 63, 1, 0, 0, 16, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2475, N'11322654', 71, 1, 0, 0, 16, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2476, N'11322654', 49, 1, 0, 16000, 16, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2477, N'11322654', 17, 1, 0, 32000, 17, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2478, N'11322654', 75, 1, 0, 8000, 17, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2479, N'11322654', 68, 1, 0, 0, 17, 3)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2480, N'11322654', 73, 1, 0, 0, 17, 3)
SET IDENTITY_INSERT [dbo].[ChiTietHDB] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHDN] ON 

INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (37, N'304202019523', 1, 1, 10000, 10, 10000, 90000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (38, N'304202019523', 2, 2, 10000, 20, 10000, 190000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (39, N'3042020224055', 1, 2, 10000, 11, 10000, 100000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (40, N'3042020224055', 3, 2, 10000, 10, 10000, 90000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (41, N'75202016332', 2, 1, 10000, 10, 10000, 90000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (42, N'752020203545', 1, 2, 40000, 100, 400000, 3600000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (43, N'752020203545', 2, 2, 100000, 20, 100000, 1900000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (44, N'752020205415', 1, 1, 10000, 400, 100000, 3900000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (45, N'75202020560', 1, 1, 40000, 20, 200000, 600000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (46, N'752020211420', 1, 1, 40000, 400, 1000000, 15000000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (47, N'752020212234', 2, 2, 40000, 100, 300000, 3700000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (48, N'752020213438', 2, 2, 40000, 20, 50000, 750000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1041, N'1352020155626', 1, 3, 1000000, 10, 2000000, 8000000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1042, N'1352020155626', 2, 1, 100000, 20, 200000, 1800000)
SET IDENTITY_INSERT [dbo].[ChiTietHDN] OFF
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (1, N'Online', 0)
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (2, N'Thu ngân', 3000000)
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (3, N'Quản lý ', 10000000)
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (4, N'Pha Chế', 5000000)
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
SET IDENTITY_INSERT [dbo].[DonViTinh] ON 

INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (1, N'bao ')
INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (2, N'chiếc')
INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (3, N'kg1')
INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (5, N'thùng')
SET IDENTITY_INSERT [dbo].[DonViTinh] OFF
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'11215744', 1, 1, CAST(N'2020-01-01T21:57:44.070' AS DateTime), NULL, 231200, 1, 0, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1122047', 1, 1, CAST(N'2020-02-01T22:00:47.020' AS DateTime), NULL, 101600, 1, 0, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1122415', 1, 4, CAST(N'2020-03-01T22:41:05.493' AS DateTime), 0, 101600, 1, 0, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'11225330', 1, 4, CAST(N'2020-04-01T22:53:30.887' AS DateTime), 0, 101600, 1, 0, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'11225520', 1, 4, CAST(N'2020-05-01T22:55:20.310' AS DateTime), 0, 101600, 1, 0, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1123049', 1, 4, CAST(N'2020-06-01T23:00:49.493' AS DateTime), 0, 101600, 1, 0, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1123246', 1, 4, CAST(N'2020-07-01T23:02:46.617' AS DateTime), 0, 101600, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1123429', 1, 4, CAST(N'2020-08-01T23:04:29.167' AS DateTime), 0, 40000, 1, 0, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'11317578', 1, 1, CAST(N'2020-05-13T17:57:08.487' AS DateTime), NULL, 120000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'113202054', 1, 1, CAST(N'2020-05-13T20:20:54.633' AS DateTime), NULL, 205000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'113215124', 1, 1, CAST(N'2020-05-13T21:51:24.030' AS DateTime), NULL, 198000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'113215157', 1, 1, CAST(N'2020-05-13T21:51:57.300' AS DateTime), NULL, 198000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'11321528', 1, 1, CAST(N'2020-05-13T21:52:08.990' AS DateTime), NULL, 198000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'11322654', 1, 1, CAST(N'2020-05-13T22:06:54.557' AS DateTime), NULL, 152000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1723310', 1, 1, CAST(N'2020-05-07T23:31:00.740' AS DateTime), 2050, 119000, 0, 1, 6)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'17233252', 1, 1, CAST(N'2020-05-07T23:32:52.277' AS DateTime), NULL, 40000, 0, 1, 5)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'17233914', 1, 1, CAST(N'2020-05-07T23:39:14.257' AS DateTime), NULL, 50000, 1, 1, 5)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'17234029', 1, 1, CAST(N'2020-05-07T23:40:29.623' AS DateTime), NULL, 47000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'17234736', 1, 1, CAST(N'2020-05-07T23:47:36.300' AS DateTime), NULL, 58000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1723557', 1, 4, CAST(N'2020-05-07T23:05:57.690' AS DateTime), 0, 56000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1723558', 1, 2, CAST(N'2020-05-06T23:05:57.690' AS DateTime), 0, 54000, 1, 1, 1)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'1352020155626', 3, 1, CAST(N'2020-05-13T15:57:23.903' AS DateTime), 9800000, 0, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'304202019523', 3, 1, CAST(N'2020-04-30T19:05:49.630' AS DateTime), 280000, 10000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'3042020224055', 3, 2, CAST(N'2020-04-30T22:42:09.147' AS DateTime), 190000, 10000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'752020203545', 3, 1, CAST(N'2020-05-07T20:37:33.667' AS DateTime), 5500000, 1000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'752020211420', 3, 1, CAST(N'2020-05-07T21:14:39.700' AS DateTime), 15000000, 0, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'752020213438', 3, 2, CAST(N'2020-05-07T21:35:19.740' AS DateTime), 750000, 0, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email]) VALUES (1, N'Phạm Văn Bằng', N'0913961267', N'bang12a12a', N'E10ADC3949BA59ABBE56E057F20F883E', N'Hà Nội', N'bang12a12a@gmail.com')
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email]) VALUES (2, N'Trần Thiên Long', N'0123212522', N'long123', N'E10ADC3949BA59ABBE56E057F20F883E', N'hà nội', N'long12@gmail.com')
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email]) VALUES (3, N'admin', N'0386777373', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', N'hà nội', N'bang111a111@gmail.com')
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email]) VALUES (4, N'Khách lẻ', NULL, N'KhachLe', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [MaLoaiKhuyenMai], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (N'20QE4', N'Khuyến mãi theo hóa đơn từ ngày 1/4/2020 đến 7/4/2020', 10, N'4', 0, CAST(N'2020-05-01T00:00:00.000' AS DateTime), CAST(N'2020-05-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [MaLoaiKhuyenMai], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (N'IQB2I', N'Khuyến mãi theo nhóm sản phẩm từ ngày 1/4/2020 đến 7/1/2020', 10, N'1,3', 2, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[LoaiKhuyenMai] ON 

INSERT [dbo].[LoaiKhuyenMai] ([Id], [TenLoaiKhuyenMai]) VALUES (1, N'Khuyến mãi theo hóa đơn')
INSERT [dbo].[LoaiKhuyenMai] ([Id], [TenLoaiKhuyenMai]) VALUES (2, N'Khuyến mãi theo sản phẩm')
INSERT [dbo].[LoaiKhuyenMai] ([Id], [TenLoaiKhuyenMai]) VALUES (3, N'Tạo Voucher')
SET IDENTITY_INSERT [dbo].[LoaiKhuyenMai] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (1, N'Topping', 2)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (4, N'Trà nguyên chất', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (6, N'LATTE SERIES', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (8, N'Nước uống đặc biệt', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (9, N'Thức uống sáng tạo', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (10, N'Trà Sữa', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (11, N'Thức uống đá xay', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (12, N'Đá', 2)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (13, N'Đường', 2)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (14, N'Size', 2)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[NguyenLieu] ON 

INSERT [dbo].[NguyenLieu] ([Id], [TenNguyenLieu], [MoTa]) VALUES (1, N'nguyên liệu 1', NULL)
INSERT [dbo].[NguyenLieu] ([Id], [TenNguyenLieu], [MoTa]) VALUES (2, N'nguyên liệu 2', NULL)
INSERT [dbo].[NguyenLieu] ([Id], [TenNguyenLieu], [MoTa]) VALUES (3, N'nguyên liệu 3', NULL)
SET IDENTITY_INSERT [dbo].[NguyenLieu] OFF
SET IDENTITY_INSERT [dbo].[NguyenLieu_DonVi] ON 

INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (1, 1, 1, 890, 40000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (2, 1, 2, 120, 40000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (3, 3, 2, 20, 10000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (4, 3, 1, 10, 10000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (5, 2, 2, 160, 40000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (6, 2, 1, 30, 1000000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (1006, 1, 3, 10, 100000)
SET IDENTITY_INSERT [dbo].[NguyenLieu_DonVi] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Id], [TenNCC], [DiaChi], [DienThoai]) VALUES (1, N'Nhà cung cấp 1', NULL, NULL)
INSERT [dbo].[NhaCungCap] ([Id], [TenNCC], [DiaChi], [DienThoai]) VALUES (2, N'Nhà cung cấp 2', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (1, N'Đỗ Tiến Sĩ', N'0123456789     ', N'Tien123', N'E10ADC3949BA59ABBE56E057F20F883E', N'Hà Nội', 2, 1)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (2, N'nhân viên 1', N'               ', N'nhanvien1', NULL, NULL, 2, 2)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhanHoi] ON 

INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (1, N'Đồ uống quá ngon!!! 1', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (2, N'Giao hàng hơi chậm ', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (3, N'Trà sữa pha rất chuẩn', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (4, N'Sản phẩm rất ngon', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (5, N'Đồ uống rất ngon.', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (6, NULL, CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (7, NULL, CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (8, N'Chào mừng bạn đến với trà sữa Gong Cha, hãy cùng khám phá những khuyến mãi và ưu đãi của chúng tôi trong tháng này nhé.', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (9, N'phản hồi từ khách hàng', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (21, N'yuiyiyiyiyiyiy', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (22, N'con chó con', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 3, 0)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (23, N'utiomfmfmkfmf45365', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (24, N'phản hồi từ khách hàng', CAST(N'2020-05-13T21:33:50.733' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[PhanHoi] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (1, N'Trà Sữa Matcha Đậu Đỏ', 10, 40000, 40000, N'trasuamatchadaudo.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (2, N'Trà Sữa Xoài Trân Châu Đen', 10, 39000, 39000, N'trasuaxoaitranchauden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (3, N'Trà Sữa Okianawa', 10, 39000, 39000, N'trasuaOkinawa.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (4, N'Trà Sữa Oolong', 10, 39000, 39000, N'trasuaoolong.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (6, N'Trà Sữa Chocolate', 10, 39000, 39000, N'trasuachocolate.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (7, N'Trà Sữa Trân Châu Đen', 10, 39000, 39000, N'trasuatranchauden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (8, N'Trà Sữa Hokkaido', 10, 39000, 39000, N'trasuahokkaido.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (9, N'Trà Sữa Cà Phê', 10, 39000, 39000, N'trasuacaphe.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (10, N'Trà Sữa Sương Sáo', 10, 39000, 39000, N'trasuasuongsao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (11, N'Trà Sữa Trà Đen', 10, 39000, 39000, N'trasuatraden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (12, N'Trà Sữa Trà Xanh', 10, 39000, 39000, N'trasuatraxanh.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (13, N'Trà Sữa Khoai Môn', 10, 39000, 39000, N'trasuakhoaimon.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (14, N'Trà Sữa Earl Grey', 10, 39000, 39000, N'trasuaearlgrey.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (15, N'Sữa Tươi Okinawa', 6, 32000, 32000, N'suatuoiokinawa.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (16, N'Strawberry Earl Grey Latte', 6, 32000, 32000, N'strawberryearlgreylatte.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (17, N'Mango Matcha Latte', 6, 32000, 32000, N'mangomatchalatte.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (18, N'Okinawa Latte', 6, 32000, 32000, N'okinawalatte.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (19, N'Trà Bí Đao Estore', 8, 32000, 32000, N'trabidaoestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (20, N'Trà Oolong Estore ', 8, 32000, 32000, N'traoolongestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (21, N'Trà Alisan Estore ', 8, 32000, 32000, N'traalisanestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (22, N'Trà Earl Grey Estore ', 8, 32000, 32000, N'traearlgreyestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (23, N'Trà Đen Estore ', 8, 32000, 32000, N'tradenestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (24, N'Trà Xanh Estore ', 8, 32000, 32000, N'traxanhestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (25, N'Trà Bí Đao Alisan', 4, 32000, 32000, N'trabidaoalisan.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (26, N'Trà Bí Đao', 4, 32000, 32000, N'trabidao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (27, N'Trà Alisan', 4, 32000, 32000, N'traalisan.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (28, N'Trà Earl Grey', 4, 32000, 32000, N'traearlgrey.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (29, N'Trà Oolong', 4, 32000, 32000, N'traoolong.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (30, N'Trà Đen', 4, 32000, 32000, N'traden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (31, N'Trà Xanh', 4, 32000, 32000, N'traxanh.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (32, N'QQ Chanh Dây Trà Xanh', 9, 32000, 32000, N'qqchanhdaytraxanh.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (33, N'Chanh Ai-yu và Trân Châu Trắng', 9, 32000, 32000, N'chanhaiyuvatranchautrang.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (34, N'Đào Hồng Mận Hạt É', 9, 32000, 32000, N'daohongmanhate.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (35, N'Trà Oolong Vải', 9, 32000, 32000, N'traoolongvai.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (36, N'Trà Alisan Vải', 9, 32000, 32000, N'traalisanvai.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (37, N'Trà Alisan Xoài', 9, 32000, 32000, N'traalisanxoai.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (38, N'Trà Xanh Chanh Dây', 9, 32000, 32000, N'traxanhchanhday.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (39, N'Trà Alisan Chanh Dây', 9, 32000, 32000, N'traalisanchanhday.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (40, N'Trà Đen Đào', 9, 32000, 32000, N'tradendao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (41, N'Trà Xanh Đào', 9, 32000, 32000, N'traxanhdao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (42, N'Strawberry Oreo Smoothie', 11, 32000, 32000, N'Strawberry-Oreo-Smoothie.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (43, N'Chocolate Đá Xay', 11, 32000, 32000, N'chocolatedaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (44, N'Khoai Môn Đá Xay', 11, 32000, 32000, N'khoaimondaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (45, N'Matcha Đá Xay', 11, 32000, 32000, N'matchadaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (46, N'Yakult Đào Đá Xay', 11, 32000, 32000, N'Yakultdaodaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (47, N'Xoài Đá Xay', 11, 32000, 32000, N'xoaidaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (49, N'Kem Sữa', 1, 16000, 16000, N'kemsua.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (50, N'Nha Đam', 1, 10000, 10000, N'nhadam.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (51, N'Hạt É', 1, 10000, 10000, N'hate.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (52, N'Trân Châu Đen', 1, 10000, 10000, N'tranchauden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (53, N'Trân Châu Trắng', 1, 10000, 10000, N'tranchautrang.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (54, N'Đậu Đỏ', 1, 10000, 10000, N'daudo.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (55, N'Sương Sáo', 1, 10000, 10000, N'suongsao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (56, N'Thạch Nâu', 1, 10000, 10000, N'thachnau.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (57, N'Thạch Trái Cây', 1, 10000, 10000, N'thachtraicay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (58, N'Thạch Ai-yu', 1, 10000, 10000, N'thachaiyu.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (59, N'Thạch Dừa', 1, 10000, 10000, N'thachdua.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (60, N'Pudding', 1, 10000, 10000, N'pudding.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (61, N'Combo 2 Loại Hạt', 1, 10000, 10000, N'combo2loaihat.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (62, N'Combo 3 Loại Hạt', 1, 10000, 10000, N'combo3loaihat.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (63, N'100% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (64, N'70% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (66, N'50% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (67, N'30% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (68, N'0% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (69, N'100% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (70, N'70% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (71, N'50% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (72, N'30% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (73, N'0% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (74, N'Size M', 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (75, N'Size L', 14, 8000, 8000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[SPChinh_Phu] ON 

INSERT [dbo].[SPChinh_Phu] ([Id], [SPChinh_Phu]) VALUES (1, N'Sản phẩm chính')
INSERT [dbo].[SPChinh_Phu] ([Id], [SPChinh_Phu]) VALUES (2, N'Sản phẩm phụ')
SET IDENTITY_INSERT [dbo].[SPChinh_Phu] OFF
USE [master]
GO
ALTER DATABASE [ChuoiTraSua] SET  READ_WRITE 
GO
