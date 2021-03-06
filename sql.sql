USE [QLSVGV1]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 3/18/2018 12:33:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaiViet](
	[maBaiViet] [char](8) NOT NULL,
	[tieuDe] [nvarchar](100) NULL,
	[noiDung] [text] NULL,
	[ngayDang] [date] NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[maBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangDiem](
	[maSinhVien] [char](8) NOT NULL,
	[maMonMoc] [char](8) NOT NULL,
	[namHoc] [int] NOT NULL,
	[hocKy] [int] NOT NULL,
	[trangThai] [char](1) NULL,
	[thucHanh] [int] NULL,
	[giuaKy] [int] NULL,
	[cuoiKy] [int] NULL,
 CONSTRAINT [PK_BangDiem] PRIMARY KEY CLUSTERED 
(
	[maSinhVien] ASC,
	[maMonMoc] ASC,
	[namHoc] ASC,
	[hocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenNganh](
	[maChuyenNganh] [char](8) NOT NULL,
	[tenChuyenNganh] [nvarchar](50) NULL,
	[maNganh] [char](8) NULL,
 CONSTRAINT [PK_ChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[maChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhSachLop]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhSachLop](
	[maLop] [char](8) NOT NULL,
	[maSinhVien] [char](8) NOT NULL,
	[tenLop] [nvarchar](128) NULL,
 CONSTRAINT [PK_DanhSachLop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiangVien](
	[maGiangVien] [char](8) NOT NULL,
	[tenGiangVien] [nvarchar](50) NULL,
	[queQuan] [nvarchar](100) NULL,
	[ngaySinh] [smalldatetime] NULL,
	[namBatDau] [int] NULL,
	[eMail] [varchar](50) NULL,
	[tenDangNhap] [char](20) NULL,
	[maBaiViet] [char](8) NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[maGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LopMonHoc]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LopMonHoc](
	[maLop] [char](8) NOT NULL,
	[maMonHoc] [char](8) NULL,
	[soLuongToiDa] [int] NULL,
	[soLuongDangKy] [int] NULL,
	[maGiangVien] [char](8) NULL,
	[trangThai] [char](1) NULL,
 CONSTRAINT [PK_LopMonHoc] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMonHoc] [char](8) NOT NULL,
	[tenMonHoc] [nvarchar](50) NULL,
	[maChuyenNganh] [char](8) NULL,
	[soTinChi] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NganhHoc]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NganhHoc](
	[maNganh] [char](8) NOT NULL,
	[tenNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_NganhHoc] PRIMARY KEY CLUSTERED 
(
	[maNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuanTri]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuanTri](
	[maQuanTri] [char](8) NOT NULL,
	[tenQuanTri] [nvarchar](50) NULL,
	[queQuan] [nvarchar](100) NULL,
	[ngaySinh] [smalldatetime] NULL,
	[tenDangNhap] [char](20) NULL,
	[maBaiViet] [char](8) NULL,
 CONSTRAINT [PK_QuanTri] PRIMARY KEY CLUSTERED 
(
	[maQuanTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[maSinhVien] [char](8) NOT NULL,
	[tenSinhVien] [nvarchar](50) NULL,
	[queQuan] [nvarchar](100) NULL,
	[ngaySinh] [smalldatetime] NULL,
	[namNhapHoc] [int] NULL,
	[maNganh] [char](8) NULL,
	[eMail] [varchar](50) NULL,
	[tenDangNhap] [char](20) NULL,
	[gioiTinh] [int] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[maSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 3/18/2018 12:33:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tenDangNhap] [char](20) NOT NULL,
	[matKhau] [varchar](50) NULL,
	[loaiTaiKhoan] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_MonHoc] FOREIGN KEY([maMonMoc])
REFERENCES [dbo].[MonHoc] ([maMonHoc])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_MonHoc]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_SinhVien] FOREIGN KEY([maSinhVien])
REFERENCES [dbo].[SinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_SinhVien]
GO
ALTER TABLE [dbo].[ChuyenNganh]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenNganh_NganhHoc] FOREIGN KEY([maNganh])
REFERENCES [dbo].[NganhHoc] ([maNganh])
GO
ALTER TABLE [dbo].[ChuyenNganh] CHECK CONSTRAINT [FK_ChuyenNganh_NganhHoc]
GO
ALTER TABLE [dbo].[DanhSachLop]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachLop_LopMonHoc] FOREIGN KEY([maLop])
REFERENCES [dbo].[LopMonHoc] ([maLop])
GO
ALTER TABLE [dbo].[DanhSachLop] CHECK CONSTRAINT [FK_DanhSachLop_LopMonHoc]
GO
ALTER TABLE [dbo].[DanhSachLop]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachLop_SinhVien] FOREIGN KEY([maSinhVien])
REFERENCES [dbo].[SinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[DanhSachLop] CHECK CONSTRAINT [FK_DanhSachLop_SinhVien]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_BaiViet] FOREIGN KEY([maBaiViet])
REFERENCES [dbo].[BaiViet] ([maBaiViet])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_BaiViet]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_TaiKhoan] FOREIGN KEY([tenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([tenDangNhap])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_TaiKhoan]
GO
ALTER TABLE [dbo].[LopMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopMonHoc_GiangVien] FOREIGN KEY([maGiangVien])
REFERENCES [dbo].[GiangVien] ([maGiangVien])
GO
ALTER TABLE [dbo].[LopMonHoc] CHECK CONSTRAINT [FK_LopMonHoc_GiangVien]
GO
ALTER TABLE [dbo].[LopMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopMonHoc_MonHoc] FOREIGN KEY([maMonHoc])
REFERENCES [dbo].[MonHoc] ([maMonHoc])
GO
ALTER TABLE [dbo].[LopMonHoc] CHECK CONSTRAINT [FK_LopMonHoc_MonHoc]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_ChuyenNganh] FOREIGN KEY([maChuyenNganh])
REFERENCES [dbo].[ChuyenNganh] ([maChuyenNganh])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_ChuyenNganh]
GO
ALTER TABLE [dbo].[QuanTri]  WITH CHECK ADD  CONSTRAINT [FK_QuanTri_BaiViet] FOREIGN KEY([maBaiViet])
REFERENCES [dbo].[BaiViet] ([maBaiViet])
GO
ALTER TABLE [dbo].[QuanTri] CHECK CONSTRAINT [FK_QuanTri_BaiViet]
GO
ALTER TABLE [dbo].[QuanTri]  WITH CHECK ADD  CONSTRAINT [FK_QuanTri_TaiKhoan] FOREIGN KEY([tenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([tenDangNhap])
GO
ALTER TABLE [dbo].[QuanTri] CHECK CONSTRAINT [FK_QuanTri_TaiKhoan]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_TaiKhoan] FOREIGN KEY([tenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([tenDangNhap])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_TaiKhoan]
GO
