USE [QLNS]
GO
/****** Object:  Table [dbo].[a]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a](
	[Khoi] [nchar](10) NOT NULL,
 CONSTRAINT [PK_a] PRIMARY KEY CLUSTERED 
(
	[Khoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KTVSKL]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KTVSKL](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
	[MucKT] [int] NULL,
	[MucKL] [int] NULL,
	[LyDo] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBangCongThuViec]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBangCongThuViec](
	[TenBoPhan] [nvarchar](10) NULL,
	[TenPhong] [nvarchar](50) NULL,
	[MaNVTV] [char](10) NOT NULL,
	[LuongTViec] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](10) NULL,
	[SoNgayCong] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[Luong] [float] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBangLuongCTy]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBangLuongCTy](
	[MaLuong] [char](10) NOT NULL,
	[LCB] [int] NULL,
	[PCChucVu] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[LCBMoi] [int] NULL,
	[NgaySua] [datetime] NULL,
	[LyDo] [nvarchar](50) NULL,
	[PCCVuMoi] [int] NULL,
	[NgaySuaPC] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblBangLuongCTy] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBoPhan]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBoPhan](
	[MaBoPhan] [char](10) NOT NULL,
	[TenBoPhan] [nchar](10) NULL,
	[NgayThanhLap] [datetime] NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_TblBoPhan] PRIMARY KEY CLUSTERED 
(
	[MaBoPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongKhoiDieuHanh]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongKhoiDieuHanh](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLuong] [char](10) NULL,
	[LCB] [int] NULL,
	[PCChucVu] [int] NULL,
	[PCapKhac] [int] NULL,
	[Thuong] [nvarchar](50) NULL,
	[KyLuat] [nvarchar](50) NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[Luong] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongKhoiVanChuyen]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongKhoiVanChuyen](
	[MaNV] [nvarchar](50) NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [int] NULL,
	[PCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SOGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongKhoiVanPHong]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongKhoiVanPHong](
	[MaNV] [nvarchar](50) NOT NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [char](4) NULL,
	[PhuCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHoSoThuViec]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHoSoThuViec](
	[MaPhong] [char](10) NOT NULL,
	[MaNVTV] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TDHocVan] [nvarchar](50) NULL,
	[HocHam] [nvarchar](50) NULL,
	[ViTriThuViec] [nvarchar](50) NULL,
	[NgayTV] [datetime] NULL,
	[ThangTV] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblNVThoiViec]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNVThoiViec](
	[HoTen] [nvarchar](50) NULL,
	[CMTND] [nvarchar](50) NOT NULL,
	[NgayThoiViec] [datetime] NULL,
	[LyDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblNVThoiViec] PRIMARY KEY CLUSTERED 
(
	[CMTND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPhongBan]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPhongBan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[NgayThanhLap] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblPhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSoBH]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSoBH](
	[MaNV] [nvarchar](50) NOT NULL,
	[MaLuong] [char](10) NOT NULL,
	[MaSoBH] [char](10) NOT NULL,
	[NgayCapSo] [datetime] NULL,
	[NoiCapSo] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTangLuong]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTangLuong](
	[MaNV] [nvarchar](50) NULL,
	[HoTen] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[MaLuongCu] [char](10) NULL,
	[MaLuongMoi] [char](10) NULL,
	[NgayTang] [datetime] NULL,
	[LyDo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTTCaNhan]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTTCaNhan](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[NguyenQuan] [nvarchar](50) NULL,
	[DCThuongChu] [nvarchar](100) NULL,
	[DCTamChu] [nvarchar](100) NULL,
	[SDT] [char](12) NULL,
	[DanToc] [nvarchar](30) NULL,
	[TonGiao] [nvarchar](20) NULL,
	[QuocTich] [nvarchar](20) NULL,
	[HocVan] [nvarchar](30) NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTTNVCoBan]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTTNVCoBan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLuong] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[TTHonNhan] [nvarchar](50) NULL,
	[CMTND] [nvarchar](50) NULL,
	[NoiCap] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[LoaiHD] [nvarchar](50) NULL,
	[ThoiGian] [nvarchar](10) NULL,
	[NgayKy] [date] NULL,
	[NgayHetHan] [date] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblTTNVCoBan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblThaiSan]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblThaiSan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[NgayVeSom] [datetime] NULL,
	[NgayNghiSinh] [datetime] NULL,
	[NgayLamTroLai] [datetime] NULL,
	[TroCapCTY] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbuser]    Script Date: 19/12/2022 11:54:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbuser](
	[Username] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NULL,
	[Quyen] [nchar](10) NULL,
	[Ten] [nvarchar](50) NULL,
	[Ngaysinh] [date] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[a] ([Khoi]) VALUES (N'DieuHanh  ')
INSERT [dbo].[a] ([Khoi]) VALUES (N'SanXuat   ')
INSERT [dbo].[a] ([Khoi]) VALUES (N'VanPhong  ')
GO
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNVTV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'Kế Toán', N'Kế Toán 2', N'001', 3000000, N'5', N'2022', 23, 3, 8, 2973832, N'')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNVTV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'Kỹ Thuật', N'Kỹ Thuật 2', N'003', 3000000, N'5', N'2022', 26, 0, 12, 3479984, N'')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNVTV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'Kế Toán', N'Kế Toán 2', N'008', 3000000, N'5', N'2022', 26, 0, 10, 3399984, N'')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNVTV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'Kỹ Thuật', N'Kỹ Thuật 1', N'009', 3000000, N'5', N'2022', 25, 1, 10, 3284600, N'')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNVTV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'Kỹ Thuật', N'Kỹ Thuật 2', N'010', 3000000, N'5', N'2022', 25, 1, 15, 3484600, N'')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNVTV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'Kế Hoạch', N'Kế Hoạch 1', N'0011', 3000000, N'5', N'2022', 24, 2, 10, 3169216, N'')
GO
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ML01', 3000000, 500000, CAST(N'2019-05-13T00:00:00.000' AS DateTime), 3000000, CAST(N'2019-05-13T00:00:00.000' AS DateTime), N'ht', 5000000, CAST(N'2019-05-13T00:00:00.000' AS DateTime), N'ht')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ML02', 4000000, 600000, CAST(N'2019-05-29T00:00:00.000' AS DateTime), 4000000, CAST(N'2019-05-29T00:00:00.000' AS DateTime), N'sửa', 600000, CAST(N'2019-05-29T00:00:00.000' AS DateTime), N'ht')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ML03', 5000000, 700000, CAST(N'2019-05-29T00:00:00.000' AS DateTime), 5000000, CAST(N'2019-05-29T00:00:00.000' AS DateTime), N'', 7000000, CAST(N'2019-05-29T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[TblBoPhan] ([MaBoPhan], [TenBoPhan], [NgayThanhLap], [GhiChu]) VALUES (N'MB01      ', N'Kế toán   ', CAST(N'2019-12-05T00:00:00.000' AS DateTime), N'      d   ')
INSERT [dbo].[TblBoPhan] ([MaBoPhan], [TenBoPhan], [NgayThanhLap], [GhiChu]) VALUES (N'MB02      ', N'Kỹ thuật  ', CAST(N'2019-05-12T00:00:00.000' AS DateTime), N'          ')
INSERT [dbo].[TblBoPhan] ([MaBoPhan], [TenBoPhan], [NgayThanhLap], [GhiChu]) VALUES (N'MB03      ', N'Kế hoạch  ', CAST(N'2019-05-12T00:00:00.000' AS DateTime), N'          ')
GO
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'001', N'Kế toán 1', N'Trần Minh Nhựt ', N'ML03', 5000000, 700000, 500000, N'200000', N'0', N'5', N'2019', 26, 0, 12, 5779996, N'admin')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'005', N'Kỹ thuật 1', N'Cao Thiên Phú', N'ML01', 3000000, 500000, 0, N'300000', N'0', N'5', N'2019', 24, 2, 15, 4169216, N'admin')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'007', N'Kỹ thuật 2', N'Phạm Nhựt Thắng', N'ML03', 5000000, 700000, 200000, N'0', N'200000', N'5', N'2019', 26, 0, 13, 6219982, N'admin')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'002', N'Kế toán 1', N'Nguyễn Văn Thịnh', N'ML02', 4000000, 600000, 300000, N'300000', N'200000', N'5', N'2019', 24, 2, 10, 5092304, N'')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'003', N'Kế toán 1', N'Lê Thị Trúc Mai', N'ML01', 4000000, 600000, 300000, N'300000', N'0', N'5', N'2019', 25, 1, 14, 5606150, N'')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'004', N'Kế toán 2', N'Tôn Đức Thắng', N'ML03', 5000000, 700000, 200000, N'200000', N'0', N'5', N'2019', 24, 2, 10, 6115368, N'')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'006', N'Kỹ thuật 2', N'Nguyễn Trãi', N'ML02', 4000000, 600000, 0, N'0', N'0', N'5', N'2019', 26, 0, 10, 4999996, N'')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'008', N'Kế hoạch 1', N'Phạm Thành Chung', N'ML01', 3000000, 500000, 200000, N'0', N'0', N'5', N'2019', 24, 2, 5, 3669216, N'')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'009', N'Kế hoạch 1', N'Phan Nguyễn', N'ML02', 4000000, 600000, 0, N'300000', N'0', N'5', N'2019', 26, 0, 10, 5299996, N'')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [TenPhong], [HoTen], [MaLuong], [LCB], [PCChucVu], [PCapKhac], [Thuong], [KyLuat], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [Luong], [GhiChu]) VALUES (N'010', N'Kế toán 2', N'Nguyễn Mỹ Hằng', N'ML02', 4000000, 600000, 0, N'300000', N'200000', N'5', N'2019', 23, 3, 4, 4398458, N'')
GO
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNVTV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'KT02', N'001', N'Lê Văn Đạt', CAST(N'1982-04-01T00:00:00.000' AS DateTime), N'Nam', N'Bắc Ninh', N'Đại học', N'Đại học', N'Nhân Viên', CAST(N'2008-05-03T00:00:00.000' AS DateTime), N'3', N'Thử việc')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNVTV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'KT01', N'0011', N'Nguyễn Lâm Trung', CAST(N'1982-04-01T00:00:00.000' AS DateTime), N'Nam', N'Bắc Ninh', N'Đại Học', N'Đại học', N'Nhân Viên', CAST(N'2008-05-03T00:00:00.000' AS DateTime), N'5', N'Thử việc')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNVTV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'KTH01', N'002', N'Nguyễn Thị Vân', CAST(N'1996-05-01T00:00:00.000' AS DateTime), N'Nữ', N'Bắc Ninh', N'Cao Đẳng', N'Cao Đẳng', N'Nhân Viên', CAST(N'2019-05-23T00:00:00.000' AS DateTime), N'8/2008', N'')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNVTV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'KTH02', N'003', N'Nguyễn Văn Hoàng', CAST(N'1989-04-06T00:00:00.000' AS DateTime), N'Nam', N'Bắc Ninh', N'Đại Học', N'Đại Học', N'Nhân viên', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'5/2019', N'')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNVTV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'KTH02', N'008', N'Nguyễn Thị Quyên', CAST(N'1991-07-02T00:00:00.000' AS DateTime), N'Nữ', N'Bắc Ninh', N'Cao Đẳng', N'Cao Đẳng', N'Nhân Viên', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'5/2019', N'gsfbfd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNVTV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'KTH01', N'009', N'Nguyễn Thị Thúy', CAST(N'1990-08-04T00:00:00.000' AS DateTime), N'Nữ', N'Bắc Giang', N'Đại Học', N'Đại Học', N'Tổ trưởng', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'5/2019', N'hjhgffd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNVTV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'KTH02', N'010', N'Lê Chí Cường', CAST(N'1993-05-06T00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'Đại Học', N'Đại Học', N'Nhân Viên', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'5/2019', N'hffgfd')
GO
INSERT [dbo].[TblNVThoiViec] ([HoTen], [CMTND], [NgayThoiViec], [LyDo]) VALUES (N'Nguyễn Sơn Khang', N'34246321', NULL, N'Vi phạm hợp đồng')
GO
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayThanhLap], [GhiChu]) VALUES (N'MB01', N'KT01', N'Kế toán 1', CAST(N'2019-05-28T00:00:00.000' AS DateTime), N'CT')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayThanhLap], [GhiChu]) VALUES (N'MB01', N'KT02', N'Kế toán 2', CAST(N'2019-05-13T00:00:00.000' AS DateTime), N'')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayThanhLap], [GhiChu]) VALUES (N'MB02', N'KTH01', N'Kỹ thuật 1', CAST(N'2019-05-28T00:00:00.000' AS DateTime), N'CT')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayThanhLap], [GhiChu]) VALUES (N'MB02', N'KTH02', N'Kỹ thuật 2', CAST(N'2019-05-28T00:00:00.000' AS DateTime), N'')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayThanhLap], [GhiChu]) VALUES (N'MB03', N'KH01', N'Kế hoạch 1', CAST(N'2019-05-28T00:00:00.000' AS DateTime), N'')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayThanhLap], [GhiChu]) VALUES (N'MB03', N'KH02', N'Kế hoạch 2', CAST(N'2019-05-28T00:00:00.000' AS DateTime), N'')
GO
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'001', N'ML03', N'bh1', CAST(N'2019-05-27T00:00:00.000' AS DateTime), N'TP HCM', N'TT')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'002', N'ML02', N'bh1234', CAST(N'2019-05-27T00:00:00.000' AS DateTime), N'Bắc Ninh', N'TT')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'003', N'ML02', N'b1383902  ', CAST(N'2019-05-27T00:00:00.000' AS DateTime), N'Bắc Ninh', N'YT')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'004', N'ML03', N'b712124   ', CAST(N'2019-05-27T00:00:00.000' AS DateTime), N'Bắc Giang', N'YT')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'005', N'ML01', N'b124632   ', CAST(N'2019-05-27T00:00:00.000' AS DateTime), N'TP HCM', N'YT')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'007', N'ML03', N'bh12342   ', CAST(N'2019-05-27T00:00:00.000' AS DateTime), N'TP HCM', N'YT')
GO
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [MaLuongCu], [MaLuongMoi], [NgayTang], [LyDo]) VALUES (N'001', N'Trần Minh Nhựt', N'Nam', N'Trưởng phòng', N'ML03', N'ML02', CAST(N'2022-05-29T00:00:00.000' AS DateTime), N'hoàn thành tốt')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [MaLuongCu], [MaLuongMoi], [NgayTang], [LyDo]) VALUES (N'002', N'Phạm Nhựt Thắng', N'Nam', N'Trưởng phòng', N'ML03', N'ML02', CAST(N'2022-05-29T00:00:00.000' AS DateTime), N'ht')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [MaLuongCu], [MaLuongMoi], [NgayTang], [LyDo]) VALUES (N'008', N'Nguyễn Văn Thịnh', N'Nam', N'Nhân Viên', N'ML01', N'ML02', CAST(N'2019-05-29T00:00:00.000' AS DateTime), N'ht')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [MaLuongCu], [MaLuongMoi], [NgayTang], [LyDo]) VALUES (N'016', N'Phan Nguyễn', N'Nam', N'Nhân Viên', N'ML02', N'ML02', CAST(N'2019-05-29T00:00:00.000' AS DateTime), N'ht')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [MaLuongCu], [MaLuongMoi], [NgayTang], [LyDo]) VALUES (N'017', N'Nguyễn Thị Mỹ Hằng', N'Nữ', N'Trưởng phòng', N'ML03', N'ML02', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [MaLuongCu], [MaLuongMoi], [NgayTang], [LyDo]) VALUES (N'018', N'Cao Thiên Phú', N'Nam', N'Trưởng phòng', N'ML01', N'ML01', CAST(N'2019-05-29T00:00:00.000' AS DateTime), N'hoàn thành tốt')
GO
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'001', N'Trần Minh Nhựt', N'TP HCM', N'Đồng Tháp', N'Cao Lãnh - Đồng Tháp', N'Linh Xuân - Thủ Đức', N'0937187003', N'Kinh', N'Không', N'Việt Nam', N'Đại Học', N'Trưởng Phòng')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'002', N'Nguyễn Văn Thịnh', N'Bắc Ninh', N'Bắc Ninh', N'Từ Sơn - Bắc Ninh', N'Từ Sơn - Bắc Ninh', N'0123456789  ', N'Kinh', N'Không', N'Việt Nam', N'Cao Đẳng', N'nv')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'003', N'Lê Thị Trúc Mai', N'Hà Nội', N'Hà Nội', N'Long Biên - Hà Nội', N'Từ Sơn - Bắc Ninh', N'0369874521  ', N'Kinh', N'Không', N'Việt Nam', N'Đại Học', N'nv')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'004', N'Tôn Đức Thắng', N'Băc Ninh', N'Bắc Ninh', N'Yên Phong - Bắc Ninh', N'Yên Phong - Bắc Ninh', N'0987654321  ', N'Kinh', N'Không', N'Việt Nam', N'Đại Học', N'')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'005', N'Cao Thiên Phú', N'Tây Ninh', N'Tây Ninh', N'Tân Phú - Tân Bình', N'Tân Phú - Tân Bình', N'0345768927  ', N'Kinh', N'Không', N'Việt Nam', N'Đại Học', N'')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'006', N'Nguyễn Trãi', N'Bắc Ninh', N'Bắc Ninh', N'Long Biên - Hà Nội', N'Từ Sơn - Bắc Ninh', N'0985716788  ', N'Kinh', N'không', N'Việt Nam', N'Cao Đẳng', N'')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'007', N'Phạm Nhựt Thắng', N'Bắc Giang', N'Bắc Giang', N'Từ Sơn - Bắc Ninh', N'Từ Sơn - Bắc Ninh', N'092456749   ', N'Kinh', N'không', N'Việt nam', N'Cao Đẳng', N'')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'008', N'Phạm Thành Chung', N'Bắc Ninh', N'Bắc Ninh', N'Yên Phong - Bắc Ninh', N'Yên Phong - Bắc Ninh', N'0368789899  ', N'Kinh', N' Không', N'Việt Nam', N'Đại Học', N'')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'009', N'Phan Nguyễn', N'Bắc Ninh', N'Bắc Ninh', N'Từ Sơn - Bắc Ninh', N'Từ Sơn - Bắc Ninh', N'0987678567  ', N'Kinh', N'Không', N'Việt Nam', N'Cao Đẳng', N'')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [HoTen], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [HocVan], [GhiChu]) VALUES (N'010', N'Nguyễn Mỹ Hằng', N'Đồng Tháp', N'Đồng Tháp', N'Cao Lãnh - Đồng Tháp', N'Linh Xuân - Thủ Đức', N'0345298674  ', N'Kinh', N'Không', N'Việt Nam', N'Cao Đẳng', N'')
GO
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB01', N'KT01', N'001', N'Trần Minh Nhựt', N'ML03', CAST(N'2002-11-12' AS Date), N'Nam', N'Chưa', N'12323589', N'Đồng Tháp', N'Trưởng Phòng', N'Kinh Tế', N'24 tháng', CAST(N'2018-10-18' AS Date), CAST(N'2025-10-18' AS Date), N'Admin')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB01', N'KT01', N'002', N'Nguyễn Văn Thịnh', N'ML03', CAST(N'1990-06-12' AS Date), N'Nam', N'chưa', N'14355678', N'Bắc Ninh', N'Trưởng phòng', N'kinh tế', N'36 tháng', CAST(N'2018-11-21' AS Date), CAST(N'2021-11-21' AS Date), N'nv')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB01', N'KT01', N'003', N'Lê Thị Trúc Mai', N'ML03', CAST(N'1990-10-12' AS Date), N'Nữ', N'chưa', N'14335678', N'Bắc Ninh', N'NV', N'kinh tế', N'36 tháng', CAST(N'2018-11-21' AS Date), CAST(N'2021-11-21' AS Date), N'')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB01', N'KT02', N'004', N'Tôn Đức Thắng', N'ML03', CAST(N'1988-10-10' AS Date), N'Nam', N'rồi', N'132352327', N'Hà Nội', N'Phó Phòng', N'kinh tế', N'36 tháng', CAST(N'2018-07-01' AS Date), CAST(N'2021-07-01' AS Date), N'phó phòng')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB02', N'KTH01', N'005', N'Cao Thiên Phú', N'ML01', CAST(N'1988-10-10' AS Date), N'Nam', N'rồi', N'133473327', N'Tây Ninh', N'Trưởng phòng', N'kinh tế', N'36 tháng', CAST(N'2018-07-01' AS Date), CAST(N'2025-07-01' AS Date), N'Admin')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB02', N'KTH02', N'006', N'Nguyễn Trãi', N'ML02', CAST(N'1989-03-03' AS Date), N'Nam', N'rồi', N'186574327', N'Bắc Ninh', N'Nhân Viên', N'kinh tế', N'24 tháng', CAST(N'2018-07-01' AS Date), CAST(N'2020-07-01' AS Date), N'nv')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB02', N'KTH02', N'007', N'Phạm Nhựt Thắng', N'ML03', CAST(N'1989-03-03' AS Date), N'Nam', N'chưa', N'134892053', N'Bắc Giang', N'Cán bộ', N'kinh tế', N'24 tháng', CAST(N'2018-07-01' AS Date), CAST(N'2025-07-01' AS Date), N'Cán bộ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB03', N'KH01', N'008', N'Phạm Thành Chung', N'ML01', CAST(N'1990-12-21' AS Date), N'Nam', N'chưa', N'129340243', N'Bắc Ninh', N'Nhân Viên', N'kinh tế', N'24 tháng', CAST(N'2018-07-01' AS Date), CAST(N'2020-07-01' AS Date), N'Nhân Viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB03', N'KH01', N'009', N'Phan Nguyễn', N'ML02', CAST(N'1991-02-23' AS Date), N'Nam', N'rồi', N'129340249', N'Bắc Ninh', N'Nhân Viên', N'kinh tế', N'36 tháng', CAST(N'2018-07-01' AS Date), CAST(N'2021-07-01' AS Date), N'')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [MaLuong], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NoiCap], [ChucVu], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [GhiChu]) VALUES (N'MB01', N'KT02', N'010', N'Nguyễn Mỹ Hằng', N'ML02', CAST(N'1991-09-14' AS Date), N'Nữ', N'rồi', N'13092423', N'Đồng Tháp', N'Trưởng phòng', N'kinh tế', N'36 tháng', CAST(N'2018-07-01' AS Date), CAST(N'2021-07-01' AS Date), N'Admin')
GO
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'MB01      ', N'KT02     ', N'010', N'Nguyễn Mỹ Hằng', CAST(N'1991-09-14T00:00:00.000' AS DateTime), CAST(N'2022-06-14T00:00:00.000' AS DateTime), CAST(N'2022-07-14T00:00:00.000' AS DateTime), CAST(N'2023-02-01T00:00:00.000' AS DateTime), 1000000, N'')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'MB01      ', N'KT01      ', N'003', N'Lê Thị Trúc Mai', CAST(N'1990-10-12T00:00:00.000' AS DateTime), CAST(N'2021-06-14T00:00:00.000' AS DateTime), CAST(N'2021-07-20T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime), 1000000, N'')
GO
INSERT [dbo].[tbuser] ([Username], [Pass], [Quyen], [Ten], [Ngaysinh]) VALUES (N'minhnhut', N'nhut123', N'Admin', N'nhut', CAST(N'2002-11-12' AS Date))
INSERT [dbo].[tbuser] ([Username], [Pass], [Quyen], [Ten], [Ngaysinh]) VALUES (N'nhutthang', N'thang123', N'Admin', N'thang', CAST(N'2002-06-15' AS Date))
INSERT [dbo].[tbuser] ([Username], [Pass], [Quyen], [Ten], [Ngaysinh]) VALUES (N'thienphu', N'phu123', N'Admin', N'phu', CAST(N'2001-06-15' AS Date))
INSERT [dbo].[tbuser] ([Username], [Pass], [Quyen], [Ten], [Ngaysinh]) VALUES (N'nhanvien', N'nv123', N'User', N'aaa', CAST(N'2019-06-15' AS Date))
INSERT [dbo].[tbuser] ([Username], [Pass], [Quyen], [Ten], [Ngaysinh]) VALUES (N'nhanvien037', N'nv037', N'User', N'abc', CAST(N'2019-06-15' AS Date))
GO
ALTER TABLE [dbo].[TblCongKhoiDieuHanh]  WITH CHECK ADD  CONSTRAINT [FK_TblCongKhoiDieuHanh_TblBangLuongCTy] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[TblBangLuongCTy] ([MaLuong])
GO
ALTER TABLE [dbo].[TblCongKhoiDieuHanh] CHECK CONSTRAINT [FK_TblCongKhoiDieuHanh_TblBangLuongCTy]
GO
ALTER TABLE [dbo].[TblCongKhoiDieuHanh]  WITH CHECK ADD  CONSTRAINT [FK_TblCongKhoiDieuHanh_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TblCongKhoiDieuHanh] CHECK CONSTRAINT [FK_TblCongKhoiDieuHanh_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblCongKhoiVanChuyen]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiVanChuyen_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiVanChuyen] CHECK CONSTRAINT [FK_TblCongKhoiVanChuyen_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblCongKhoiVanPHong]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiVanPHong_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiVanPHong] CHECK CONSTRAINT [FK_TblCongKhoiVanPHong_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblPhongBan]  WITH CHECK ADD  CONSTRAINT [FK_TblPhongBan_TblBoPhan] FOREIGN KEY([MaBoPhan])
REFERENCES [dbo].[TblBoPhan] ([MaBoPhan])
GO
ALTER TABLE [dbo].[TblPhongBan] CHECK CONSTRAINT [FK_TblPhongBan_TblBoPhan]
GO
ALTER TABLE [dbo].[TblSoBH]  WITH CHECK ADD  CONSTRAINT [FK_TblSoBH_TblBangLuongCTy] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[TblBangLuongCTy] ([MaLuong])
GO
ALTER TABLE [dbo].[TblSoBH] CHECK CONSTRAINT [FK_TblSoBH_TblBangLuongCTy]
GO
ALTER TABLE [dbo].[TblTangLuong]  WITH NOCHECK ADD  CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblTangLuong] CHECK CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblTangLuong]  WITH CHECK ADD  CONSTRAINT [tk_tl] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TblTangLuong] CHECK CONSTRAINT [tk_tl]
GO
ALTER TABLE [dbo].[TblTTCaNhan]  WITH CHECK ADD  CONSTRAINT [tk_cn] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TblTTCaNhan] CHECK CONSTRAINT [tk_cn]
GO
ALTER TABLE [dbo].[TblTTNVCoBan]  WITH CHECK ADD  CONSTRAINT [FK_TblTTNVCoBan_TblPhongBan] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[TblPhongBan] ([MaPhong])
GO
ALTER TABLE [dbo].[TblTTNVCoBan] CHECK CONSTRAINT [FK_TblTTNVCoBan_TblPhongBan]
GO
ALTER TABLE [dbo].[TblThaiSan]  WITH NOCHECK ADD  CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TblThaiSan] CHECK CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan]
GO

