Create Database [MobileStoreManagement1]
Go
USE [MobileStoreManagement1]
GO
/****** Object:  DatabaseRole [nhanvien]    Script Date: 11/14/2019 8:38:59 PM ******/
CREATE ROLE [nhanvien]
GO
/****** Object:  Schema [nhanvien]    Script Date: 11/14/2019 8:38:59 PM ******/
CREATE SCHEMA [nhanvien]
GO
/****** Object:  Schema [quanly]    Script Date: 11/14/2019 8:38:59 PM ******/
CREATE SCHEMA [quanly]
GO
/****** Object:  Schema [quanly1]    Script Date: 11/14/2019 8:38:59 PM ******/
CREATE SCHEMA [quanly1]
GO
/****** Object:  Table [dbo].[ChiTietDonDH]    Script Date: 11/14/2019 8:38:59 PM ******/

/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 11/14/2019 8:38:59 PM ******/


/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 11/14/2019 8:38:59 PM ******/


/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 11/14/2019 8:38:59 PM ******/

/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 11/14/2019 8:38:59 PM ******/


/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 11/14/2019 8:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[MaSP] [int] NOT NULL,
	[KieuDang] [nvarchar](50) NULL,
	[ManHinh] [nvarchar](20) NULL,
	[Camera] [nvarchar](30) NULL,
	[BoNhoTrong] [nvarchar](10) NULL,
	[HeDieuHanh] [nvarchar](30) NULL,
	[CPU] [nvarchar](20) NULL,
	[RAM] [nvarchar](10) NULL,
	[Pin] [nvarchar](10) NULL,
 CONSTRAINT [pk_ChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[ChucVu]    Script Date: 11/14/2019 8:38:59 PM ******/


GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 11/14/2019 8:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](7) NULL,
	[NgayDat] [date] NULL,
	[NgayGiao] [date] NULL,
 CONSTRAINT [pk_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[HangSX]    Script Date: 11/14/2019 8:38:59 PM ******/



/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 11/14/2019 8:38:59 PM ******/


/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 11/14/2019 8:38:59 PM ******/

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/14/2019 8:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](7) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[Email] [nvarchar](30) NULL,
 CONSTRAINT [pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/14/2019 8:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](225) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [pk_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/14/2019 8:38:59 PM ******/

/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 11/14/2019 8:38:59 PM ******/


GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/14/2019 8:38:59 PM ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [nvarchar](10) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
 CONSTRAINT [pk_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
/**/
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSX](
	[MaHSX] [nvarchar](10) NOT NULL,
	[TenHSX] [nvarchar](50) NULL,
 CONSTRAINT [pk_HangSX] PRIMARY KEY CLUSTERED 
(
	[MaHSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
/**/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](225) NULL,
	[MaHSX] [nvarchar](10) NULL,
	[MaDanhMuc] [nvarchar](10) NULL,
	[DonGiaNhap] [int] NULL,
	[DonGiaBan] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [pk_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[account](
	[id] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[sdt] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[role] [bit] NULL,
 CONSTRAINT [pk_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  View [dbo].[DoanhThuThang5]    Script Date: 11/14/2019 8:38:59 PM ******/

GO
/* Danh Muc*/
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM001',N'Điện Thoại')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM002',N'Phụ Kiện')


--INSERT [dbo].[ChiTietDonDH] ([MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'DDH01', 1, 1, 900, NULL)
--INSERT [dbo].[ChiTietDonDH] ([MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'DDH01', 2, 1, 800, NULL)
--INSERT [dbo].[ChiTietDonDH] ([MaDDH], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'DDH02', 7, 1, 1000, NULL)
--INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB01', 1, 1, 1, 90, 1000)
--INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB01', 2, 10, 1000, 90, 1200)
--INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB02', 1, 10, 1500, 80, 15000)
--INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN01', 1, 10, 600, 10, 10000)
--INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN01', 2, 20, 700, 80, 200)
--INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDN02', 7, 30, 800, 10, 5000)
--INSERT [dbo].[ChiTietPhieuNhap] ([MaPNK], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1', 1, 10, 600, NULL)
--INSERT [dbo].[ChiTietPhieuNhap] ([MaPNK], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1', 2, 10, 100, NULL)
--INSERT [dbo].[ChiTietPhieuNhap] ([MaPNK], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'1', 5, 10, 400, NULL)
--INSERT [dbo].[ChiTietPhieuNhap] ([MaPNK], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'2', 1, 16, 500, NULL)
--INSERT [dbo].[ChiTietPhieuNhap] ([MaPNK], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'2', 6, 30, 200, NULL)
--INSERT [dbo].[ChiTietPhieuXuat] ([MaPXK], [MaSP], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (N'1', 1, 5, 100, 1000, NULL)
--INSERT [dbo].[ChiTietPhieuXuat] ([MaPXK], [MaSP], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (N'1', 2, 1, 100, 900, NULL)
--INSERT [dbo].[ChiTietPhieuXuat] ([MaPXK], [MaSP], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (N'2', 1, 1, 100, 1000, NULL)
--INSERT [dbo].[ChiTietPhieuXuat] ([MaPXK], [MaSP], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (N'2', 3, 4, 100, 500, NULL)
--INSERT [dbo].[ChiTietPhieuXuat] ([MaPXK], [MaSP], [SoLuong], [DonViTinh], [DonGia], [ThanhTien]) VALUES (N'3', 6, 1, 100, 1090, NULL)
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (1, N'	Thanh+Cảm ứng', N'5.0 inch', N'	23 MP', N'64GB
', N'Android 6.0 (Marshmallow)', N'1.4 GHz', N'3 GB', N'2620 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (2, N'	Thanh + cảm ứng', N'	5.0 icnh', N'	13 MP', N'	16 GB', N'Android 6.0 (Marshmallow)', N'2.0 GHz', N'	2 GB', N'2300 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (3, N'	Thanh+Cảm ứng', N'	5.0 inch', N'21 MP', N'16 GB', N'Android 5.0', N'2.0Ghz', N'3 GB', N'2600 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (4, N'	Thanh + Cảm ứng', N'4.7 inch', N'	6.7 MP', N'8 GB', N'	Windows Phone 8.1', N'1.2 GHz', N'1 GB', N'2220 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (5, N'Thanh+Cảm ứng
', N'	4.7 inch', N'12 MP', N'16 GB', N'IOS 9.0', N'1.84 GHz', N'2 GB', N'1715 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (6, N'Thanh+Cảm ứng', N'4.5 inch', N'8 MP', N'16 GB', N'IOS 8.0', N'1.84 GHz', N'2 GB', N'1715 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (7, N'Thanh+Cảm ứng', N'4.7 inch', N'12 MP', N'32 GB', N'IOS 9.0', N'2.3 GHz', N'2 GB', N'1960 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (8, N'Thanh + Cảm ứng', N'5.2 inch', N'16 MP', N'64 GB', N'Android 6.0 (Marshmallow)', N'2.0 GHz', N'4 GB', N'2650 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (9, N'Thanh + Cảm ứng', N'5.5 inch', N'12 MP', N'32 GB', N'Android 6.0', N'2.0 GHz', N'4 GB', N'3600 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [KieuDang], [ManHinh], [Camera], [BoNhoTrong], [HeDieuHanh], [CPU], [RAM], [Pin]) VALUES (10, N'Thanh + Cảm ứng', N'5.5 inch', N'13 MP', N'16 GB', N'Android 6.0', N'2.0 GHz', N'3 GB', N'2800 mAh')
--INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (N'BH', N'Nhân viên bán hàng')
--INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (N'KT', N'Kế toán trưởng')
--INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (N'TK', N'Thủ kho ')
--INSERT [dbo].[DonDatHang] ([MaDDH], [MaKH], [NgayDat], [NgayGiao]) VALUES (N'DDH01', N'KH01', CAST(N'2019-03-10' AS Date), CAST(N'2019-03-15' AS Date))
--INSERT [dbo].[DonDatHang] ([MaDDH], [MaKH], [NgayDat], [NgayGiao]) VALUES (N'DDH02', N'KH02', CAST(N'2019-04-22' AS Date), CAST(N'2019-04-25' AS Date))
--INSERT [dbo].[DonDatHang] ([MaDDH], [MaKH], [NgayDat], [NgayGiao]) VALUES (N'DDH03', N'KH08', CAST(N'2019-11-25' AS Date), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[HangSX] ([MaHSX], [TenHSX]) VALUES (N'APP', N'Apple')
INSERT [dbo].[HangSX] ([MaHSX], [TenHSX]) VALUES (N'AUS', N'Asus')
INSERT [dbo].[HangSX] ([MaHSX], [TenHSX]) VALUES (N'MBS', N'Mobistar')
INSERT [dbo].[HangSX] ([MaHSX], [TenHSX]) VALUES (N'NOK', N'Nokia')
INSERT [dbo].[HangSX] ([MaHSX], [TenHSX]) VALUES (N'SON', N'Sony')
INSERT [dbo].[HangSX] ([MaHSX], [TenHSX]) VALUES (N'SSU', N'Sam Sung')
--INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan]) VALUES (N'HDB01', N'NV01', N'KH01', CAST(N'2019-03-03' AS Date))
--INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan]) VALUES (N'HDB02', N'NV04', N'KH02', CAST(N'2019-03-25' AS Date))
--INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan]) VALUES (N'HDB03', N'NV01', N'KH09', CAST(N'2019-10-01' AS Date))
--INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan]) VALUES (N'HDB04', N'NV04', N'KH06', CAST(N'2019-03-12' AS Date))
--INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan]) VALUES (N'HDB05', N'NV01', N'KH05', CAST(N'2019-03-15' AS Date))
--INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan]) VALUES (N'HDB06', N'NV01', N'KH03', CAST(N'2019-05-02' AS Date))
--INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan]) VALUES (N'HDB07', N'NV04', N'KH04', CAST(N'2019-03-13' AS Date))
--INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap]) VALUES (N'HDN01', N'NV03', N'NCC1', CAST(N'2019-05-12' AS Date))
--INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap]) VALUES (N'HDN02', N'NV03', N'NCC2', CAST(N'2019-05-18' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH01   ', N'Chu Văn Quang', N'Thanh Vân-Tam Dương-Vĩnh Phúc', N'0975280467', N'chuvanquang96@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH02   ', N'Nguyễn Ái Tuấn', N'Đội Cấn-Vĩnh Tường-Vĩnh Phúc', N'0989967282', N'nguyen.aituan95@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH03   ', N'Vũ Hoàng Long', N'Phú Ninh-Phú Xuyên-Hà Nội', N'0975648974', N'longhoang93@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH04   ', N'Nguyễn Thị Là ', N'Doãn Thái-Vũ Thư-Thái Bình', N'0984388720', N'languyen@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH05   ', N'Nguyễn Thị Trang', N'Xuân Mai-Chương Mỹ-Hà Nội', N'0979679484', N'nhoccon@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH06   ', N'Trần Mạnh Hùng', N'Tân Dân-Giao Thuỷ-Nam Định', N'0974896077', N'hungtran11@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH07   ', N'Nguyễn Thị Hoài Thu', N'Vũ Kế-Thái Thịnh-Ninh Bình', N'0969283259', N'thunguyen1903@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH08   ', N'Vũ Thuỳ Trang', N'Nguyễn Khang-Cầu Giấy-Hà Nội', N'0972077896', N'vuthuytrang88@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (N'KH09   ', N'Nguyễn Ngọc Anh', N'Văn Bình-Thường Tín-Hà Nội', N'0969283258', N'cophuthuynho2111@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC1', N'Công ty cổ phần thế giới số Trần Anh', N'1174,Đường Láng-Đống Đa,Hà Nội', N'04 3766 7708')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC2', N'Công ty trách nghiệm hữu hạn điện thoại Vân Trung', N'ầng 3 Tòa nhà 157 Đặng Tiến Đông, Đống Đa, Hà Nội', N'04 3537 5995')
--INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [MaCV]) VALUES (N'NV01', N'Nguyễn Thuỳ Linh', 0, CAST(N'1988-10-20' AS Date), N'Xuân Đỉnh-Từ Liêm-Hà Nội', N'098657953', N'BH')
--INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [MaCV]) VALUES (N'NV02', N'Nguyễn Phương Thảo', 0, CAST(N'1986-02-12' AS Date), N'Định Công-Hai Bà Trưng-Hà Nội', N'0975280467', N'KT')
--INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [MaCV]) VALUES (N'NV03', N'Nguyễn Thị Thu Hiền', 0, CAST(N'1989-08-14' AS Date), N'Tây Mỗ-Từ Liêm-Hà Nội', N'0972077896', N'TK')
--INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [MaCV]) VALUES (N'NV04', N'Lý Bá Hùng', 1, CAST(N'1990-12-15' AS Date), N'Hoàng Hoa Thám-Cầu Giấy-Hà Nội', N'0969283259', N'BH')
--INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'1', N'NCC1', N'NV01', CAST(N'2019-04-20' AS Date))
--INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'2', N'NCC2', N'NV01', CAST(N'2019-05-11' AS Date))
--INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'3', N'NCC1', N'NV05', CAST(N'2019-06-01' AS Date))
--INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaNCC], [MaNV], [NgayNhap]) VALUES (N'4', N'NCC2', N'NV04', CAST(N'2019-07-05' AS Date))
--INSERT [dbo].[PhieuXuatKho] ([MaPXK], [MaNV], [NgayXuat]) VALUES (N'1', N'NV01', CAST(N'2019-10-11' AS Date))
--INSERT [dbo].[PhieuXuatKho] ([MaPXK], [MaNV], [NgayXuat]) VALUES (N'2', N'NV01', CAST(N'2019-12-15' AS Date))
--INSERT [dbo].[PhieuXuatKho] ([MaPXK], [MaNV], [NgayXuat]) VALUES (N'3', N'NV02', CAST(N'2019-06-15' AS Date))
--INSERT [dbo].[PhieuXuatKho] ([MaPXK], [MaNV], [NgayXuat]) VALUES (N'4', N'NV03', CAST(N'2019-01-17' AS Date))
--INSERT [dbo].[PhieuXuatKho] ([MaPXK], [MaNV], [NgayXuat]) VALUES (N'5', N'NV03', CAST(N'2019-02-17' AS Date))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (1, N'ĐIỆN THOẠI SONY XPERIA X', N'SON',N'DM001', 9000000, 10998000, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (2, N'ĐIỆN THOẠI SONY XPERIA XA', N'SON',N'DM001', 4000000, 5880000, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (3, N'ĐIỆN THOẠI SONY XPERIA M5', N'SON',N'DM001', 6000000, 7188000, 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (4, N'NOKIA LUMIA 730 RM-1040', N'NOK',N'DM001', 2688000, 3290000, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (5, N'APPLE IPHONE 6S ROSE GOLD 16GB', N'APP',N'DM001', 12590000, 1478000, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (6, N'APPLE IPHONE 5S 16GB SPACE GRAY', N'APP',N'DM001', 5900000, 6945000, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (7, N'ĐIỆN THOẠI APPLE IPHONE 7 32GB SILVER', N'APP',N'DM001', 18000000, 22000000, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (8, N'ĐIỆN THOẠIASUS ZENFONE 3 ĐEN', N'AUS',N'DM001', 6880000, 7890000, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (9, N'SAMSUNG GALAXY S7 EDGE - BẠC', N'SSU',N'DM001', 16500000, 18790000, 7)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHSX],[MaDanhMuc], [DonGiaNhap], [DonGiaBan], [SoLuong]) VALUES (10, N'Mobistar 
LAI Zumbo S', N'MBS',N'DM001', 3190000, 4190000, 2)
--ALTER TABLE [dbo].[ChiTietDonDH]  WITH CHECK ADD  CONSTRAINT [fk_DonDatHang] FOREIGN KEY([MaDDH])
--REFERENCES [dbo].[DonDatHang] ([MaDDH])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietDonDH] CHECK CONSTRAINT [fk_DonDatHang]
--GO
--ALTER TABLE [dbo].[ChiTietDonDH]  WITH CHECK ADD  CONSTRAINT [fk_SanPham] FOREIGN KEY([MaSP])
--REFERENCES [dbo].[SanPham] ([MaSP])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietDonDH] CHECK CONSTRAINT [fk_SanPham]
--GO
--ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonBan] FOREIGN KEY([SoHDB])
--REFERENCES [dbo].[HoaDonBan] ([SoHDB])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [fk_HoaDonBan]
--GO
--ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [fk_SanPhamHDB] FOREIGN KEY([MaSP])
--REFERENCES [dbo].[SanPham] ([MaSP])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [fk_SanPhamHDB]
--GO
--ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonNhap] FOREIGN KEY([SoHDN])
--REFERENCES [dbo].[HoaDonNhap] ([SoHDN])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [fk_HoaDonNhap]
--GO
--ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [fk_SanPhamHDN] FOREIGN KEY([MaSP])
--REFERENCES [dbo].[SanPham] ([MaSP])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [fk_SanPhamHDN]
--GO
--ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [fk_PhieuNhapKho] FOREIGN KEY([MaPNK])
--REFERENCES [dbo].[PhieuNhapKho] ([MaPNK])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [fk_PhieuNhapKho]
--GO
--ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [fk_SP] FOREIGN KEY([MaSP])
--REFERENCES [dbo].[SanPham] ([MaSP])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [fk_SP]
--GO
--ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [fk_CTPXK] FOREIGN KEY([MaSP])
--REFERENCES [dbo].[SanPham] ([MaSP])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [fk_CTPXK]
--GO
--ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [fk_PhieuXuatKho] FOREIGN KEY([MaPXK])
--REFERENCES [dbo].[PhieuXuatKho] ([MaPXK])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [fk_PhieuXuatKho]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [fk_ChiTietSP]
GO
--ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [fk_KhachHang] FOREIGN KEY([MaKH])
--REFERENCES [dbo].[KhachHang] ([MaKH])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [fk_KhachHang]
--GO
--ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [fk_KhachHangHD] FOREIGN KEY([MaKH])
--REFERENCES [dbo].[KhachHang] ([MaKH])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [fk_KhachHangHD]
--GO
--ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [fk_NhanVienHD] FOREIGN KEY([MaNV])
--REFERENCES [dbo].[NhanVien] ([MaNV])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [fk_NhanVienHD]
--GO
--ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [fk_NhaCC] FOREIGN KEY([MaNCC])
--REFERENCES [dbo].[NhaCungCap] ([MaNCC])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [fk_NhaCC]
--GO
--ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_ChucVu] FOREIGN KEY([MaCV])
--REFERENCES [dbo].[ChucVu] ([MaCV])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_ChucVu]
--GO
--ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [fk_NCC] FOREIGN KEY([MaNCC])
--REFERENCES [dbo].[NhaCungCap] ([MaNCC])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[PhieuNhapKho] CHECK CONSTRAINT [fk_NCC]
--GO
--ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [fk_NV] FOREIGN KEY([MaNV])
--REFERENCES [dbo].[NhanVien] ([MaNV])
--ON UPDATE CASCADE
--ON DELETE CASCADE
--GO
--ALTER TABLE [dbo].[PhieuXuatKho] CHECK CONSTRAINT [fk_NV]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
ON UPDATE CASCADE
ON DELETE CASCADE
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_DanhMuc]

GO

ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_Hangsx] FOREIGN KEY([MaHSX])
REFERENCES [dbo].[HangSX] ([MaHSX])
ON UPDATE CASCADE
ON DELETE CASCADE
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_Hangsx]


GO
/****** Object:  StoredProcedure [dbo].[DoanhThuTheoThang]    Script Date: 11/14/2019 8:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
