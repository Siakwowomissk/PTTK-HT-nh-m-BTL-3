USE [QLy_CTM_Palace]
GO
/****** Object:  Table [dbo].[Ban_Chot_Tiec]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban_Chot_Tiec](
	[Chot_Tiec_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Su_Kien] [nvarchar](50) NOT NULL,
	[TG_Bao_Cao] [time](7) NOT NULL,
	[TG_BD_Tiec] [time](7) NOT NULL,
	[TG_KT_Tiec] [time](7) NOT NULL,
	[Ngay_DR_Tiec] [date] NOT NULL,
	[Sales_ID] [int] NOT NULL,
	[Quan_Ly_ID] [int] NOT NULL,
	[Khach_ID] [int] NOT NULL,
	[TrungTam_ID] [int] NOT NULL,
 CONSTRAINT [PK_Ban_Chot_Tiec] PRIMARY KEY CLUSTERED 
(
	[Chot_Tiec_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ban_Giao]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban_Giao](
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[Ngay_Ban_Giao] [date] NOT NULL,
	[Ngay_Hoan_Thanh] [date] NOT NULL,
	[Dieu_Kien] [nvarchar](50) NOT NULL,
	[So_Luong] [int] NOT NULL,
	[Lich_CV_ID] [int] IDENTITY(1,1) NOT NULL,
	[Quan_Ly_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ban_Quyet_Toan]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban_Quyet_Toan](
	[Quyet_Toan_ID] [int] NOT NULL,
	[So_Mam_BD] [int] NOT NULL,
	[So_Mam_DK] [int] NOT NULL,
	[Thanh_Tien] [decimal](18, 0) NOT NULL,
	[Hop_Dong_ID] [int] NOT NULL,
	[TrungTam_ID] [int] NOT NULL,
	[Khach_ID] [int] NOT NULL,
	[KeToanID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Ban_Quyet_Toan] PRIMARY KEY CLUSTERED 
(
	[Quyet_Toan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ban_Thu_Chi]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban_Thu_Chi](
	[Thu_Chi_ID] [int] NOT NULL,
	[Chi_Phi_NV] [int] NOT NULL,
	[Chi_Phi_Thue_NV] [int] NOT NULL,
	[Chi_Phi_VatLieu] [int] NOT NULL,
	[Chi_Phi_Thue_MC] [int] NOT NULL,
	[Chi_Phi_CS_VatChat] [int] NOT NULL,
	[KeToanID] [int] NOT NULL,
 CONSTRAINT [PK_Ban_Thu_Chi] PRIMARY KEY CLUSTERED 
(
	[Thu_Chi_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bien_Ban_Giai_Quyet_Su_Co]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bien_Ban_Giai_Quyet_Su_Co](
	[Su_Co_ID] [int] NOT NULL,
	[Ten_Su_Co] [nvarchar](50) NOT NULL,
	[Ho_Ten_Nguoi_Lap] [nvarchar](50) NOT NULL,
	[Chuc_Danh] [nvarchar](50) NOT NULL,
	[TG_Xay_ra] [time](7) NOT NULL,
	[Dia_Diem] [nvarchar](50) NOT NULL,
	[Nhat_Ki_SC_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Bien_Ban_Giai_Quyet_Su_Co] PRIMARY KEY CLUSTERED 
(
	[Su_Co_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bien_Ban_Giai_Quyet_Su_Co_Chi_Tiet]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bien_Ban_Giai_Quyet_Su_Co_Chi_Tiet](
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[Phan_Loai] [nvarchar](50) NOT NULL,
	[Trang_Thai] [nvarchar](50) NOT NULL,
	[Su_Co_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bien_Ban_Nguyen_Nhan]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bien_Ban_Nguyen_Nhan](
	[Nguyen_Nhan_ID] [int] NOT NULL,
	[HoTen_Nguoi_Lap] [nvarchar](50) NOT NULL,
	[Nguyen_Nhan_Su_Co] [nvarchar](50) NULL,
	[Bo_Phan_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Bien_Ban_Nguyen_Nhan] PRIMARY KEY CLUSTERED 
(
	[Nguyen_Nhan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bo_Phan]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bo_Phan](
	[Bo_Phan_ID] [int] NOT NULL,
	[Ten_Bo_Phan] [nvarchar](50) NOT NULL,
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[Truong_Bo_Phan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bo_Phan] PRIMARY KEY CLUSTERED 
(
	[Bo_Phan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chu_Ki]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chu_Ki](
	[Chu_Ki_Ben_A] [nvarchar](50) NOT NULL,
	[Chu_Ki_Ben_B] [nvarchar](50) NOT NULL,
	[Khach_ID] [int] NOT NULL,
	[Hop_Dong_ID] [int] NOT NULL,
	[TrungTam_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Co_So_Vat_Chat]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Co_So_Vat_Chat](
	[CSVC_ID] [int] NOT NULL,
	[Ten_CSVC] [nvarchar](50) NOT NULL,
	[Loai_CSVC] [nvarchar](50) NOT NULL,
	[Tinh_Trang] [nvarchar](50) NOT NULL,
	[Vi_Tri] [nvarchar](50) NOT NULL,
	[So_Luong] [int] NOT NULL,
	[NV_Ki_Thuat_ID] [int] NOT NULL,
 CONSTRAINT [PK_Co_So_Vat_Chat] PRIMARY KEY CLUSTERED 
(
	[CSVC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cong_Viec_Chi_Tiet]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cong_Viec_Chi_Tiet](
	[Ten_Cong_Viec] [nvarchar](50) NOT NULL,
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[Nguoi_Phu_Trach] [nvarchar](50) NOT NULL,
	[Dia_Diem] [nvarchar](50) NOT NULL,
	[Thoi_Han] [date] NOT NULL,
	[Ghi_Chu] [nvarchar](50) NOT NULL,
	[Lich_CV_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danh_Sach_Thuc_Don]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danh_Sach_Thuc_Don](
	[Ten_Mon_Chinh] [nvarchar](50) NOT NULL,
	[Mon_Khai_Vi] [nvarchar](50) NOT NULL,
	[Mon_Trang_Mieng] [nvarchar](50) NOT NULL,
	[Do_Uong] [nvarchar](50) NOT NULL,
	[TG_Phuc_Vu] [time](7) NOT NULL,
	[So_Luong] [int] NOT NULL,
	[Bao_Cao_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dat_Tiec]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dat_Tiec](
	[So_Luong_Dat] [int] NOT NULL,
	[Ngay_Dat] [date] NOT NULL,
	[Hinh_Thuc] [nvarchar](50) NOT NULL,
	[DichVu_Id] [int] NOT NULL,
	[UuDai_ID] [int] NOT NULL,
	[Khach_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dich_Vu]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dich_Vu](
	[DichVu_Id] [int] NOT NULL,
	[Ten_DichVu] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,
 CONSTRAINT [PK_Dich_Vu] PRIMARY KEY CLUSTERED 
(
	[DichVu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dieu_Tra]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dieu_Tra](
	[Ngay_Dieu_Tra] [date] NOT NULL,
	[Gio_Dieu_Tra] [time](7) NOT NULL,
	[Van_De] [nvarchar](50) NOT NULL,
	[Vi_Pham] [nvarchar](50) NOT NULL,
	[Nhan_Vien_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nguyen_Nhan_ID] [int] NOT NULL,
	[Nhat_Ki_SC_ID] [int] NOT NULL,
	[Bo_Phan_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doi_Tuong_HD]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doi_Tuong_HD](
	[DoiTuong_ID] [int] NOT NULL,
	[Ngay_ToChuc] [date] NOT NULL,
	[Kieu] [nvarchar](50) NOT NULL,
	[SoLuong_Khach] [int] NOT NULL,
	[LienHe_Ben_A] [nvarchar](50) NOT NULL,
	[Thoi_Gian] [date] NOT NULL,
	[Tang] [int] NOT NULL,
	[Tong_Mau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Doi_Tuong_HD] PRIMARY KEY CLUSTERED 
(
	[DoiTuong_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Don_Nhap]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Don_Nhap](
	[Nhap_Hang_ID] [int] NOT NULL,
	[Ngay_Nhap] [date] NOT NULL,
	[Thu_Chi_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nha_Cung_Cap_ID] [int] NOT NULL,
 CONSTRAINT [PK_Don_Nhap] PRIMARY KEY CLUSTERED 
(
	[Nhap_Hang_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gia_Tri_HD]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gia_Tri_HD](
	[GiaTriHD_ID] [int] NOT NULL,
	[DV_Tinh] [decimal](18, 0) NOT NULL,
	[So_Luong] [int] NOT NULL,
	[Don_Gia] [nvarchar](50) NOT NULL,
	[Thanh_Tien] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Gia_Tri_HD] PRIMARY KEY CLUSTERED 
(
	[GiaTriHD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang_Hoa]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang_Hoa](
	[Hang_ID] [int] NOT NULL,
	[San_Pham] [nvarchar](50) NOT NULL,
	[Ngay_Giao] [date] NOT NULL,
	[Loai] [nvarchar](50) NOT NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[Nha_Cung_Cap_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Hang_Hoa] PRIMARY KEY CLUSTERED 
(
	[Hang_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hop_Dong]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hop_Dong](
	[Hop_Dong_ID] [int] NOT NULL,
	[Ten_HopDong] [nvarchar](50) NOT NULL,
	[Ngay_BD] [date] NOT NULL,
	[Ngay_KT] [date] NOT NULL,
	[Ngay_Ki_Ket] [date] NOT NULL,
	[Khach_ID] [int] NOT NULL,
	[TrungTam_ID] [int] NOT NULL,
	[UuDai_ID] [int] NOT NULL,
	[DichVu_Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Hop_Dong] PRIMARY KEY CLUSTERED 
(
	[Hop_Dong_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khach_Hang]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach_Hang](
	[Khach_ID] [int] NOT NULL,
	[CCCD] [int] NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[SDT] [int] NOT NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sales_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Khach_Hang] PRIMARY KEY CLUSTERED 
(
	[Khach_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khach_Moi]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach_Moi](
	[Ten_Khach_Moi] [nvarchar](50) NOT NULL,
	[Gioi_TInh] [bit] NOT NULL,
	[SDT] [int] NULL,
	[Dia_Chi] [nvarchar](50) NOT NULL,
	[Moi_Quan_He] [nvarchar](50) NOT NULL,
	[Cho_Ngoi] [int] NOT NULL,
	[Phan_Hoi] [nvarchar](50) NULL,
	[Chot_Tiec_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho_Luu_Tru]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho_Luu_Tru](
	[Kho_ID] [int] NOT NULL,
	[Ten_Kho] [nvarchar](50) NOT NULL,
	[TG_Kiem_Kho] [time](7) NOT NULL,
	[Tong_So] [int] NOT NULL,
	[Ghi_Chu] [nvarchar](50) NULL,
	[KeToanID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Kho_Luu_Tru] PRIMARY KEY CLUSTERED 
(
	[Kho_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lich_Cong_Viec]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich_Cong_Viec](
	[Lich_CV_ID] [int] IDENTITY(1,1) NOT NULL,
	[Vi_Tri] [nvarchar](50) NOT NULL,
	[Ngay_To_Chuc] [date] NOT NULL,
	[Thoi_Gian_To_Chuc] [time](7) NOT NULL,
	[Lich_Lam_Viec] [date] NOT NULL,
	[Sales_ID] [int] NOT NULL,
	[Quan_Ly_ID] [int] NOT NULL,
 CONSTRAINT [PK_Lich_Cong_Viec] PRIMARY KEY CLUSTERED 
(
	[Lich_CV_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[Ngay_BD_LV] [date] NOT NULL,
	[Ngay_KT_LV] [date] NOT NULL,
	[Luong_CB] [decimal](18, 0) NOT NULL,
	[Phu_Cap] [decimal](18, 0) NULL,
	[Luong_Thuong] [decimal](18, 0) NULL,
	[So_Ngay_Cong] [int] NULL,
	[Ngay_Nghi_Phep] [int] NULL,
	[Tong_Luong] [int] NULL,
	[Nhan_Vien_ID] [int] IDENTITY(1,1) NOT NULL,
	[KeToanID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ND_Hop_Dong]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ND_Hop_Dong](
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[DoiTuong_ID] [int] NOT NULL,
	[GiaTriHD_ID] [int] NOT NULL,
	[Hop_Dong_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguyen_Lieu]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguyen_Lieu](
	[Ten_Nguyen_Lieu] [nvarchar](50) NOT NULL,
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[So_Luong] [int] NOT NULL,
	[DV_Tinh] [decimal](18, 0) NOT NULL,
	[Ngay_Nhap] [date] NOT NULL,
	[Ngay_Xuat] [date] NOT NULL,
	[Tinh_Trang] [nvarchar](50) NOT NULL,
	[Ngay_Het_Han] [date] NOT NULL,
	[Lich_Su_Giao_Dich] [date] NOT NULL,
	[Ghi_Chu] [nvarchar](50) NOT NULL,
	[Nha_Cung_Cap_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kho_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha_Cung_Cap]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha_Cung_Cap](
	[Nha_Cung_Cap_ID] [int] NOT NULL,
	[Dia_Chi] [nvarchar](50) NOT NULL,
	[Ten_Nha_Cung_Cap] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Nha_Cung_Cap] PRIMARY KEY CLUSTERED 
(
	[Nha_Cung_Cap_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan_Vien]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_Vien](
	[Nhan_Vien_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ho_Ten] [nvarchar](50) NOT NULL,
	[SDT] [int] NOT NULL,
	[Dia_Chi] [nvarchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Phan_Cong] [nvarchar](50) NOT NULL,
	[Vai_Tro] [nvarchar](50) NOT NULL,
	[Cong_Viec] [nvarchar](50) NOT NULL,
	[Vi_Tri] [nvarchar](50) NOT NULL,
	[Bo_Phan_ID] [int] NOT NULL,
	[CSVC_ID] [int] NOT NULL,
	[Quan_Ly_ID] [int] NOT NULL,
 CONSTRAINT [PK_Nhan_Vien] PRIMARY KEY CLUSTERED 
(
	[Nhan_Vien_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhat_Ki_Su_Co]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhat_Ki_Su_Co](
	[Nhat_Ki_SC_ID] [int] NOT NULL,
	[Ho_Ten_Nguoi_Ghi_Chep] [nvarchar](50) NOT NULL,
	[Nguyen_Nhan_Su_Co] [nvarchar](50) NOT NULL,
	[Bo_Phan_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Nhat_Ki_Su_Co] PRIMARY KEY CLUSTERED 
(
	[Nhat_Ki_SC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhat_Ki_Su_Co_Chi_Tiet]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhat_Ki_Su_Co_Chi_Tiet](
	[Muc_Do] [nvarchar](50) NOT NULL,
	[Bien_Phap] [nvarchar](50) NOT NULL,
	[Ngay_Khac_Phuc] [date] NOT NULL,
	[TG_Hoan_Thanh] [time](7) NOT NULL,
	[Nhat_Ki_SC_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_KeToan]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_KeToan](
	[KeToanID] [int] NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NV_KeToan] PRIMARY KEY CLUSTERED 
(
	[KeToanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_Ki_Thuat]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_Ki_Thuat](
	[NV_Ki_Thuat_ID] [int] NOT NULL,
	[Ho_Ten] [nvarchar](50) NOT NULL,
	[Gioi_Tinh] [bit] NOT NULL,
	[SDT] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Vai_Tro] [nvarchar](50) NOT NULL,
	[Ki_Nang] [nvarchar](50) NOT NULL,
	[Kinh_Nghiem] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NV_Ki_Thuat] PRIMARY KEY CLUSTERED 
(
	[NV_Ki_Thuat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_Sales]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_Sales](
	[Sales_ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[ChucDanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_NV_Sales] PRIMARY KEY CLUSTERED 
(
	[Sales_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phuong_Thuc_Xu_Ly]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phuong_Thuc_Xu_Ly](
	[Xu_Ly_ID] [int] NOT NULL,
	[Ten_Phuong_Thuc] [nvarchar](50) NOT NULL,
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[Loai] [nvarchar](50) NOT NULL,
	[Rui_Ro] [nvarchar](50) NOT NULL,
	[Bien_Phap] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Phuong_Thuc_Xu_Ly] PRIMARY KEY CLUSTERED 
(
	[Xu_Ly_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quan_Ly]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quan_Ly](
	[Quan_Ly_ID] [int] NOT NULL,
	[Ho_Ten_QL] [nvarchar](50) NOT NULL,
	[Chuc_Vu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quan_Ly] PRIMARY KEY CLUSTERED 
(
	[Quan_Ly_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thanh_Toan]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thanh_Toan](
	[Thanh_Toan_20_PT] [decimal](18, 0) NOT NULL,
	[Thanh_Toan_80_PT] [decimal](18, 0) NOT NULL,
	[Tong_Tien] [decimal](18, 0) NOT NULL,
	[Khach_ID] [int] NOT NULL,
	[Sales_ID] [int] NOT NULL,
	[Quyet_Toan_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tien_Trinh_Bua_Tiec]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tien_Trinh_Bua_Tiec](
	[Bao_Cao_ID] [int] NOT NULL,
	[Ten_Tiec] [nvarchar](50) NOT NULL,
	[Gio_BD] [time](7) NOT NULL,
	[Gio_KT] [time](7) NOT NULL,
	[Dia_Diem] [nvarchar](50) NOT NULL,
	[Quan_Ly_ID] [int] IDENTITY(1,1) NOT NULL,
	[Quyet_Toan_ID] [int] NOT NULL,
	[Chot_Tiec_ID] [int] NOT NULL,
 CONSTRAINT [PK_Tien_Trinh_Bua_Tiec] PRIMARY KEY CLUSTERED 
(
	[Bao_Cao_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tong_Ket_TTBT]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tong_Ket_TTBT](
	[Ket_Qua] [nvarchar](50) NOT NULL,
	[So_Luong] [int] NOT NULL,
	[Kinh_Nghiem] [nvarchar](50) NOT NULL,
	[Ghi_Chu] [nvarchar](50) NULL,
	[Bao_Cao_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trung_Tam]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trung_Tam](
	[TrungTam_ID] [int] NOT NULL,
	[Ten_TrungTam] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [int] NOT NULL,
	[Nguoi_DD] [nvarchar](50) NOT NULL,
	[Chuc_vu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Trung_Tam] PRIMARY KEY CLUSTERED 
(
	[TrungTam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_Dich_Vu]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_Dich_Vu](
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[DV_Tinh] [decimal](18, 0) NULL,
	[TG_Cung_Cap] [date] NOT NULL,
	[Dia_Diem] [nvarchar](50) NOT NULL,
	[Pham_Vi] [nvarchar](50) NOT NULL,
	[DichVu_Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_Uu_Dai]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_Uu_Dai](
	[Mo_Ta] [nvarchar](50) NOT NULL,
	[Pham_Vi] [nvarchar](50) NOT NULL,
	[So_Luong] [int] NOT NULL,
	[SDT_Tu_Van] [int] NOT NULL,
	[Hinh_Thuc] [nvarchar](50) NOT NULL,
	[UuDai_ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uu_Dai]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uu_Dai](
	[UuDai_ID] [int] NOT NULL,
	[Ten_UuDai] [nvarchar](50) NOT NULL,
	[Thoi_Han] [date] NOT NULL,
 CONSTRAINT [PK_Uu_Dai] PRIMARY KEY CLUSTERED 
(
	[UuDai_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xu_Ly_Nguyen_Nhan]    Script Date: 27/05/2024 5:42:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xu_Ly_Nguyen_Nhan](
	[TG_Xu_Ly] [time](7) NOT NULL,
	[Ngay_Xu_Ly] [time](7) NOT NULL,
	[Dia_Diem] [nvarchar](50) NOT NULL,
	[Nhat_Ki_SC_ID] [int] NOT NULL,
	[Nguyen_Nhan_ID] [int] NOT NULL,
	[Su_Co_ID] [int] NOT NULL,
	[Xu_Ly_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Chot_Tiec_Khach_Hang] FOREIGN KEY([Khach_ID])
REFERENCES [dbo].[Khach_Hang] ([Khach_ID])
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec] CHECK CONSTRAINT [FK_Ban_Chot_Tiec_Khach_Hang]
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Chot_Tiec_NV_Sales] FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[NV_Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec] CHECK CONSTRAINT [FK_Ban_Chot_Tiec_NV_Sales]
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Chot_Tiec_Quan_Ly] FOREIGN KEY([Quan_Ly_ID])
REFERENCES [dbo].[Quan_Ly] ([Quan_Ly_ID])
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec] CHECK CONSTRAINT [FK_Ban_Chot_Tiec_Quan_Ly]
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Chot_Tiec_Trung_Tam] FOREIGN KEY([TrungTam_ID])
REFERENCES [dbo].[Trung_Tam] ([TrungTam_ID])
GO
ALTER TABLE [dbo].[Ban_Chot_Tiec] CHECK CONSTRAINT [FK_Ban_Chot_Tiec_Trung_Tam]
GO
ALTER TABLE [dbo].[Ban_Giao]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Giao_Lich_Cong_Viec] FOREIGN KEY([Lich_CV_ID])
REFERENCES [dbo].[Lich_Cong_Viec] ([Lich_CV_ID])
GO
ALTER TABLE [dbo].[Ban_Giao] CHECK CONSTRAINT [FK_Ban_Giao_Lich_Cong_Viec]
GO
ALTER TABLE [dbo].[Ban_Giao]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Giao_Quan_Ly] FOREIGN KEY([Quan_Ly_ID])
REFERENCES [dbo].[Quan_Ly] ([Quan_Ly_ID])
GO
ALTER TABLE [dbo].[Ban_Giao] CHECK CONSTRAINT [FK_Ban_Giao_Quan_Ly]
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Quyet_Toan_Hop_Dong] FOREIGN KEY([Hop_Dong_ID])
REFERENCES [dbo].[Hop_Dong] ([Hop_Dong_ID])
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan] CHECK CONSTRAINT [FK_Ban_Quyet_Toan_Hop_Dong]
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Quyet_Toan_Khach_Hang] FOREIGN KEY([Khach_ID])
REFERENCES [dbo].[Khach_Hang] ([Khach_ID])
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan] CHECK CONSTRAINT [FK_Ban_Quyet_Toan_Khach_Hang]
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Quyet_Toan_NV_KeToan] FOREIGN KEY([KeToanID])
REFERENCES [dbo].[NV_KeToan] ([KeToanID])
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan] CHECK CONSTRAINT [FK_Ban_Quyet_Toan_NV_KeToan]
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan]  WITH CHECK ADD  CONSTRAINT [FK_Ban_Quyet_Toan_Trung_Tam] FOREIGN KEY([TrungTam_ID])
REFERENCES [dbo].[Trung_Tam] ([TrungTam_ID])
GO
ALTER TABLE [dbo].[Ban_Quyet_Toan] CHECK CONSTRAINT [FK_Ban_Quyet_Toan_Trung_Tam]
GO
ALTER TABLE [dbo].[Bien_Ban_Giai_Quyet_Su_Co]  WITH CHECK ADD  CONSTRAINT [FK_Bien_Ban_Giai_Quyet_Su_Co_Nhat_Ki_Su_Co] FOREIGN KEY([Nhat_Ki_SC_ID])
REFERENCES [dbo].[Nhat_Ki_Su_Co] ([Nhat_Ki_SC_ID])
GO
ALTER TABLE [dbo].[Bien_Ban_Giai_Quyet_Su_Co] CHECK CONSTRAINT [FK_Bien_Ban_Giai_Quyet_Su_Co_Nhat_Ki_Su_Co]
GO
ALTER TABLE [dbo].[Bien_Ban_Giai_Quyet_Su_Co_Chi_Tiet]  WITH CHECK ADD  CONSTRAINT [FK_Bien_Ban_Giai_Quyet_Su_Co_Chi_Tiet_Bien_Ban_Giai_Quyet_Su_Co] FOREIGN KEY([Su_Co_ID])
REFERENCES [dbo].[Bien_Ban_Giai_Quyet_Su_Co] ([Su_Co_ID])
GO
ALTER TABLE [dbo].[Bien_Ban_Giai_Quyet_Su_Co_Chi_Tiet] CHECK CONSTRAINT [FK_Bien_Ban_Giai_Quyet_Su_Co_Chi_Tiet_Bien_Ban_Giai_Quyet_Su_Co]
GO
ALTER TABLE [dbo].[Bien_Ban_Nguyen_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_Bien_Ban_Nguyen_Nhan_Bo_Phan] FOREIGN KEY([Bo_Phan_ID])
REFERENCES [dbo].[Bo_Phan] ([Bo_Phan_ID])
GO
ALTER TABLE [dbo].[Bien_Ban_Nguyen_Nhan] CHECK CONSTRAINT [FK_Bien_Ban_Nguyen_Nhan_Bo_Phan]
GO
ALTER TABLE [dbo].[Chu_Ki]  WITH CHECK ADD  CONSTRAINT [FK_Chu_Ki_Hop_Dong] FOREIGN KEY([Hop_Dong_ID])
REFERENCES [dbo].[Hop_Dong] ([Hop_Dong_ID])
GO
ALTER TABLE [dbo].[Chu_Ki] CHECK CONSTRAINT [FK_Chu_Ki_Hop_Dong]
GO
ALTER TABLE [dbo].[Chu_Ki]  WITH CHECK ADD  CONSTRAINT [FK_Chu_Ki_Khach_Hang] FOREIGN KEY([Khach_ID])
REFERENCES [dbo].[Khach_Hang] ([Khach_ID])
GO
ALTER TABLE [dbo].[Chu_Ki] CHECK CONSTRAINT [FK_Chu_Ki_Khach_Hang]
GO
ALTER TABLE [dbo].[Chu_Ki]  WITH CHECK ADD  CONSTRAINT [FK_Chu_Ki_Trung_Tam] FOREIGN KEY([TrungTam_ID])
REFERENCES [dbo].[Trung_Tam] ([TrungTam_ID])
GO
ALTER TABLE [dbo].[Chu_Ki] CHECK CONSTRAINT [FK_Chu_Ki_Trung_Tam]
GO
ALTER TABLE [dbo].[Co_So_Vat_Chat]  WITH CHECK ADD  CONSTRAINT [FK_Co_So_Vat_Chat_NV_Ki_Thuat] FOREIGN KEY([NV_Ki_Thuat_ID])
REFERENCES [dbo].[NV_Ki_Thuat] ([NV_Ki_Thuat_ID])
GO
ALTER TABLE [dbo].[Co_So_Vat_Chat] CHECK CONSTRAINT [FK_Co_So_Vat_Chat_NV_Ki_Thuat]
GO
ALTER TABLE [dbo].[Cong_Viec_Chi_Tiet]  WITH CHECK ADD  CONSTRAINT [FK_Cong_Viec_Chi_Tiet_Lich_Cong_Viec] FOREIGN KEY([Lich_CV_ID])
REFERENCES [dbo].[Lich_Cong_Viec] ([Lich_CV_ID])
GO
ALTER TABLE [dbo].[Cong_Viec_Chi_Tiet] CHECK CONSTRAINT [FK_Cong_Viec_Chi_Tiet_Lich_Cong_Viec]
GO
ALTER TABLE [dbo].[Danh_Sach_Thuc_Don]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Sach_Thuc_Don_Tien_Trinh_Bua_Tiec] FOREIGN KEY([Bao_Cao_ID])
REFERENCES [dbo].[Tien_Trinh_Bua_Tiec] ([Bao_Cao_ID])
GO
ALTER TABLE [dbo].[Danh_Sach_Thuc_Don] CHECK CONSTRAINT [FK_Danh_Sach_Thuc_Don_Tien_Trinh_Bua_Tiec]
GO
ALTER TABLE [dbo].[Dat_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Dat_Tiec_Dich_Vu] FOREIGN KEY([DichVu_Id])
REFERENCES [dbo].[Dich_Vu] ([DichVu_Id])
GO
ALTER TABLE [dbo].[Dat_Tiec] CHECK CONSTRAINT [FK_Dat_Tiec_Dich_Vu]
GO
ALTER TABLE [dbo].[Dat_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Dat_Tiec_Khach_Hang] FOREIGN KEY([Khach_ID])
REFERENCES [dbo].[Khach_Hang] ([Khach_ID])
GO
ALTER TABLE [dbo].[Dat_Tiec] CHECK CONSTRAINT [FK_Dat_Tiec_Khach_Hang]
GO
ALTER TABLE [dbo].[Dat_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Dat_Tiec_Uu_Dai] FOREIGN KEY([UuDai_ID])
REFERENCES [dbo].[Uu_Dai] ([UuDai_ID])
GO
ALTER TABLE [dbo].[Dat_Tiec] CHECK CONSTRAINT [FK_Dat_Tiec_Uu_Dai]
GO
ALTER TABLE [dbo].[Dieu_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Dieu_Tra_Bien_Ban_Nguyen_Nhan] FOREIGN KEY([Nguyen_Nhan_ID])
REFERENCES [dbo].[Bien_Ban_Nguyen_Nhan] ([Nguyen_Nhan_ID])
GO
ALTER TABLE [dbo].[Dieu_Tra] CHECK CONSTRAINT [FK_Dieu_Tra_Bien_Ban_Nguyen_Nhan]
GO
ALTER TABLE [dbo].[Dieu_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Dieu_Tra_Bo_Phan] FOREIGN KEY([Bo_Phan_ID])
REFERENCES [dbo].[Bo_Phan] ([Bo_Phan_ID])
GO
ALTER TABLE [dbo].[Dieu_Tra] CHECK CONSTRAINT [FK_Dieu_Tra_Bo_Phan]
GO
ALTER TABLE [dbo].[Dieu_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Dieu_Tra_Nhan_Vien] FOREIGN KEY([Nhan_Vien_ID])
REFERENCES [dbo].[Nhan_Vien] ([Nhan_Vien_ID])
GO
ALTER TABLE [dbo].[Dieu_Tra] CHECK CONSTRAINT [FK_Dieu_Tra_Nhan_Vien]
GO
ALTER TABLE [dbo].[Dieu_Tra]  WITH CHECK ADD  CONSTRAINT [FK_Dieu_Tra_Nhat_Ki_Su_Co] FOREIGN KEY([Nhat_Ki_SC_ID])
REFERENCES [dbo].[Nhat_Ki_Su_Co] ([Nhat_Ki_SC_ID])
GO
ALTER TABLE [dbo].[Dieu_Tra] CHECK CONSTRAINT [FK_Dieu_Tra_Nhat_Ki_Su_Co]
GO
ALTER TABLE [dbo].[Don_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_Don_Nhap_Ban_Thu_Chi] FOREIGN KEY([Thu_Chi_ID])
REFERENCES [dbo].[Ban_Thu_Chi] ([Thu_Chi_ID])
GO
ALTER TABLE [dbo].[Don_Nhap] CHECK CONSTRAINT [FK_Don_Nhap_Ban_Thu_Chi]
GO
ALTER TABLE [dbo].[Don_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_Don_Nhap_Nha_Cung_Cap] FOREIGN KEY([Nha_Cung_Cap_ID])
REFERENCES [dbo].[Nha_Cung_Cap] ([Nha_Cung_Cap_ID])
GO
ALTER TABLE [dbo].[Don_Nhap] CHECK CONSTRAINT [FK_Don_Nhap_Nha_Cung_Cap]
GO
ALTER TABLE [dbo].[Hang_Hoa]  WITH CHECK ADD  CONSTRAINT [FK_Hang_Hoa_Nha_Cung_Cap] FOREIGN KEY([Nha_Cung_Cap_ID])
REFERENCES [dbo].[Nha_Cung_Cap] ([Nha_Cung_Cap_ID])
GO
ALTER TABLE [dbo].[Hang_Hoa] CHECK CONSTRAINT [FK_Hang_Hoa_Nha_Cung_Cap]
GO
ALTER TABLE [dbo].[Hop_Dong]  WITH CHECK ADD  CONSTRAINT [FK_Hop_Dong_Dich_Vu] FOREIGN KEY([DichVu_Id])
REFERENCES [dbo].[Dich_Vu] ([DichVu_Id])
GO
ALTER TABLE [dbo].[Hop_Dong] CHECK CONSTRAINT [FK_Hop_Dong_Dich_Vu]
GO
ALTER TABLE [dbo].[Hop_Dong]  WITH CHECK ADD  CONSTRAINT [FK_Hop_Dong_Khach_Hang] FOREIGN KEY([Khach_ID])
REFERENCES [dbo].[Khach_Hang] ([Khach_ID])
GO
ALTER TABLE [dbo].[Hop_Dong] CHECK CONSTRAINT [FK_Hop_Dong_Khach_Hang]
GO
ALTER TABLE [dbo].[Hop_Dong]  WITH CHECK ADD  CONSTRAINT [FK_Hop_Dong_Trung_Tam1] FOREIGN KEY([TrungTam_ID])
REFERENCES [dbo].[Trung_Tam] ([TrungTam_ID])
GO
ALTER TABLE [dbo].[Hop_Dong] CHECK CONSTRAINT [FK_Hop_Dong_Trung_Tam1]
GO
ALTER TABLE [dbo].[Hop_Dong]  WITH CHECK ADD  CONSTRAINT [FK_Hop_Dong_Uu_Dai] FOREIGN KEY([UuDai_ID])
REFERENCES [dbo].[Uu_Dai] ([UuDai_ID])
GO
ALTER TABLE [dbo].[Hop_Dong] CHECK CONSTRAINT [FK_Hop_Dong_Uu_Dai]
GO
ALTER TABLE [dbo].[Khach_Hang]  WITH CHECK ADD  CONSTRAINT [FK_Khach_Hang_NV_Sales] FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[NV_Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Khach_Hang] CHECK CONSTRAINT [FK_Khach_Hang_NV_Sales]
GO
ALTER TABLE [dbo].[Khach_Moi]  WITH CHECK ADD  CONSTRAINT [FK_Khach_Moi_Ban_Chot_Tiec] FOREIGN KEY([Chot_Tiec_ID])
REFERENCES [dbo].[Ban_Chot_Tiec] ([Chot_Tiec_ID])
GO
ALTER TABLE [dbo].[Khach_Moi] CHECK CONSTRAINT [FK_Khach_Moi_Ban_Chot_Tiec]
GO
ALTER TABLE [dbo].[Kho_Luu_Tru]  WITH CHECK ADD  CONSTRAINT [FK_Kho_Luu_Tru_NV_KeToan] FOREIGN KEY([KeToanID])
REFERENCES [dbo].[NV_KeToan] ([KeToanID])
GO
ALTER TABLE [dbo].[Kho_Luu_Tru] CHECK CONSTRAINT [FK_Kho_Luu_Tru_NV_KeToan]
GO
ALTER TABLE [dbo].[Lich_Cong_Viec]  WITH CHECK ADD  CONSTRAINT [FK_Lich_Cong_Viec_NV_Sales] FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[NV_Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Lich_Cong_Viec] CHECK CONSTRAINT [FK_Lich_Cong_Viec_NV_Sales]
GO
ALTER TABLE [dbo].[Lich_Cong_Viec]  WITH CHECK ADD  CONSTRAINT [FK_Lich_Cong_Viec_Quan_Ly] FOREIGN KEY([Quan_Ly_ID])
REFERENCES [dbo].[Quan_Ly] ([Quan_Ly_ID])
GO
ALTER TABLE [dbo].[Lich_Cong_Viec] CHECK CONSTRAINT [FK_Lich_Cong_Viec_Quan_Ly]
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK_Luong_Nhan_Vien1] FOREIGN KEY([Nhan_Vien_ID])
REFERENCES [dbo].[Nhan_Vien] ([Nhan_Vien_ID])
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK_Luong_Nhan_Vien1]
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NV_KeToan] FOREIGN KEY([KeToanID])
REFERENCES [dbo].[NV_KeToan] ([KeToanID])
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK_Luong_NV_KeToan]
GO
ALTER TABLE [dbo].[ND_Hop_Dong]  WITH CHECK ADD  CONSTRAINT [FK_ND_Hop_Dong_Doi_Tuong_HD] FOREIGN KEY([DoiTuong_ID])
REFERENCES [dbo].[Doi_Tuong_HD] ([DoiTuong_ID])
GO
ALTER TABLE [dbo].[ND_Hop_Dong] CHECK CONSTRAINT [FK_ND_Hop_Dong_Doi_Tuong_HD]
GO
ALTER TABLE [dbo].[ND_Hop_Dong]  WITH CHECK ADD  CONSTRAINT [FK_ND_Hop_Dong_Gia_Tri_HD] FOREIGN KEY([GiaTriHD_ID])
REFERENCES [dbo].[Gia_Tri_HD] ([GiaTriHD_ID])
GO
ALTER TABLE [dbo].[ND_Hop_Dong] CHECK CONSTRAINT [FK_ND_Hop_Dong_Gia_Tri_HD]
GO
ALTER TABLE [dbo].[ND_Hop_Dong]  WITH CHECK ADD  CONSTRAINT [FK_ND_Hop_Dong_Hop_Dong] FOREIGN KEY([Hop_Dong_ID])
REFERENCES [dbo].[Hop_Dong] ([Hop_Dong_ID])
GO
ALTER TABLE [dbo].[ND_Hop_Dong] CHECK CONSTRAINT [FK_ND_Hop_Dong_Hop_Dong]
GO
ALTER TABLE [dbo].[Nguyen_Lieu]  WITH CHECK ADD  CONSTRAINT [FK_Nguyen_Lieu_Kho_Luu_Tru] FOREIGN KEY([Kho_ID])
REFERENCES [dbo].[Kho_Luu_Tru] ([Kho_ID])
GO
ALTER TABLE [dbo].[Nguyen_Lieu] CHECK CONSTRAINT [FK_Nguyen_Lieu_Kho_Luu_Tru]
GO
ALTER TABLE [dbo].[Nguyen_Lieu]  WITH CHECK ADD  CONSTRAINT [FK_Nguyen_Lieu_Nha_Cung_Cap] FOREIGN KEY([Nha_Cung_Cap_ID])
REFERENCES [dbo].[Nha_Cung_Cap] ([Nha_Cung_Cap_ID])
GO
ALTER TABLE [dbo].[Nguyen_Lieu] CHECK CONSTRAINT [FK_Nguyen_Lieu_Nha_Cung_Cap]
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Nhan_Vien_Bo_Phan] FOREIGN KEY([Bo_Phan_ID])
REFERENCES [dbo].[Bo_Phan] ([Bo_Phan_ID])
GO
ALTER TABLE [dbo].[Nhan_Vien] CHECK CONSTRAINT [FK_Nhan_Vien_Bo_Phan]
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Nhan_Vien_Co_So_Vat_Chat] FOREIGN KEY([CSVC_ID])
REFERENCES [dbo].[Co_So_Vat_Chat] ([CSVC_ID])
GO
ALTER TABLE [dbo].[Nhan_Vien] CHECK CONSTRAINT [FK_Nhan_Vien_Co_So_Vat_Chat]
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Nhan_Vien_Quan_Ly] FOREIGN KEY([Quan_Ly_ID])
REFERENCES [dbo].[Quan_Ly] ([Quan_Ly_ID])
GO
ALTER TABLE [dbo].[Nhan_Vien] CHECK CONSTRAINT [FK_Nhan_Vien_Quan_Ly]
GO
ALTER TABLE [dbo].[Nhat_Ki_Su_Co]  WITH CHECK ADD  CONSTRAINT [FK_Nhat_Ki_Su_Co_Bo_Phan] FOREIGN KEY([Bo_Phan_ID])
REFERENCES [dbo].[Bo_Phan] ([Bo_Phan_ID])
GO
ALTER TABLE [dbo].[Nhat_Ki_Su_Co] CHECK CONSTRAINT [FK_Nhat_Ki_Su_Co_Bo_Phan]
GO
ALTER TABLE [dbo].[Nhat_Ki_Su_Co_Chi_Tiet]  WITH CHECK ADD  CONSTRAINT [FK_Nhat_Ki_Su_Co_Chi_Tiet_Nhat_Ki_Su_Co] FOREIGN KEY([Nhat_Ki_SC_ID])
REFERENCES [dbo].[Nhat_Ki_Su_Co] ([Nhat_Ki_SC_ID])
GO
ALTER TABLE [dbo].[Nhat_Ki_Su_Co_Chi_Tiet] CHECK CONSTRAINT [FK_Nhat_Ki_Su_Co_Chi_Tiet_Nhat_Ki_Su_Co]
GO
ALTER TABLE [dbo].[Thanh_Toan]  WITH CHECK ADD  CONSTRAINT [FK_Thanh_Toan_Ban_Quyet_Toan] FOREIGN KEY([Quyet_Toan_ID])
REFERENCES [dbo].[Ban_Quyet_Toan] ([Quyet_Toan_ID])
GO
ALTER TABLE [dbo].[Thanh_Toan] CHECK CONSTRAINT [FK_Thanh_Toan_Ban_Quyet_Toan]
GO
ALTER TABLE [dbo].[Thanh_Toan]  WITH CHECK ADD  CONSTRAINT [FK_Thanh_Toan_Khach_Hang] FOREIGN KEY([Khach_ID])
REFERENCES [dbo].[Khach_Hang] ([Khach_ID])
GO
ALTER TABLE [dbo].[Thanh_Toan] CHECK CONSTRAINT [FK_Thanh_Toan_Khach_Hang]
GO
ALTER TABLE [dbo].[Thanh_Toan]  WITH CHECK ADD  CONSTRAINT [FK_Thanh_Toan_NV_Sales] FOREIGN KEY([Sales_ID])
REFERENCES [dbo].[NV_Sales] ([Sales_ID])
GO
ALTER TABLE [dbo].[Thanh_Toan] CHECK CONSTRAINT [FK_Thanh_Toan_NV_Sales]
GO
ALTER TABLE [dbo].[Tien_Trinh_Bua_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Tien_Trinh_Bua_Tiec_Ban_Chot_Tiec] FOREIGN KEY([Chot_Tiec_ID])
REFERENCES [dbo].[Ban_Chot_Tiec] ([Chot_Tiec_ID])
GO
ALTER TABLE [dbo].[Tien_Trinh_Bua_Tiec] CHECK CONSTRAINT [FK_Tien_Trinh_Bua_Tiec_Ban_Chot_Tiec]
GO
ALTER TABLE [dbo].[Tien_Trinh_Bua_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Tien_Trinh_Bua_Tiec_Ban_Quyet_Toan] FOREIGN KEY([Quyet_Toan_ID])
REFERENCES [dbo].[Ban_Quyet_Toan] ([Quyet_Toan_ID])
GO
ALTER TABLE [dbo].[Tien_Trinh_Bua_Tiec] CHECK CONSTRAINT [FK_Tien_Trinh_Bua_Tiec_Ban_Quyet_Toan]
GO
ALTER TABLE [dbo].[Tien_Trinh_Bua_Tiec]  WITH CHECK ADD  CONSTRAINT [FK_Tien_Trinh_Bua_Tiec_Quan_Ly] FOREIGN KEY([Quan_Ly_ID])
REFERENCES [dbo].[Quan_Ly] ([Quan_Ly_ID])
GO
ALTER TABLE [dbo].[Tien_Trinh_Bua_Tiec] CHECK CONSTRAINT [FK_Tien_Trinh_Bua_Tiec_Quan_Ly]
GO
ALTER TABLE [dbo].[Tong_Ket_TTBT]  WITH CHECK ADD  CONSTRAINT [FK_Tong_Ket_TTBT_Tien_Trinh_Bua_Tiec] FOREIGN KEY([Bao_Cao_ID])
REFERENCES [dbo].[Tien_Trinh_Bua_Tiec] ([Bao_Cao_ID])
GO
ALTER TABLE [dbo].[Tong_Ket_TTBT] CHECK CONSTRAINT [FK_Tong_Ket_TTBT_Tien_Trinh_Bua_Tiec]
GO
ALTER TABLE [dbo].[TT_Dich_Vu]  WITH CHECK ADD  CONSTRAINT [FK_TT_Dich_Vu_Dich_Vu] FOREIGN KEY([DichVu_Id])
REFERENCES [dbo].[Dich_Vu] ([DichVu_Id])
GO
ALTER TABLE [dbo].[TT_Dich_Vu] CHECK CONSTRAINT [FK_TT_Dich_Vu_Dich_Vu]
GO
ALTER TABLE [dbo].[TT_Uu_Dai]  WITH CHECK ADD  CONSTRAINT [FK_TT_Uu_Dai_Uu_Dai] FOREIGN KEY([UuDai_ID])
REFERENCES [dbo].[Uu_Dai] ([UuDai_ID])
GO
ALTER TABLE [dbo].[TT_Uu_Dai] CHECK CONSTRAINT [FK_TT_Uu_Dai_Uu_Dai]
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Bien_Ban_Giai_Quyet_Su_Co] FOREIGN KEY([Su_Co_ID])
REFERENCES [dbo].[Bien_Ban_Giai_Quyet_Su_Co] ([Su_Co_ID])
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan] CHECK CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Bien_Ban_Giai_Quyet_Su_Co]
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Bien_Ban_Nguyen_Nhan] FOREIGN KEY([Nguyen_Nhan_ID])
REFERENCES [dbo].[Bien_Ban_Nguyen_Nhan] ([Nguyen_Nhan_ID])
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan] CHECK CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Bien_Ban_Nguyen_Nhan]
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Nhat_Ki_Su_Co] FOREIGN KEY([Nhat_Ki_SC_ID])
REFERENCES [dbo].[Nhat_Ki_Su_Co] ([Nhat_Ki_SC_ID])
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan] CHECK CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Nhat_Ki_Su_Co]
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Phuong_Thuc_Xu_Ly] FOREIGN KEY([Xu_Ly_ID])
REFERENCES [dbo].[Phuong_Thuc_Xu_Ly] ([Xu_Ly_ID])
GO
ALTER TABLE [dbo].[Xu_Ly_Nguyen_Nhan] CHECK CONSTRAINT [FK_Xu_Ly_Nguyen_Nhan_Phuong_Thuc_Xu_Ly]
GO
