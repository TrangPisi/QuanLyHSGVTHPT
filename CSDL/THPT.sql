USE [master]
GO
/****** Object:  Database [QL_GV_HS_THPT]    Script Date: 11/23/2016 7:59:53 AM ******/
CREATE DATABASE [QL_GV_HS_THPT]
 CONTAINMENT = NONE
 ON  PRIMARY 
--( NAME = N'QL_GV_HS_THPT', FILENAME = N'E:\GitHub\TTN_QL_GV_HS_THPT\Soucre\CSDL\QL_GV_HS_THPT.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
-- LOG ON 
--( NAME = N'QL_GV_HS_THPT_log', FILENAME = N'E:\GitHub\TTN_QL_GV_HS_THPT\Soucre\CSDL\QL_GV_HS_THPT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_GV_HS_THPT] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_GV_HS_THPT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_GV_HS_THPT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET  MULTI_USER 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_GV_HS_THPT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_GV_HS_THPT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QL_GV_HS_THPT]
GO
/****** Object:  Table [dbo].[tblGiangday]    Script Date: 11/23/2016 7:59:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGiangday](
	[MaGV] [varchar](10) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[Thu] [int] NOT NULL,
	[Tietday] [int] NOT NULL,
 CONSTRAINT [PK_tblGiangday] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[Thu] ASC,
	[Tietday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGiaovien]    Script Date: 11/23/2016 7:59:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGiaovien](
	[MaGV] [varchar](10) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nchar](10) NULL,
	[GT] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [varchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Luong] [int] NULL,
	[MaMon] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tblGiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHocSinh]    Script Date: 11/23/2016 7:59:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHocSinh](
	[MaHS] [varchar](50) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[GT] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DanToc] [nvarchar](50) NULL,
	[TonGiao] [nvarchar](50) NULL,
	[MaLop] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tblHocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLop]    Script Date: 11/23/2016 7:59:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLop](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[GVCN] [varchar](10) NULL,
 CONSTRAINT [PK_tblLop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMonhoc]    Script Date: 11/23/2016 7:59:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMonhoc](
	[MaMon] [varchar](10) NOT NULL,
	[TenMon] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPhanquyen]    Script Date: 11/23/2016 7:59:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhanquyen](
	[Quyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblPhanQuyen] PRIMARY KEY CLUSTERED 
(
	[Quyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 11/23/2016 7:59:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[MaGV] [varchar](10) NULL,
	[Quyen] [int] NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV01', N'1', 2, 1)
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV01', N'1', 2, 2)
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV02', N'1', 2, 3)
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV02', N'1', 2, 4)
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV03', N'1', 2, 5)
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV05', N'1', 3, 1)
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV07', N'1', 3, 4)
INSERT [dbo].[tblGiangday] ([MaGV], [MaLop], [Thu], [Tietday]) VALUES (N'GV03', N'1', 5, 1)
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV01', N'Phạm Văn', N'Công      ', N'Nam', CAST(0xFF1D0B00 AS Date), N'0168904569', N'Diễn Đồng, Diễn Châu, Nghệ An', 7000000, N'MH07')
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV02', N'Nguyễn Duy', N'Hùng      ', N'Nam', CAST(0x821D0B00 AS Date), N'', N'Bắc Giang', 4000000, N'MH07')
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV03', N'Lê Vũ Minh', N'Quân      ', N'Nam', CAST(0x213C0B00 AS Date), N'091232323', N'Bến Tre', 3500000, N'MH01')
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV04', N'Lê Thị Quỳnh', N'Nga       ', N'Nữ', CAST(0x631D0B00 AS Date), N'987654321', N'Ngũ Hành Sơn, Đà Nẵng', 7500000, N'MH06')
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV05', N'Hoàng Thùy', N'Linh      ', N'Nữ', CAST(0x223C0B00 AS Date), N'00983092', N'Hà Nội', 3000000, N'MH06')
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV06', N'Phạm Văn', N'Công      ', N'Nam', CAST(0xFF1D0B00 AS Date), N'168904569', N'Diễn Đồng, Diễn Châu, Nghệ An', 7000000, N'MH07')
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV07', N'Trần Mạnh', N'Linh      ', N'Nam', CAST(0x401D0B00 AS Date), N'123456789', N'Tây Tiến, Tiền Hải, Thái Bình', 6500000, N'MH08')
INSERT [dbo].[tblGiaovien] ([MaGV], [Ho], [Ten], [GT], [NgaySinh], [SDT], [DiaChi], [Luong], [MaMon]) VALUES (N'GV08', N'Nguyễn Duy', N'Hùng      ', N'Nam', CAST(0x331E0B00 AS Date), N'135792468', N'Cầu Gồ, Yên Thế, Bắc Giang', 8000000, N'MH05')
INSERT [dbo].[tblHocSinh] ([MaHS], [Ho], [Ten], [GT], [NgaySinh], [DiaChi], [DanToc], [TonGiao], [MaLop]) VALUES (N'HS01', N'Phạm Quang', N'Vẹo', N'Nữ', CAST(0xF61D0B00 AS Date), N'Thanh Hóa', N'Kinh', N'Không', N'1')
INSERT [dbo].[tblHocSinh] ([MaHS], [Ho], [Ten], [GT], [NgaySinh], [DiaChi], [DanToc], [TonGiao], [MaLop]) VALUES (N'HS02', N'Nguyễn Duy', N'Hùng', N'Nam', CAST(0x361E0B00 AS Date), N'Bắc Giang', N'Tày', N'Phật giáo', N'1')
INSERT [dbo].[tblHocSinh] ([MaHS], [Ho], [Ten], [GT], [NgaySinh], [DiaChi], [DanToc], [TonGiao], [MaLop]) VALUES (N'HS03', N'Trần Mạnh', N'Linh', N'Nam', CAST(0x401D0B00 AS Date), N'Thái Bình', N'Nùng', N'Kito giáo', N'1')
INSERT [dbo].[tblHocSinh] ([MaHS], [Ho], [Ten], [GT], [NgaySinh], [DiaChi], [DanToc], [TonGiao], [MaLop]) VALUES (N'HS04', N'Lê Vũ Minh', N'Quân', N'Nam', CAST(0x621D0B00 AS Date), N'Bến Tre', N'Kinh', N'Không', N'1')
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'1', N'10A1', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'10', N'10A10', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'11', N'10A11', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'12', N'10A12', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'13', N'11A1', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'14', N'11A2', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'15', N'11A3', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'16', N'11A4', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'17', N'11A5', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'18', N'11A6', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'19', N'11A7', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'2', N'10A2', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'20', N'11A8', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'21', N'11A9', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'22', N'11A11', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'23', N'11A11', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'24', N'11A12', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'25', N'12A1', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'26', N'12A2', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'27', N'12A3', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'28', N'12A4', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'29', N'12A5', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'3', N'10A3', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'30', N'12A6', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'31', N'12A7', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'32', N'12A8', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'33', N'12A9', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'34', N'12A12', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'35', N'12A11', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'36', N'12A12', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'4', N'10A4', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'5', N'10A5', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'6', N'10A6', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'7', N'10A7', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'8', N'10A8', NULL)
INSERT [dbo].[tblLop] ([MaLop], [TenLop], [GVCN]) VALUES (N'9', N'10A9', NULL)
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH01', N'Toán học')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH02', N'Ngữ văn')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH03', N'Anh văn')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH04', N'Hóa học')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH05', N'Vật lý')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH06', N'Sinh học')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH07', N'Tin học')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH08', N'Địa lý')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH09', N'GDCD')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH10', N'Thể dục')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH11', N'Công nghệ')
INSERT [dbo].[tblMonhoc] ([MaMon], [TenMon]) VALUES (N'MH12', N'Lịch sử')
INSERT [dbo].[tblPhanquyen] ([Quyen], [TenQuyen]) VALUES (0, N'Học Sinh')
INSERT [dbo].[tblPhanquyen] ([Quyen], [TenQuyen]) VALUES (1, N'Trợ Giảng')
INSERT [dbo].[tblPhanquyen] ([Quyen], [TenQuyen]) VALUES (2, N'Giáo Viên')
INSERT [dbo].[tblPhanquyen] ([Quyen], [TenQuyen]) VALUES (4, N'Hiệu Trưởng')
INSERT [dbo].[tblPhanquyen] ([Quyen], [TenQuyen]) VALUES (5, N'Administrator')
INSERT [dbo].[tblUser] ([Username], [Password], [MaGV], [Quyen]) VALUES (N'abc', N'123', N'', 1)
INSERT [dbo].[tblUser] ([Username], [Password], [MaGV], [Quyen]) VALUES (N'admin', N'admin', N'GV01', 5)
INSERT [dbo].[tblUser] ([Username], [Password], [MaGV], [Quyen]) VALUES (N'pvcit', N'234', N'GV01', 4)
INSERT [dbo].[tblUser] ([Username], [Password], [MaGV], [Quyen]) VALUES (N'study', N'123', N'', 0)
INSERT [dbo].[tblUser] ([Username], [Password], [MaGV], [Quyen]) VALUES (N'teach', N'123', N'GV03', 2)
ALTER TABLE [dbo].[tblGiangday] ADD  CONSTRAINT [DF_tblGiangday_Thu]  DEFAULT ((2)) FOR [Thu]
GO
ALTER TABLE [dbo].[tblGiangday]  WITH CHECK ADD  CONSTRAINT [FK_tblGiangday_tblGiaovien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[tblGiaovien] ([MaGV])
GO
ALTER TABLE [dbo].[tblGiangday] CHECK CONSTRAINT [FK_tblGiangday_tblGiaovien]
GO
ALTER TABLE [dbo].[tblGiangday]  WITH CHECK ADD  CONSTRAINT [FK_tblGiangday_tblLop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLop] ([MaLop])
GO
ALTER TABLE [dbo].[tblGiangday] CHECK CONSTRAINT [FK_tblGiangday_tblLop]
GO
ALTER TABLE [dbo].[tblGiaovien]  WITH CHECK ADD  CONSTRAINT [FK_tblGiaoVien_tblMonHoc] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblMonhoc] ([MaMon])
GO
ALTER TABLE [dbo].[tblGiaovien] CHECK CONSTRAINT [FK_tblGiaoVien_tblMonHoc]
GO
ALTER TABLE [dbo].[tblHocSinh]  WITH CHECK ADD  CONSTRAINT [FK_tblHocSinh_tblLop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLop] ([MaLop])
GO
ALTER TABLE [dbo].[tblHocSinh] CHECK CONSTRAINT [FK_tblHocSinh_tblLop]
GO
ALTER TABLE [dbo].[tblLop]  WITH CHECK ADD  CONSTRAINT [FK_tblLop_tblGiaoVien] FOREIGN KEY([GVCN])
REFERENCES [dbo].[tblGiaovien] ([MaGV])
GO
ALTER TABLE [dbo].[tblLop] CHECK CONSTRAINT [FK_tblLop_tblGiaoVien]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblPhanQuyen] FOREIGN KEY([Quyen])
REFERENCES [dbo].[tblPhanquyen] ([Quyen])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblPhanQuyen]
GO
USE [master]
GO
ALTER DATABASE [QL_GV_HS_THPT] SET  READ_WRITE 
GO
