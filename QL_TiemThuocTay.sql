USE [QL_TiemThuocTay]
GO
/****** Object:  Table [dbo].[BangGia]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangGia](
	[MaThuoc] [char](10) NOT NULL,
	[MaDVT] [char](10) NOT NULL,
	[DonGiaBan] [float] NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC,
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHoaDonBanThuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBanThuoc](
	[MaHDBT] [char](10) NOT NULL,
	[MaThuoc] [char](10) NOT NULL,
	[MaDVT] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGiaBan] [float] NULL,
	[ThanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBT] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhapThuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhapThuoc](
	[MaPNT] [char](10) NOT NULL,
	[MaThuoc] [char](10) NOT NULL,
	[MaDVT] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [float] NULL,
	[ThanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPNT] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[MaDVT] [char](10) NOT NULL,
	[TenDVT] [nvarchar](50) NULL,
	[MoTa] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DuocSi]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DuocSi](
	[MaDS] [char](10) NOT NULL,
	[TenDS] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NgaySinh] [date] NULL,
	[DienThoai] [nchar](10) NULL,
	[Email] [nchar](50) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonBanThuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBanThuoc](
	[MaHDBT] [char](10) NOT NULL,
	[MaDS] [char](10) NOT NULL,
	[MaKH] [char](10) NOT NULL,
	[NgayLapHDBT] [date] NULL,
	[TongTienHDBT] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DienThoai] [nchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANHINH]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANHINH](
	[MAMH] [nvarchar](50) NOT NULL,
	[TENMH] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[TENDN] [nvarchar](100) NOT NULL,
	[MATKHAU] [nvarchar](50) NULL,
	[HOATDONG] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TENDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [char](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[MaSoThue] [nchar](20) NULL,
	[SoTaiKhoan] [nchar](20) NULL,
	[DienThoai] [char](10) NULL,
	[Email] [nchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHOMNGUOIDUNG]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHOMNGUOIDUNG](
	[MANHOM] [varchar](20) NOT NULL,
	[TENNHOM] [nvarchar](50) NULL,
	[GHICHU] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANHOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomThuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhomThuoc](
	[MaNhomThuoc] [char](10) NOT NULL,
	[TenNhomThuoc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MANHOM] [varchar](20) NOT NULL,
	[MAMH] [nvarchar](50) NOT NULL,
	[COQUYEN] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MANHOM] ASC,
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhapThuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhapThuoc](
	[MaPNT] [char](10) NOT NULL,
	[MaDS] [char](10) NOT NULL,
	[MaNCC] [char](10) NOT NULL,
	[NgayLapPNT] [date] NULL,
	[TongTienPNT] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPNT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG](
	[TENDN] [nvarchar](100) NOT NULL,
	[MANHOM] [varchar](20) NOT NULL,
	[GHICHU] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANHOM] ASC,
	[TENDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaThuoc] [char](10) NOT NULL,
	[TenThuoc] [nvarchar](100) NULL,
	[MaNhomThuoc] [char](10) NOT NULL,
	[MaTuThuoc] [char](10) NOT NULL,
	[QuiCachDongGoi] [nvarchar](100) NULL,
	[ThanhPhanThuoc] [nvarchar](1000) NULL,
	[NuocSanXuat] [nvarchar](100) NULL,
	[ChiDinh] [nvarchar](100) NULL,
	[LieuDung] [nvarchar](100) NULL,
	[ChongChiDinh] [nvarchar](100) NULL,
	[BaoQuan] [nvarchar](100) NULL,
	[HanSuDung] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TuThuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TuThuoc](
	[MaTuThuoc] [char](10) NOT NULL,
	[TenTuThuoc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTuThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[DVTTheoThuoc]    Script Date: 7/25/2021 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DVTTheoThuoc]
AS
SELECT dbo.BangGia.MaThuoc, dbo.BangGia.MaDVT, dbo.BangGia.SoLuong, dbo.BangGia.DonGiaBan, dbo.DonViTinh.TenDVT
FROM     dbo.BangGia INNER JOIN
                  dbo.DonViTinh ON dbo.BangGia.MaDVT = dbo.DonViTinh.MaDVT


GO
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T001', N'DVT01', 12400, 40)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T001', N'DVT02', 350000, 7)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T002', N'DVT01', 12500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T002', N'DVT02', 367000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T003', N'DVT02', 23000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T004', N'DVT02', 50000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T005', N'DVT02', 85000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T006', N'DVT01', 1900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T006', N'DVT02', 85000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T007', N'DVT01', 3300, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T007', N'DVT02', 97000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T008', N'DVT01', 5000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T008', N'DVT02', 148000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T009', N'DVT01', 9500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T009', N'DVT02', 565000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T010', N'DVT01', 18600, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T010', N'DVT02', 515000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T011', N'DVT02', 4000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T012', N'DVT02', 5000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T013', N'DVT02', 12000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T014', N'DVT02', 19000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T015', N'DVT01', 9500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T015', N'DVT02', 38000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T016', N'DVT01', 600, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T016', N'DVT02', 11000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T017', N'DVT01', 3300, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T017', N'DVT02', 97000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T018', N'DVT01', 3500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T018', N'DVT02', 35000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T019', N'DVT01', 4200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T019', N'DVT02', 416000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T020', N'DVT02', 50000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T020', N'DVT06', 5000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T021', N'DVT01', 500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T021', N'DVT02', 45000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T022', N'DVT01', 600, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T022', N'DVT03', 117000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T023', N'DVT01', 2000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T023', N'DVT02', 18000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T024', N'DVT01', 3500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T024', N'DVT02', 68000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T025', N'DVT01', 4600, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T025', N'DVT02', 90000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T026', N'DVT01', 1000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T026', N'DVT02', 50000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T027', N'DVT01', 1000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T027', N'DVT02', 50000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T028', N'DVT01', 1400, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T028', N'DVT02', 138000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T029', N'DVT06', 1500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T030', N'DVT01', 1900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T030', N'DVT02', 186000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T031', N'DVT01', 3400, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T031', N'DVT02', 99000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T032', N'DVT01', 6200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T032', N'DVT02', 184000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T033', N'DVT02', 9000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T034', N'DVT02', 20000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T035', N'DVT02', 23000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T036', N'DVT02', 35000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T037', N'DVT02', 36000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T038', N'DVT01', 500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T038', N'DVT03', 99000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T039', N'DVT01', 500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T039', N'DVT02', 55000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T040', N'DVT01', 700, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T040', N'DVT02', 80000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T041', N'DVT01', 900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T041', N'DVT02', 71000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T042', N'DVT01', 1300, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T042', N'DVT02', 225000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T043', N'DVT03', 20000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T044', N'DVT01', 400, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T044', N'DVT02', 12000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T045', N'DVT02', 19000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T045', N'DVT05', 10000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T046', N'DVT01', 3000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T046', N'DVT02', 237000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T047', N'DVT01', 700, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T047', N'DVT03', 693000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T048', N'DVT05', 12000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T049', N'DVT01', 1500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T049', N'DVT02', 72000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T050', N'DVT01', 2000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T050', N'DVT02', 90000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T051', N'DVT01', 2200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T051', N'DVT02', 108000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T052', N'DVT01', 2500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T052', N'DVT02', 75000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T053', N'DVT02', 120000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T053', N'DVT04', 4100, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T054', N'DVT02', 254000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T054', N'DVT06', 8700, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T055', N'DVT01', 1200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T055', N'DVT02', 24000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T056', N'DVT01', 1200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T056', N'DVT02', 32000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T057', N'DVT01', 2800, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T057', N'DVT03', 84000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T058', N'DVT02', 232000, 10)
GO
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T058', N'DVT06', 7900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T059', N'DVT01', 700, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T059', N'DVT02', 41000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T060', N'DVT01', 2200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T060', N'DVT02', 65000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T061', N'DVT01', 3000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T061', N'DVT02', 294000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T062', N'DVT01', 3300, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T062', N'DVT03', 163000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T063', N'DVT01', 3700, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T063', N'DVT02', 95000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T064', N'DVT01', 900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T064', N'DVT02', 222000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T065', N'DVT01', 5300, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T065', N'DVT02', 524000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T066', N'DVT01', 200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T066', N'DVT02', 20000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T067', N'DVT01', 3200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T067', N'DVT02', 90000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T068', N'DVT01', 2900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T068', N'DVT02', 87000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T069', N'DVT03', 2800, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T070', N'DVT03', 2900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T071', N'DVT03', 20000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T072', N'DVT04', 35000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T073', N'DVT03', 33000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T074', N'DVT01', 1000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T074', N'DVT02', 95000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T075', N'DVT02', 54000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T075', N'DVT06', 1800, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T076', N'DVT01', 2100, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T076', N'DVT02', 60000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T077', N'DVT02', 115000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T077', N'DVT06', 5500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T078', N'DVT03', 19000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T079', N'DVT03', 28000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T080', N'DVT01', 4700, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T080', N'DVT02', 55000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T081', N'DVT01', 1200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T081', N'DVT02', 72000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T082', N'DVT01', 2400, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T082', N'DVT02', 72000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T083', N'DVT01', 2900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T083', N'DVT02', 172000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T084', N'DVT01', 2800, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T084', N'DVT02', 277000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T085', N'DVT07', 9000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T086', N'DVT07', 13000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T087', N'DVT07', 13000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T088', N'DVT03', 6500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T089', N'DVT01', 9500, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T089', N'DVT02', 285000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T090', N'DVT01', 3600, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T090', N'DVT02', 36000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T091', N'DVT01', 7200, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T091', N'DVT02', 72000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T092', N'DVT01', 7900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T092', N'DVT02', 79000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T093', N'DVT01', 9900, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T093', N'DVT02', 98000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T094', N'DVT01', 10400, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T094', N'DVT02', 102000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T095', N'DVT03', 26000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T096', N'DVT03', 9000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T097', N'DVT02', 11000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T098', N'DVT03', 18000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T099', N'DVT03', 28000, 10)
INSERT [dbo].[BangGia] ([MaThuoc], [MaDVT], [DonGiaBan], [SoLuong]) VALUES (N'T100', N'DVT03', 19000, 10)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD001', N'T001', N'DVT02', 1, 350000, 350000)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD001', N'T099', N'DVT03', 1, 28000, 28000)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD001', N'T100', N'DVT03', 1, 19000, 19000)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD002', N'T059', N'DVT01', 12, 700, 8400)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD002', N'T063', N'DVT01', 6, 3700, 22200)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD003', N'T001', N'DVT01', 1, 12400, 12400)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD003', N'T051', N'DVT02', 1, 108000, 108000)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD004', N'T001', N'DVT02', 2, 350000, 700000)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD004', N'T089', N'DVT02', 1, 285000, 285000)
INSERT [dbo].[ChiTietHoaDonBanThuoc] ([MaHDBT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaBan], [ThanhTien]) VALUES (N'HD004', N't094', N'DVT01', 1, 10400, 10400)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN001', N'T001', N'DVT02', 10, 28000, 280000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN001', N'T036', N'DVT02', 10, 28000, 280000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN001', N'T040', N'DVT02', 10, 70000, 700000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN001', N'T043', N'DVT03', 5, 18000, 90000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN001', N'T051', N'DVT02', 10, 90000, 900000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN002', N'T036', N'DVT02', 10, 25000, 250000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN002', N'T040', N'DVT02', 10, 75000, 750000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN002', N'T091', N'DVT02', 10, 62000, 620000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN003', N'T064', N'DVT02', 2, 200000, 400000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN003', N'T093', N'DVT02', 5, 90000, 450000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN004', N'T085', N'DVT01', 4, 250000, 1000000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN004', N'T089', N'DVT02', 4, 250000, 1000000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN005', N'T001', N'DVT01', 1, 7000, 7000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN005', N'T047', N'DVT03', 2, 623000, 1246000)
INSERT [dbo].[ChiTietPhieuNhapThuoc] ([MaPNT], [MaThuoc], [MaDVT], [SoLuong], [DonGiaNhap], [ThanhTien]) VALUES (N'PN006', N'T001', N'DVT01', 10, 1000, 10000)
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDVT], [MoTa]) VALUES (N'DVT01', N'Viên', N'')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDVT], [MoTa]) VALUES (N'DVT02', N'Hộp', N'')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDVT], [MoTa]) VALUES (N'DVT03', N'Chai', N'')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDVT], [MoTa]) VALUES (N'DVT04', N'Ống', N'')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDVT], [MoTa]) VALUES (N'DVT05', N'Miếng', N'')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDVT], [MoTa]) VALUES (N'DVT06', N'Gói', N'')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDVT], [MoTa]) VALUES (N'DVT07', N'Tube', N'')
INSERT [dbo].[DuocSi] ([MaDS], [TenDS], [GioiTinh], [NgaySinh], [DienThoai], [Email], [QueQuan], [DiaChi]) VALUES (N'DS001', N'Phan Hoàng Nam', N'Nam', CAST(N'1999-04-12' AS Date), N'0912341231', N'namphan@gmail.com', N'Đắk Lắk', N'45 Lê Trọng Tấn, Quận Tân Phú')
INSERT [dbo].[DuocSi] ([MaDS], [TenDS], [GioiTinh], [NgaySinh], [DienThoai], [Email], [QueQuan], [DiaChi]) VALUES (N'DS002', N'Phạm Lê Minh Hưng', N'Nam', CAST(N'2000-09-06' AS Date), N'0769692312', N'hungpham@gmail.com', N'Thái Bình', N'123 Nguyễn Văn Tăng, Tp Thủ Đức')
INSERT [dbo].[HoaDonBanThuoc] ([MaHDBT], [MaDS], [MaKH], [NgayLapHDBT], [TongTienHDBT], [GhiChu]) VALUES (N'HD001', N'DS001', N'KH001', CAST(N'2021-04-30' AS Date), 397000, N'')
INSERT [dbo].[HoaDonBanThuoc] ([MaHDBT], [MaDS], [MaKH], [NgayLapHDBT], [TongTienHDBT], [GhiChu]) VALUES (N'HD002', N'DS001', N'KH002', CAST(N'2021-04-30' AS Date), 30600, N'')
INSERT [dbo].[HoaDonBanThuoc] ([MaHDBT], [MaDS], [MaKH], [NgayLapHDBT], [TongTienHDBT], [GhiChu]) VALUES (N'HD003', N'DS001', N'KH003', CAST(N'2021-05-03' AS Date), 1080000, N'')
INSERT [dbo].[HoaDonBanThuoc] ([MaHDBT], [MaDS], [MaKH], [NgayLapHDBT], [TongTienHDBT], [GhiChu]) VALUES (N'HD004', N'DS002', N'KH004', CAST(N'2021-05-12' AS Date), 995400, N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DienThoai], [DiaChi]) VALUES (N'KH001', N'Hoàng Nam', N'Nam', N'0914234234', N'123 Lê Trọng Tấn, Quận Tân Phú')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DienThoai], [DiaChi]) VALUES (N'KH002', N'Như Quỳnh', N'Nữ', N'0345764357', N'12 Hàm Nghi, Quận 1')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DienThoai], [DiaChi]) VALUES (N'KH003', N'Hiếu Ngân', N'Nữ', N'0908324234', N'15 Hồ Tùng Mậu, Quận 1')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DienThoai], [DiaChi]) VALUES (N'KH004', N'Minh Hưng', N'Nam', N'0769265234', N'133 Nguyễn Văn Tăng, Tp Thủ Đức')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DienThoai], [DiaChi]) VALUES (N'KH005', N'áđasa', N'Nam', N'0914234234', N'123 Lê Trọng Tấn, Quận Tân Phú')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH001', N'Hệ thống')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH002', N'Danh mục')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH003', N'Dịch vụ')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH004', N'Thống kê - báo cáo')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH005', N'About')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH006', N'Đăng ký')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH007', N'Đăng xuất')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH008', N'Phân quyền')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH009', N'Dược sĩ')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH010', N'Khách hàng')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH011', N'Nhà cung cấp')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH012', N'Tủ thuốc')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH013', N'Nhóm thuốc')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH014', N'Danh sách thuốc')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH015', N'Đơn vị tính')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH016', N'Bảng giá')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH017', N'Dự đoán bệnh tiểu đường')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH018', N'Bán thuốc')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH019', N'Nhập thuốc')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH020', N'Thống kê Hoá đơn bán thuốc')
INSERT [dbo].[MANHINH] ([MAMH], [TENMH]) VALUES (N'MH021', N'Thống kê Phiếu nhập thuốc')
INSERT [dbo].[NGUOIDUNG] ([TENDN], [MATKHAU], [HOATDONG]) VALUES (N'admin111', N'123', 1)
INSERT [dbo].[NGUOIDUNG] ([TENDN], [MATKHAU], [HOATDONG]) VALUES (N'user123', N'123', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [MaSoThue], [SoTaiKhoan], [DienThoai], [Email], [DiaChi]) VALUES (N'NCC001', N'Công ty TNHH Citigo', N'23942349643', N'18043447899', N'0843534361', N'citigo@company.com', N'Quận 7')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [MaSoThue], [SoTaiKhoan], [DienThoai], [Email], [DiaChi]) VALUES (N'NCC002', N'Công ty Hoàng Gia', N'2131972363', N'18045475675', N'0834654783', N'hoangia@company.com', N'Quận 7')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [MaSoThue], [SoTaiKhoan], [DienThoai], [Email], [DiaChi]) VALUES (N'NCC003', N'Công ty Pharmedic', N'0129108303', N'12537689794', N'0354743552', N'pharmedic@company.com', N'Quận 7')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [MaSoThue], [SoTaiKhoan], [DienThoai], [Email], [DiaChi]) VALUES (N'NCC004', N'Đại lý Hồng Phúc', N'2368635445', N'12537676876', N'0346575624', N'hongphuc@gmail.com', N'Quận 12')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [MaSoThue], [SoTaiKhoan], [DienThoai], [Email], [DiaChi]) VALUES (N'NCC005', N'Cửa hàng Đại Việt', N'2356677996', N'45457896775', N'0743546645', N'daiviet@gmail.com', N'Quận Tân Bình')
INSERT [dbo].[NHOMNGUOIDUNG] ([MANHOM], [TENNHOM], [GHICHU]) VALUES (N'admin', N'Quản lý', N'Bộ phận quản lý')
INSERT [dbo].[NHOMNGUOIDUNG] ([MANHOM], [TENNHOM], [GHICHU]) VALUES (N'DS', N'Dược sĩ', N'Người dùng Dược sĩ')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT01', N'Thuốc tuần hoàn máu não')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT02', N'Thuốc tiểu đường')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT03', N'Thuốc tẩy giun sán')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT04', N'Thuốc kháng sinh, kháng virus')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT05', N'Thuốc giảm đau, kháng viêm')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT06', N'Thuốc đường tiêu hoá')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT07', N'Thuốc trị ung thư, u bướu')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT08', N'Thuốc tránh thai')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT09', N'Thuốc giảm đau - hạ sốt')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT10', N'Thuốc chống say xe')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT11', N'Thuốc bổ, vitamin và khoáng chất')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT12', N'Thuốc trị gút - xương khớp')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT13', N'Thuốc tim mạch')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT14', N'Thuốc rối loạn tiền đình')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT15', N'Thuốc nhỏ mắt')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT16', N'Thuốc ho, long đờm')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT17', N'Thuốc giãn cơ')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT18', N'Thuốc da liễu')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT19', N'Thuốc chống dị ứng')
INSERT [dbo].[NhomThuoc] ([MaNhomThuoc], [TenNhomThuoc]) VALUES (N'NT20', N'Thuốc tai mũi họng')
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH001', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH002', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH003', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH004', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH005', 0)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH006', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH007', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH008', 0)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH009', 0)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH010', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH011', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH012', 0)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH013', 0)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH014', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH015', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH016', 0)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH017', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH018', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH019', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH020', 0)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMH], [COQUYEN]) VALUES (N'DS', N'MH021', 0)
INSERT [dbo].[PhieuNhapThuoc] ([MaPNT], [MaDS], [MaNCC], [NgayLapPNT], [TongTienPNT], [GhiChu]) VALUES (N'PN001', N'DS001', N'NCC001', CAST(N'2021-04-12' AS Date), 2250000, N'')
INSERT [dbo].[PhieuNhapThuoc] ([MaPNT], [MaDS], [MaNCC], [NgayLapPNT], [TongTienPNT], [GhiChu]) VALUES (N'PN002', N'DS001', N'NCC002', CAST(N'2021-04-12' AS Date), 1620000, N'')
INSERT [dbo].[PhieuNhapThuoc] ([MaPNT], [MaDS], [MaNCC], [NgayLapPNT], [TongTienPNT], [GhiChu]) VALUES (N'PN003', N'DS002', N'NCC003', CAST(N'2021-05-02' AS Date), 850000, N'')
INSERT [dbo].[PhieuNhapThuoc] ([MaPNT], [MaDS], [MaNCC], [NgayLapPNT], [TongTienPNT], [GhiChu]) VALUES (N'PN004', N'DS002', N'NCC004', CAST(N'2021-05-02' AS Date), 2000000, N'')
INSERT [dbo].[PhieuNhapThuoc] ([MaPNT], [MaDS], [MaNCC], [NgayLapPNT], [TongTienPNT], [GhiChu]) VALUES (N'PN005', N'DS001', N'NCC005', CAST(N'2021-05-12' AS Date), 1252900, N'')
INSERT [dbo].[PhieuNhapThuoc] ([MaPNT], [MaDS], [MaNCC], [NgayLapPNT], [TongTienPNT], [GhiChu]) VALUES (N'PN006', N'DS001', N'NCC001', CAST(N'2021-05-12' AS Date), 1262900, N'')
INSERT [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG] ([TENDN], [MANHOM], [GHICHU]) VALUES (N'admin111', N'admin', NULL)
INSERT [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG] ([TENDN], [MANHOM], [GHICHU]) VALUES (N'user123', N'DS', NULL)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T001', N'Thuốc Tebonin 120mg hộp 30 viên', N'NT01', N'TT01', N'Hộp 2 vỉ, mỗi vỉ 15 viên', N'Ginkgo Biloba Extract 120mg', N'Đức', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T002', N'Thuốc Coneulin 500mg hộp 30 viên', N'NT01', N'TT01', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Citicoline 500mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T003', N'Hoạt huyết dưỡng não Traphaco 20 viên bao đường', N'NT01', N'TT01', N'Hộp 1 vỉ 20 viên', N'Cao khô lá Bạch quả 5mg, Cao đặc rễ Đinh lăng 5:1 150mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T004', N'Thuốc tăng cường lưu thông khí huyết Bổ Khí Thông Huyết BVP 30 viên', N'NT01', N'TT01', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Xích thược 140mg, Địa long 160, Đào nhân 70mg, Hồng hoa 70mg, Xuyên khung 60mg, Bạch thược 140mg, Nhân sâm 50mg, Đương quy 140mg, Hoàng kỳ 760mg', N'Việt Nam', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T005', N'Hoạt huyết dưỡng não Ladophar 100 viên bao phim', N'NT01', N'TT01', N'Hộp 5 vỉ, mỗi vỉ 20 viên', N'Đinh lăng 150mg, Bạch quả 10mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T006', N'Thuốc trị tiểu đường Glucophage 500mg hộp 50 viên', N'NT02', N'TT01', N'Hộp 5 vỉ, mỗi vỉ 10 viên', N'Metformin 500mg', N'Pháp', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T007', N'Thuốc Clazic MR 60mg hộp 30 viên', N'NT02', N'TT01', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Gliclazide 60mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T008', N'Thuốc trị tiểu đường Glucovance 500mg/2.5mg hộp 30 viên', N'NT02', N'TT01', N'Hộp 02 vỉ, mỗi vỉ 15 viên', N'Glibenclamid 2.5mg, Metformin 500mg', N'Pháp', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T009', N'Thuốc trị tiểu đường Galvus Met 50mg/500mg hộp 60 viên', N'NT02', N'TT01', N'Hộp 6 vỉ x 10 viên nén', N'Vildagliptin 50mg, Metformin 500mg', N'Thuỵ Sỹ', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T010', N'Thuốc trị tiểu đường Januvia 100mg hộp 28 viên', N'NT02', N'TT01', N'Hộp 2 vỉ, mỗi vỉ 14 viên', N'Sitagliptin 100mg', N'Indonesia', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T011', N'Thuốc tẩy giun, sán Albendazol Stada 400mg hộp 1 viên', N'NT03', N'TT01', N'Hộp 1 vỉ, mỗi vỉ 1 viên', N'Albendazol 400mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T012', N'Thuốc Alzental 400mg hộp 1 viên', N'NT03', N'TT01', N'Hộp 1 vỉ chứa 1 viên', N'Albendazol 400mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T013', N'Thuốc tẩy giun, sán Zentel 200mg hộp 2 viên', N'NT03', N'TT01', N'Hộp 1 vỉ 2 viên', N'Albendazol 200mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T014', N'Thuốc tẩy giun Fugarcar 500mg vị chocolate hộp 1 viên', N'NT03', N'TT01', N'Hộp 1 viên', N'Mebendazol 500mg', N'Thái Lan', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T015', N'Thuốc trị sán Distocide 600mg hộp 4 viên', N'NT03', N'TT01', N'Hộp 1 vỉ 4 viên', N'Praziquantel 600mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T016', N'Thuốc kháng khuẩn, kháng nấm Metronidazole Stada 250mg hộp 20 viên', N'NT04', N'TT01', N'Hộp 2 vỉ, mỗi vỉ 10 viên', N'Metronidazole 250mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T017', N'Thuốc kháng sinh USAcefix 100mg hộp 30 viên', N'NT04', N'TT01', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Cefixime 100mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T018', N'Thuốc kháng sinh Cefixim 100mg hộp 10 gói', N'NT04', N'TT01', N'Hộp 10 gói, mỗi gói 1.5g', N'Cefixime 100mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T019', N'Thuốc kháng sinh Bicebid 200mg hộp 100 viên', N'NT04', N'TT01', N'Hộp 10 vỉ, mỗi vỉ 10 viên', N'Cefixime 200mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T020', N'Thuốc kháng sinh Cefdinir 125-HV hộp 10 gói', N'NT04', N'TT01', N'Hộp 10 gói, mỗi gói 2.5g', N'Cefdinir 125mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T021', N'Thuốc giảm đau, kháng viêm Meloxicam Brawn 7.5mg hộp 100 viên', N'NT05', N'TT02', N'Hộp 10 vỉ, mỗi vỉ 10 viên', N'Meloxicam 7.5mg', N'Ấn Độ', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T022', N'Thuốc kháng viêm Prednison Uphace 5mg chai 200 viên', N'NT05', N'TT02', N'Chai 200 viên', N'Prednison 5mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T023', N'Thuốc giảm đau, kháng viêm Difelene 50mg hộp 10 viên', N'NT05', N'TT02', N'Hộp 1 vỉ 10 viên', N'Diclofenac 50mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T024', N'Thuốc giảm đau, kháng viêm Savi Celecoxib 200mg hộp 20 viên', N'NT05', N'TT02', N'Hộp 2 vỉ, mỗi vỉ 10 viên', N'Celecoxib 200mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T025', N'Thuốc Japrolox 60mg hộp 20 viên', N'NT05', N'TT02', N'Hộp 2 vỉ, mỗi vỉ 10 viên nén', N'Loxoprofen 60mg', N'Nhật Bản', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T026', N'Thuốc trị đầy hơi, khó tiêu Espumisan 40mg 50 viên', N'NT06', N'TT02', N'Hộp 2 vỉ, mỗi vỉ 25 viên', N'Simethicone 40mg', N'Đức', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T027', N'Thuốc chống co thắt cơ trơn No-Spa 40mg 50 viên', N'NT06', N'TT02', N'Hộp 5 vỉ, mỗi vỉ 10 viên', N'Drotaverin hydrochlorid 40mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T028', N'Thuốc chống co thắt Buscopan 10mg 100 viên', N'NT06', N'TT02', N'Hộp 5 vỉ, mỗi vỉ 20 viên', N'Hyoscin butylbromid 10.0mg', N'Pháp', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T029', N'Gói bột bù nước và điện giải Oresol', N'NT06', N'TT02', N'Hộp 10 gói x 27, 9g', N'Natri citrat 3.5g, Glucose 20g, Kali clorid 1.5g, Natri clorid 2.9g', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T030', N'Thuốc trị loét dạ dày, tá tràng Omeprazol 20-HV 100 viên', N'NT06', N'TT02', N'Hộp 10 vỉ, mỗi vỉ 10 viên', N'Omeprazole 20mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T031', N'Thuốc Nolvadex 10mg hộp 30 viên', N'NT07', N'TT02', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Tamoxifen 10mg', N'Anh', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T032', N'Thuốc trị ung thư vú Nolvadex-D 20mg 30 viên', N'NT07', N'TT02', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Tamoxifen 20mg', N'Anh', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T033', N'Thuốc tránh thai khẩn cấp Mifestad 10 hộp 1 viên', N'NT08', N'TT02', N'Hộp 1 viên', N'Mifepristone 10mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T034', N'Thuốc tránh thai hằng ngày Anna hộp 28 viên', N'NT08', N'TT02', N'Hộp chứa 1 vỉ 28 viên', N'Ethinyl estradiol 0.03mg, Levonorgestrel 0.15mg', N'Thái Nakorn Patana', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T035', N'Thuốc tránh thai khẩn cấp Ase Victoria hộp 1 viên', N'NT08', N'TT02', N'Hộp 1 viên', N'Levonorgestrel 1.5mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T036', N'Thuốc Newz Avalo 0,03mg hộp 28 viên', N'NT08', N'TT02', N'Hộp 1 vỉ gồm 28 viên', N'Levonorgestrel 0.03mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T037', N'Thuốc tránh thai khẩn cấp Cerciorat hộp 1 viên', N'NT08', N'TT02', N'Hộp 1 vỉ 1 viên nén', N'Levonorgestrel 1.5mg', N'Tây Ban Nha', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T038', N'Thuốc giảm đau, hạ sốt Glotadol 325mg chai 200 viên', N'NT09', N'TT03', N'Hộp 1 chai 200 viên', N'Paracetamol 325mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T039', N'Thuốc giảm đau, hạ sốt Paralmax 500mg', N'NT09', N'TT03', N'Hộp 10 vỉ, mỗi vỉ 12 viên', N'Paracetamol 500mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T040', N'Thuốc giảm đau, kháng viêm Paralmax Pain', N'NT09', N'TT03', N'Hộp 10 vỉ, mỗi vỉ 12 viên', N'Ibuprofen 200mg, Paracetamol 325mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T041', N'Thuốc giảm đau, hạ sốt cho trẻ em Panadol 120mg hộp 96 viên - Trẻ em', N'NT09', N'TT03', N'Hộp 8 vỉ, mỗi vỉ 12 viên', N'Paracetamol 120mg', N'Malaysia', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T042', N'Thuốc giảm đau, hạ sốt Panadol Extra hộp 180 viên', N'NT09', N'TT03', N'Hộp 15 vỉ, mỗi vỉ 12 viên', N'Cafein 65mg, Paracetamol 500mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T043', N'Siro trị cảm cúm cho trẻ em Ameflu Day Time chai 60ml', N'NT09', N'TT03', N'Chai 60ml', N'Dextromethorphan 5mg, Paracetamol 160mg, Phenylephrin 2.5mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T044', N'Thuốc Devomir 25mg hộp 30 viên', N'NT10', N'TT03', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Cinnarizin 25mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T045', N'Miếng dán chống say xe Ariel TDDS 2 miếng', N'NT10', N'TT03', N'Hộp 2 miếng', N'Scopolamin 1.5mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T046', N'Thuốc chống say xe Nautamine 90mg 80 viên', N'NT10', N'TT03', N'Hộp 20 vỉ, mỗi vỉ 4 viên', N'Diphenhydramine 90mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T047', N'Thuốc chống say xe Apo Dimenhydrinate 50mg 1000 viên', N'NT10', N'TT03', N'Chai 1000 viên', N'Dimenhydrinate 50mg', N'Canada', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T048', N'Miếng dán chống say xe Bandson Plus 2 miếng', N'NT10', N'TT03', N'Hộp 2 miếng', N'Cà Độc Dược, Tinh dầu bạc hà, Tinh dầu gừng, Tinh dầu quýt', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T049', N'Thuốc bổ máu Ferrovit 50 viên', N'NT11', N'TT03', N'Hộp 5, mỗi vỉ 10 viên', N'Vitamin B12 7.5mcg, Sắt fumarat 162mg, Vitamin B9 0.75mg', N'Thái Lan', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T050', N'Thuốc Magne B6 Corbiere hộp 50 viên', N'NT11', N'TT03', N'Hộp 5, mỗi vỉ 10 viên', N'Magiê 470mg, Vitamin B6 5mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T051', N'Thuốc bổ sung vitamin B1, B6, B12 Neurobion 50 viên', N'NT11', N'TT03', N'Hộp 5, mỗi vỉ 10 viên', N'Vitamin B1 100mg, Vitamin B12 200mcg, Vitamin B6 200mg', N'Indonesia', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T052', N'Thuốc bổ sung canxi Ossopan 600mg 30 viên', N'NT11', N'TT03', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Chiết xuất xương toàn phần 600mg', N'Pháp', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T053', N'Thuốc bổ sung canxi cho bé Calcium Corbiere 5ml 30 ống', N'NT11', N'TT03', N'Hộp 3 vỉ, mỗi vỉ 10 ống, mỗi ống 5ml', N'Calci glucoheptonat 0.550g, Vitamin C 0.050g, Vitamin PP 0.025g', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T054', N'Thuốc trị thoái hóa khớp Flexsa 1500 hộp 30 gói', N'NT12', N'TT03', N'Hộp 30 gói', N'Glucosamin 1500mg', N'Úc', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T055', N'Thuốc trị gút Allopurinol 300mg hộp 20 viên', N'NT12', N'TT03', N'Hộp 2 vỉ, mỗi vỉ 10 viên', N'Allopurinol 300mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T056', N'Thuốc Caldihasan hộp 30 viên', N'NT12', N'TT03', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Calci carbonat 1250mg, Vitamin D3 1.25mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T057', N'Thuốc trị gút Milurit 300mg chai 30 viên', N'NT12', N'TT03', N'Chai 30 viên', N'Allopurinol 300mg', N'Hungary', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T058', N'Thuốc AtiGluco 1500mg hộp 30 gói', N'NT12', N'TT03', N'Hộp 30 gói', N'Glucosamin 1500mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T059', N'Thuốc trị đau thắt ngực Medirel 20mg hộp 60 viên', N'NT13', N'TT04', N'Hộp 6 vỉ, mỗi vỉ 10 viên', N'Trimetazidin 20mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T060', N'Thuốc Loraar 50mg hộp 30 viên', N'NT13', N'TT04', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Losartan 50mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T061', N'Thuốc trị cao huyết áp, đau thắt ngực Propranolol TV Pharm 40mg hộp 100 viên', N'NT13', N'TT04', N'Hộp 10 vỉ, mỗi vỉ 10 viên', N'Propranolol 40mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T062', N'Thuốc bổ sung kali Kaldyum 600mg hộp 50 viên', N'NT13', N'TT04', N'Chai 50 viên', N'Kali clorid 600mg', N'Hungary', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T063', N'Thuốc trị suy tim Concor Cor 2.5mg hộp 30 viên', N'NT13', N'TT04', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Bisoprolol 2.5mg', N'Đức', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T064', N'Thuốc trị rối loạn tiền đình Stugeron 25mg hộp 250 viên', N'NT14', N'TT04', N'Hộp 25 vỉ, mỗi vỉ 10 viên', N'Cinnarizin 25mg', N'Thái Lan', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T065', N'Thuốc trị đau nửa đầu Sibelium 5mg hộp 100 viên nén', N'NT14', N'TT04', N'Hộp 5 vỉ, mỗi vỉ 20 viên', N'Flunarizin 5mg', N'Ý', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T066', N'Thuốc trị rối loạn tiền đình Cinnarizin Vidipha 25mg hộp 100 viên', N'NT14', N'TT04', N'Hộp 10 vỉ, mỗi vỉ 10 viên', N'Cinnarizin 25mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T067', N'Thuốc Piracetam Egis 800mg hộp 30 viên', N'NT14', N'TT04', N'Hộp 30 viên', N'Piracetam 800mg', N'Hungary', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T068', N'Thuốc Cetampir Plus 400mg/25mg hộp 30 viên', N'NT14', N'TT04', N'Hộp 3 vỉ, mỗi vỉ chứa 10 viên', N'Cinnarizin 25mg, Piracetam 400mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T069', N'Nước muối nhỏ mắt, mũi Efticol 0.9% chai 10ml', N'NT15', N'TT04', N'Chai 10ml', N'Natri clorid 0.09g', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T070', N'Nước muối nhỏ mắt Natri clorid 0.9% Pharmedic chai 10ml', N'NT15', N'TT04', N'Chai 10ml', N'Natri clorid 90mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T071', N'Thuốc nhỏ mắt Eskar chai 15ml', N'NT15', N'TT04', N'Chai 15ml', N'Natri clorid 0.042g', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T072', N'Thuốc nhỏ mắt Hylaform 0.1% ống 5ml', N'NT15', N'TT04', N'Ống 5ml', N'Natri hyaluronate 0.1%', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T073', N'Thuốc nhỏ mắt Flumetholon 0.1% chai 5ml', N'NT15', N'TT04', N'Chai 5ml', N'Fluorometholone 1mg/1ml', N'Nhật Bản', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T074', N'Thuốc trị ho, long đờm Iyafin hộp 100 viên', N'NT16', N'TT04', N'Hộp 25 vỉ, mỗi vỉ 4 viên', N'Clorpheniramin 2mg, Dextromethorphan 15mg, Glyceryl guaiacolat 100mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T075', N'Thuốc lòng đờm Acemuc 100mg hộp 30 gói', N'NT16', N'TT04', N'Hộp 30 gói', N'Acetylcysteine 100mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T076', N'Thuốc long đờm Bosolvon 8mg hộp 30 viên', N'NT16', N'TT04', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Bromhexin 8mg', N'Indonesia', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T077', N'Siro ho cho bé Prospan gói 5ml hộp 21 gói', N'NT16', N'TT04', N'Hộp 21 gói, mỗi gói 5ml', N'Thường xuân 35mg', N'Đức', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T078', N'Siro ho Atussin chai 30ml', N'NT16', N'TT04', N'Chai 30mL', N'Natri citrat 133mg, Chlorpheniramine 1.33mg, Dextromethorphan 5mg, Ammonium', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T079', N'Siro long đờm Babycanyl chai 60ml', N'NT16', N'TT04', N'Chai 60ml', N'Terbutalin 1.5mg/5ml, Guaiphenesin 66.5mg/5ml', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T080', N'Thuốc giãn cơ Coltramyl 4mg hộp 12 viên', N'NT17', N'TT05', N'Hộp 1 vỉ, mỗi vỉ 12 viên', N'Thiocolchicosid 4mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T081', N'Thuốc giãn cơ Ryzonal hộp 60 viên', N'NT17', N'TT05', N'Hộp 6 vỉ, mỗi vỉ 10 viên', N'Eperison 50mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T082', N'Thuốc giãn cơ Mydocalm 50mg hộp 30 viên', N'NT17', N'TT05', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Tolperison 50mg', N'Hungary', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T083', N'Thuốc giãn cơ Bamifen hộp 60 viên', N'NT17', N'TT05', N'Hộp 6 vỉ, mỗi vỉ 10 viên', N'Baclofen 10mg', N'Cộng hòa Síp', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T084', N'Thuốc giãn cơ Pharmaclofen 10mg chai 100 viên', N'NT17', N'TT05', N'Hộp 100 viên', N'Baclofen 10mg', N'Canada', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T085', N'Kem bôi trị viêm da, nấm Stadgentri tuýp 10g', N'NT18', N'TT05', N'Tuýp 10 gam', N'Gentamicin 10mg, Betamethason dipropionat 6.4mg, Clotrimazol 100mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T086', N'Kem bôi trị nấm, viêm da Silkeron 10g', N'NT18', N'TT05', N'Tuýp 10g', N'Gentamicin 10mg, Betamethason dipropionat 6.4mg, Clotrimazol 100mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T087', N'Kem bôi trị ngứa da Phenergan 10g', N'NT18', N'TT05', N'Tuýp 10g', N'Promethazin 0.2g', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T088', N'Dầu mù u Plus 12ml', N'NT18', N'TT05', N'Hộp 1 chai 12ml', N'Mù u, Vitamin E', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T089', N'Thuốc trị mụn trứng cá nặng Acnotin 10mg 30 viên', N'NT18', N'TT05', N'Hộp 3 vỉ, mỗi vỉ 10 viên', N'Isotretinoin 10mg', N'Thái Lan', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T090', N'Thuốc chống dị ứng Telfast BD 60mg 10 viên', N'NT19', N'TT05', N'Hộp 1 vỉ, mỗi vỉ 10 viên', N'Fexofenadin 60mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T091', N'Thuốc chống dị ứng Clarityne 10mg 10 viên', N'NT19', N'TT05', N'Hộp 1 vỉ, mỗi vỉ 10 viên', N'Loratadine 10mg', N'Indonesia', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T092', N'Thuốc chống dị ứng Zyrtec 10mg 10 viên', N'NT19', N'TT05', N'Hộp 1 vỉ 10 viên', N'Cetirizin 10mg', N'Thụy Sỹ', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T093', N'NThuốc chống dị ứng Bilaxten 20mg 10 viênULL', N'NT19', N'TT05', N'Hộp 1 vỉ x10 viên', N'Bilastine 20mg', N'Ý', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T094', N'Thuốc chống dị ứng Aerius 5mg 10 viên', N'NT19', N'TT05', N'Hộp 1 vỉ, mỗi vỉ 10 viên', N'Desloratadin 5mg', N'Bỉ', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T095', N'Siro trị viêm mũi dị ứng, mày đay Rinofil chai 15ml', N'NT19', N'TT05', N'Chai 15ml', N'Desloratadin 2.5mg/5ml', N'Chile', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T096', N'Thuốc nhỏ tai trị nấm Cồn Boric 3% F.T chai 10ml', N'NT20', N'TT05', N'Chai 10ml', N'Acid boric 300mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T097', N'Viên ngậm sát trùng họng Tyrotab hộp 24 viên', N'NT20', N'TT05', N'Hộp 24 viên', N'Tetracain 0.1mg, Tyrothricin 1mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T098', N'Dung dịch vệ sinh mũi Nacofar chai 60ml', N'NT20', N'TT05', N'Hộp 1 chai 60ml.', N'Natri clorid 0.9%', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T099', N'Nước biển xịt mũi Seacool Bạc hà chai 70ml', N'NT20', N'TT05', N'Chai 70ml', N'Nước biển', N'Việt Nam', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [MaNhomThuoc], [MaTuThuoc], [QuiCachDongGoi], [ThanhPhanThuoc], [NuocSanXuat], [ChiDinh], [LieuDung], [ChongChiDinh], [BaoQuan], [HanSuDung], [GhiChu]) VALUES (N'T100', N'Thuốc xịt mũi trị viêm mũi, viêm xoang Otilin 0.1% chai 15ml', N'NT20', N'TT05', N'Hộp 1 chai 15ml', N'Xylometazolin 15mg', N'Việt Nam', N'', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[TuThuoc] ([MaTuThuoc], [TenTuThuoc]) VALUES (N'TT01', N'Tủ thuốc 1')
INSERT [dbo].[TuThuoc] ([MaTuThuoc], [TenTuThuoc]) VALUES (N'TT02', N'Tủ thuốc 2')
INSERT [dbo].[TuThuoc] ([MaTuThuoc], [TenTuThuoc]) VALUES (N'TT03', N'Tủ thuốc 3')
INSERT [dbo].[TuThuoc] ([MaTuThuoc], [TenTuThuoc]) VALUES (N'TT04', N'Tủ thuốc 4')
INSERT [dbo].[TuThuoc] ([MaTuThuoc], [TenTuThuoc]) VALUES (N'TT05', N'Tủ thuốc 5')
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK_BangGia_1] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK_BangGia_1]
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK_BangGia_2] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DonViTinh] ([MaDVT]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK_BangGia_2]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanThuoc_1] FOREIGN KEY([MaHDBT])
REFERENCES [dbo].[HoaDonBanThuoc] ([MaHDBT]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanThuoc] CHECK CONSTRAINT [FK_ChiTietHoaDonBanThuoc_1]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanThuoc_2] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanThuoc] CHECK CONSTRAINT [FK_ChiTietHoaDonBanThuoc_2]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanThuoc_3] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DonViTinh] ([MaDVT]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanThuoc] CHECK CONSTRAINT [FK_ChiTietHoaDonBanThuoc_3]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapThuoc_1] FOREIGN KEY([MaPNT])
REFERENCES [dbo].[PhieuNhapThuoc] ([MaPNT]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapThuoc] CHECK CONSTRAINT [FK_ChiTietPhieuNhapThuoc_1]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapThuoc_2] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapThuoc] CHECK CONSTRAINT [FK_ChiTietPhieuNhapThuoc_2]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapThuoc_3] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DonViTinh] ([MaDVT]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapThuoc] CHECK CONSTRAINT [FK_ChiTietPhieuNhapThuoc_3]
GO
ALTER TABLE [dbo].[HoaDonBanThuoc]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanThuoc_1] FOREIGN KEY([MaDS])
REFERENCES [dbo].[DuocSi] ([MaDS]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonBanThuoc] CHECK CONSTRAINT [FK_HoaDonBanThuoc_1]
GO
ALTER TABLE [dbo].[HoaDonBanThuoc]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanThuoc_2] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonBanThuoc] CHECK CONSTRAINT [FK_HoaDonBanThuoc_2]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN1] FOREIGN KEY([MANHOM])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MANHOM]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN1]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN2] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MANHINH] ([MAMH]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN2]
GO
ALTER TABLE [dbo].[PhieuNhapThuoc]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapThuoc_1] FOREIGN KEY([MaDS])
REFERENCES [dbo].[DuocSi] ([MaDS]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhapThuoc] CHECK CONSTRAINT [FK_PhieuNhapThuoc_1]
GO
ALTER TABLE [dbo].[PhieuNhapThuoc]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapThuoc_2] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhapThuoc] CHECK CONSTRAINT [FK_PhieuNhapThuoc_2]
GO
ALTER TABLE [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_QL_NGUOIDUNGNHOMNGUOIDUNG1] FOREIGN KEY([MANHOM])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MANHOM]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG] CHECK CONSTRAINT [FK_QL_NGUOIDUNGNHOMNGUOIDUNG1]
GO
ALTER TABLE [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_QL_NGUOIDUNGNHOMNGUOIDUNG2] FOREIGN KEY([TENDN])
REFERENCES [dbo].[NGUOIDUNG] ([TENDN]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QL_NGUOIDUNGNHOMNGUOIDUNG] CHECK CONSTRAINT [FK_QL_NGUOIDUNGNHOMNGUOIDUNG2]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_1] FOREIGN KEY([MaNhomThuoc])
REFERENCES [dbo].[NhomThuoc] ([MaNhomThuoc]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_1]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_2] FOREIGN KEY([MaTuThuoc])
REFERENCES [dbo].[TuThuoc] ([MaTuThuoc]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_2]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "BangGia"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DonViTinh"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 148
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DVTTheoThuoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DVTTheoThuoc'
GO
