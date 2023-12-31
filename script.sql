USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[BanSao]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanSao](
	[MaSach] [nchar](10) NOT NULL,
	[MaDay] [int] NOT NULL,
	[SLSach] [int] NULL,
 CONSTRAINT [PK_BanSao] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaySach]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaySach](
	[MaDay] [int] NOT NULL,
	[TenDay] [nvarchar](20) NOT NULL,
	[ViTri] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_DaySach] PRIMARY KEY CLUSTERED 
(
	[MaDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaThe] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[SDT] [nchar](15) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuonTra]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuonTra](
	[MaSach] [nchar](10) NOT NULL,
	[MaThe] [nchar](10) NOT NULL,
	[MaDay] [int] NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[DaTra] [bit] NULL,
 CONSTRAINT [PK_MuonTra] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaThe] ASC,
	[MaDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha Xuat Ban]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha Xuat Ban](
	[MaNXB] [nchar](10) NOT NULL,
	[TenNXB] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Nha Xuat Ban] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[SDT] [nchar](10) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[MaNXB] [nchar](10) NOT NULL,
	[MaTacGia] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tac Gia]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tac Gia](
	[MaTacGia] [nchar](10) NOT NULL,
	[TenTacGia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tac Gia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 15/10/2023 8:34:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] NOT NULL,
	[TenTK] [nvarchar](30) NOT NULL,
	[MK] [nvarchar](50) NOT NULL,
	[LoaiTK] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BanSao]  WITH CHECK ADD  CONSTRAINT [FK_BanSao_DaySach] FOREIGN KEY([MaDay])
REFERENCES [dbo].[DaySach] ([MaDay])
GO
ALTER TABLE [dbo].[BanSao] CHECK CONSTRAINT [FK_BanSao_DaySach]
GO
ALTER TABLE [dbo].[BanSao]  WITH CHECK ADD  CONSTRAINT [FK_BanSao_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[BanSao] CHECK CONSTRAINT [FK_BanSao_Sach]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_TaiKhoan] FOREIGN KEY([ID])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_TaiKhoan]
GO
ALTER TABLE [dbo].[MuonTra]  WITH CHECK ADD  CONSTRAINT [FK_MuonTra_DaySach] FOREIGN KEY([MaDay])
REFERENCES [dbo].[DaySach] ([MaDay])
GO
ALTER TABLE [dbo].[MuonTra] CHECK CONSTRAINT [FK_MuonTra_DaySach]
GO
ALTER TABLE [dbo].[MuonTra]  WITH CHECK ADD  CONSTRAINT [FK_MuonTra_DocGia] FOREIGN KEY([MaThe])
REFERENCES [dbo].[DocGia] ([MaThe])
GO
ALTER TABLE [dbo].[MuonTra] CHECK CONSTRAINT [FK_MuonTra_DocGia]
GO
ALTER TABLE [dbo].[MuonTra]  WITH CHECK ADD  CONSTRAINT [FK_MuonTra_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[MuonTra] CHECK CONSTRAINT [FK_MuonTra_Sach]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([ID])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Nha Xuat Ban] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[Nha Xuat Ban] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Nha Xuat Ban]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Tac Gia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[Tac Gia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Tac Gia]
GO
