USE [hospital]

CREATE TABLE [dbo].[tbl_Hasta](
	[Hasta_no] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NOT NULL,
	[Soyadi] [varchar](50) NOT NULL,
	[Adres] [varchar](150) NOT NULL,
	[Ceptel] [varchar](11) NOT NULL,
	[Istel] [varchar](11) NULL,
	[Tckimlik_no] [varchar](11) NOT NULL,
	[Dogumyeri] [varchar](50) NOT NULL,
	[Dogumtarihi] [date] NOT NULL,
	[Cinsiyet] [varchar](5) NOT NULL,
	[Medenihal] [varchar](10) NOT NULL,
	[Meslek] [varchar](25) NOT NULL,
	[Oncekisoyad] [varchar](50) NULL,
	[Kayıttarihi] [date] NOT NULL,
	[Kangrubu] [varchar](6) NULL,
	[Poliklinik_no] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Hasta] PRIMARY KEY CLUSTERED 
(
	[Hasta_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]






CREATE TABLE [dbo].[tbl_Hastane](
	[Hastane_no] [int] IDENTITY(1,1) NOT NULL,
	[Hastane_adi] [varchar](200) NOT NULL,
	[Hastane_adres] [varchar](500) NOT NULL,
	[Hastane_tel] [varchar](11) NOT NULL,
 CONSTRAINT [PK_tbl_Hastane] PRIMARY KEY CLUSTERED 
(
	[Hastane_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]








CREATE TABLE [dbo].[tbl_Muayene](
	[Muayene_no] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NOT NULL,
	[Hasta_no] [int] NOT NULL,
	[Personel_no] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Muayene] PRIMARY KEY CLUSTERED 
(
	[Muayene_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]






CREATE TABLE [dbo].[tbl_Personel](
	[Personel_no] [int] IDENTITY(1,1) NOT NULL,
	[Sicil_no] [varchar](50) NOT NULL,
	[Adi] [varchar](50) NOT NULL,
	[Soyadi] [varchar](50) NOT NULL,
	[Adres] [varchar](150) NOT NULL,
	[Diploma_No] [varchar](50) NULL,
	[Cinsiyet] [varchar](5) NOT NULL,
	[Ceptel] [varchar](11) NOT NULL,
	[Email] [varchar](50) NULL,
	[Dogumtarihi] [date] NOT NULL,
	[Dogumyeri] [varchar](40) NOT NULL,
	[Unvan_no] [int] NOT NULL,
	[Poliklinik_no] [int] NOT NULL,
	[Hastane_no] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Personel] PRIMARY KEY CLUSTERED 
(
	[Personel_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]







CREATE TABLE [dbo].[tbl_Poliklinik](
	[Poliklinik_no] [int] IDENTITY(1,1) NOT NULL,
	[Poliklinik_adi] [varchar](75) NOT NULL,
	[Hastane_no] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Poliklinik] PRIMARY KEY CLUSTERED 
(
	[Poliklinik_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]









CREATE TABLE [dbo].[tbl_Randevu](
	[Randevu_no] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NOT NULL,
	[saat] [time](7) NOT NULL,
	[Hasta_no] [int] NOT NULL,
	[Personel_no] [int] NOT NULL,
	[Poliklinik_no] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Randevu] PRIMARY KEY CLUSTERED 
(
	[Randevu_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]









CREATE TABLE [dbo].[tbl_Recete](
	[Recete_no] [varchar](20) NOT NULL,
	[Tarih] [date] NOT NULL,
	[Personel_no] [int] NOT NULL,
	[Hasta_no] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Recete] PRIMARY KEY CLUSTERED 
(
	[Recete_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]







CREATE TABLE [dbo].[tbl_Teshis](
	[Teshis_no] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NOT NULL,
	[Teshis] [varchar](500) NULL,
	[Personel_no] [int] NOT NULL,
	[Muayene_no] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Teshis] PRIMARY KEY CLUSTERED 
(
	[Teshis_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]






CREATE TABLE [dbo].[tbl_Unvan](
	[Unvan_no] [int] IDENTITY(1,1) NOT NULL,
	[Unvanadi] [varchar](50) NOT NULL,
	[PersonelTuru] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Unvan] PRIMARY KEY CLUSTERED 
(
	[Unvan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
