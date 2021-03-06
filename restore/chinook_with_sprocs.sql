USE [master]
GO
/****** Object:  Database [Chinook]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE DATABASE [Chinook]
 CONTAINMENT = NONE
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Chinook] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Chinook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Chinook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Chinook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Chinook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Chinook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Chinook] SET ARITHABORT OFF 
GO
ALTER DATABASE [Chinook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Chinook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Chinook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Chinook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Chinook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Chinook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Chinook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Chinook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Chinook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Chinook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Chinook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Chinook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Chinook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Chinook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Chinook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Chinook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Chinook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Chinook] SET RECOVERY FULL 
GO
ALTER DATABASE [Chinook] SET  MULTI_USER 
GO
ALTER DATABASE [Chinook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Chinook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Chinook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Chinook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Chinook] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Chinook', N'ON'
GO
ALTER DATABASE [Chinook] SET QUERY_STORE = OFF
GO
USE [Chinook]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](160) NOT NULL,
	[ArtistId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Company] [nvarchar](80) NULL,
	[Address] [nvarchar](70) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[Email] [nvarchar](60) NOT NULL,
	[SupportRepId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[ReportsTo] [int] NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](70) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[Email] [nvarchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[BillingAddress] [nvarchar](70) NULL,
	[BillingCity] [nvarchar](40) NULL,
	[BillingState] [nvarchar](40) NULL,
	[BillingCountry] [nvarchar](40) NULL,
	[BillingPostalCode] [nvarchar](10) NULL,
	[Total] [numeric](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceLine](
	[InvoiceLineId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[TrackId] [int] NOT NULL,
	[UnitPrice] [numeric](10, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceLineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaType](
	[MediaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[MediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[PlaylistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlaylistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistTrack](
	[PlaylistId] [int] NOT NULL,
	[TrackId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PlaylistId] ASC,
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Track]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[TrackId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[AlbumId] [int] NULL,
	[MediaTypeId] [int] NOT NULL,
	[GenreId] [int] NULL,
	[Composer] [nvarchar](220) NULL,
	[Milliseconds] [int] NOT NULL,
	[Bytes] [int] NULL,
	[UnitPrice] [numeric](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Artist_Album]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Artist_Album] ON [dbo].[Album]
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_ProductItem]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_ProductItem] ON [dbo].[Album]
(
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Artist]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_Artist] ON [dbo].[Artist]
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Employee_Customer]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Employee_Customer] ON [dbo].[Customer]
(
	[SupportRepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Customer]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_Customer] ON [dbo].[Customer]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Employee_ReportsTo]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Employee_ReportsTo] ON [dbo].[Employee]
(
	[ReportsTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Employee]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_Employee] ON [dbo].[Employee]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Genre]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_Genre] ON [dbo].[Genre]
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Customer_Invoice]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Customer_Invoice] ON [dbo].[Invoice]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Invoice]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_Invoice] ON [dbo].[Invoice]
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Invoice_InvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Invoice_InvoiceLine] ON [dbo].[InvoiceLine]
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_ProductItem_InvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_ProductItem_InvoiceLine] ON [dbo].[InvoiceLine]
(
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_InvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_InvoiceLine] ON [dbo].[InvoiceLine]
(
	[InvoiceLineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_MediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_MediaType] ON [dbo].[MediaType]
(
	[MediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Playlist]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_Playlist] ON [dbo].[Playlist]
(
	[PlaylistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Playlist_PlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Playlist_PlaylistTrack] ON [dbo].[PlaylistTrack]
(
	[PlaylistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Track_PlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Track_PlaylistTrack] ON [dbo].[PlaylistTrack]
(
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_PlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_PlaylistTrack] ON [dbo].[PlaylistTrack]
(
	[PlaylistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Album_Track]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Album_Track] ON [dbo].[Track]
(
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_Genre_Track]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_Genre_Track] ON [dbo].[Track]
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IFK_MediaType_Track]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IFK_MediaType_Track] ON [dbo].[Track]
(
	[MediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IPK_Track]    Script Date: 5/28/2020 8:07:53 AM ******/
CREATE NONCLUSTERED INDEX [IPK_Track] ON [dbo].[Track]
(
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artist] ([ArtistId])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([SupportRepId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([ReportsTo])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD FOREIGN KEY([TrackId])
REFERENCES [dbo].[Track] ([TrackId])
GO
ALTER TABLE [dbo].[PlaylistTrack]  WITH CHECK ADD FOREIGN KEY([PlaylistId])
REFERENCES [dbo].[Playlist] ([PlaylistId])
GO
ALTER TABLE [dbo].[PlaylistTrack]  WITH CHECK ADD FOREIGN KEY([TrackId])
REFERENCES [dbo].[Track] ([TrackId])
GO
ALTER TABLE [dbo].[Track]  WITH CHECK ADD FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Album] ([AlbumId])
GO
ALTER TABLE [dbo].[Track]  WITH CHECK ADD FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([GenreId])
GO
ALTER TABLE [dbo].[Track]  WITH CHECK ADD FOREIGN KEY([MediaTypeId])
REFERENCES [dbo].[MediaType] ([MediaTypeId])
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckAlbum]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckAlbum]

(
    @AlbumId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Album]
        WHERE AlbumID = @AlbumId
    )
                THEN CAST(1 AS BIT)
            ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckArtist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckArtist]

(
    @ArtistId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Artist]
        WHERE ArtistId = @ArtistId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckCustomer]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckCustomer]

(
    @CustomerId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Customer]
        WHERE CustomerId = @CustomerId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckEmployee]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckEmployee]

(
    @EmployeeId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Employee]
        WHERE EmployeeId = @EmployeeId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckGenre]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckGenre]

(
    @GenreId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Genre]
        WHERE GenreId = @GenreId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckInvoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckInvoice]

(
    @InvoiceId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Invoice]
        WHERE InvoiceId = @InvoiceId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckInvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckInvoiceLine]

(
    @InvoiceLineId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [InvoiceLine]
        WHERE InvoiceLineId = @InvoiceLineId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckMediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckMediaType]

(
    @MediaTypeId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [MediaType]
        WHERE MediaTypeId = @MediaTypeId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckPlaylist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckPlaylist]

(
    @PlaylistId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Playlist]
        WHERE PlaylistId = @PlaylistId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_CheckTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_CheckTrack]

(
    @TrackId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Track]
        WHERE TrackId = @TrackId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteAlbum]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteAlbum]

(
	@AlbumId int
)

AS
DELETE FROM [Album]

WHERE
AlbumId = @AlbumId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteArtist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteArtist]

(
	@ArtistId int
)

AS
DELETE FROM [Artist]

WHERE
ArtistId = @ArtistId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteCustomer]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteCustomer]

(
	@CustomerId int
)

AS
DELETE FROM [Customer]

WHERE
CustomerId = @CustomerId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteEmployee]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteEmployee]

(
	@EmployeeId int
)

AS
DELETE FROM [Employee]

WHERE
EmployeeId = @EmployeeId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteGenre]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteGenre]

(
	@GenreId int
)

AS
DELETE FROM [Genre]

WHERE
GenreId = @GenreId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteInvoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteInvoice]

(
	@InvoiceId int
)

AS
DELETE FROM [Invoice]

WHERE
InvoiceId = @InvoiceId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteInvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteInvoiceLine]

(
	@InvoiceLineId int
)

AS
DELETE FROM [InvoiceLine]

WHERE
InvoiceLineId = @InvoiceLineId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteMediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteMediaType]

(
	@MediaTypeId int
)

AS
DELETE FROM [MediaType]

WHERE
MediaTypeId = @MediaTypeId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeletePlaylist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeletePlaylist]

(
	@PlaylistId int
)

AS
DELETE FROM [Playlist]

WHERE
PlaylistId = @PlaylistId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeletePlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeletePlaylistTrack]

(
	@PlaylistId int,
	@TrackId int
)

AS
DELETE FROM [PlaylistTrack]

WHERE
PlaylistId = @PlaylistId
AND
TrackId = @TrackId
GO
/****** Object:  StoredProcedure [dbo].[sproc_DeleteTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_DeleteTrack]

(
	@TrackId int
)

AS
DELETE FROM [Track]

WHERE
TrackId = @TrackId
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetAlbum]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetAlbum]
AS
SELECT CAST((SELECT * FROM Album FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetAlbumByArtist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetAlbumByArtist]

(
    @ArtistId int
)

AS
SELECT CAST((SELECT * FROM [Album] WHERE ArtistId = @ArtistId  FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetAlbumDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetAlbumDetails]

(
	@AlbumId int
)
AS
SELECT CAST((SELECT * FROM [Album] WHERE AlbumId = @AlbumId  FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetArtist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetArtist]
AS
SELECT CAST((SELECT * FROM [Artist] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetArtistDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetArtistDetails]

(
	@ArtistId int
)

AS
SELECT CAST((SELECT * FROM [Artist] WHERE ArtistId = @ArtistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetCustomer]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetCustomer]
AS
SELECT CAST((SELECT * FROM [Customer] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetCustomerBySupportRep]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetCustomerBySupportRep]

(
    @SupportRepId int
)

AS
SELECT CAST((SELECT * FROM [Customer] WHERE SupportRepId = @SupportRepId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetCustomerDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetCustomerDetails]

(
	@CustomerId int
)

AS
SELECT CAST((SELECT * FROM [Customer] WHERE CustomerId = @CustomerId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetEmployee]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetEmployee]
AS
SELECT CAST((SELECT * FROM [Employee] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetEmployeeDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetEmployeeDetails]

(
	@EmployeeId int
)

AS
SELECT CAST((SELECT * FROM [Employee] WHERE EmployeeId = @EmployeeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetEmployeeDirectReports]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetEmployeeDirectReports]

(
    @EmployeeId int
)

AS
SELECT CAST((SELECT * FROM [Employee] WHERE ReportsTo = @EmployeeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetEmployeeReportTo]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetEmployeeReportTo]

(
    @EmployeeId int
)

AS
SELECT CAST((SELECT * FROM [Employee] WHERE ReportsTo = (SELECT ReportsTo FROM dbo.Employee WHERE  EmployeeId = @EmployeeId) FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetGenre]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetGenre]
AS
SELECT CAST((SELECT * FROM [Genre] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetGenreDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetGenreDetails]

(
	@GenreId int
)

AS
SELECT CAST((SELECT * FROM [Genre] WHERE GenreId = @GenreId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoice]
AS
SELECT CAST((SELECT * FROM [Invoice] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceByCustomer]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceByCustomer]

(
    @CustomerId int
)

AS
SELECT CAST((SELECT * FROM [Invoice] WHERE CustomerId = @CustomerId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceByEmployee]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceByEmployee]

(
    @EmployeeId int
)

AS
SELECT CAST((SELECT  Invoice.*
FROM Customer INNER JOIN
Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE dbo.Customer.SupportRepId = @EmployeeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceDetails]

(
	@InvoiceId int
)

AS
SELECT CAST((SELECT * FROM [Invoice] WHERE InvoiceId = @InvoiceId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceLine]
AS
SELECT CAST((SELECT * FROM [InvoiceLine] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceLineByInvoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceLineByInvoice]

(
    @InvoiceId int
)

AS
SELECT CAST((SELECT * FROM [InvoiceLine] WHERE InvoiceId = @InvoiceId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceLineByTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceLineByTrack]

(
    @TrackId int
)

AS
SELECT CAST((SELECT * FROM [InvoiceLine] WHERE TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceLineDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceLineDetails]

(
	@InvoiceLineId int
)

AS
SELECT CAST((SELECT * FROM [InvoiceLine] WHERE InvoiceLineId = @InvoiceLineId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetMediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetMediaType]
AS
SELECT CAST((SELECT * FROM [MediaType] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetMediaTypeDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetMediaTypeDetails]

(
	@MediaTypeId int
)

AS
SELECT CAST((SELECT * FROM [MediaType] WHERE MediaTypeId = @MediaTypeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPlaylist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPlaylist]
AS
SELECT CAST((SELECT * FROM [Playlist] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPlaylistByTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPlaylistByTrack]

(
    @TrackId int
)

AS
SELECT CAST((SELECT Playlist.*
FROM            Playlist INNER JOIN
                PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
WHERE dbo.PlaylistTrack.TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPlaylistDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPlaylistDetails]

(
	@PlaylistId int
)

AS
SELECT CAST((SELECT * FROM [Playlist] WHERE PlaylistId = @PlaylistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPlaylistTrack]
AS
SELECT CAST((SELECT * FROM [PlaylistTrack] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPlaylistTrackDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPlaylistTrackDetails]

(
	@PlaylistId int,
	@TrackId int
)

AS
SELECT CAST((SELECT * FROM [PlaylistTrack]
WHERE
PlaylistId = @PlaylistId
AND
TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrack]
AS
SELECT CAST((SELECT * FROM [Track] FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrackByAlbum]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrackByAlbum]

(
    @AlbumId int
)

AS
SELECT CAST((SELECT * FROM [Track]
WHERE AlbumId = @AlbumId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrackByArtist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrackByArtist]
(
    @ArtistId int
)

AS
SELECT CAST((SELECT Track.*
FROM  Album INNER JOIN
        Track ON Album.AlbumId = Track.AlbumId
WHERE Album.ArtistId = @ArtistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrackByGenre]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrackByGenre]

(
    @GenreId int
)

AS
SELECT CAST((SELECT * FROM [Track] WHERE GenreId = @GenreId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrackByInvoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrackByInvoice]

(
    @InvoiceId int
)

AS
SELECT CAST((SELECT  Track.*
FROM InvoiceLine INNER JOIN
Track ON InvoiceLine.TrackId = Track.TrackId
WHERE dbo.InvoiceLine.InvoiceId = @InvoiceId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrackByMediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrackByMediaType]

(
    @MediaTypeId int
)

AS
SELECT CAST((SELECT * FROM [Track] WHERE MediaTypeId = @MediaTypeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrackByPlaylist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrackByPlaylist]

(
    @PlaylistId int
)

AS
SELECT CAST((SELECT Track.* FROM PlaylistTrack INNER JOIN Track ON PlaylistTrack.TrackId = Track.TrackId WHERE dbo.PlaylistTrack.PlaylistId = @PlaylistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetTrackDetails]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetTrackDetails]

(
	@TrackId int
)

AS
SELECT CAST((SELECT CAST((SELECT * FROM [Track]
WHERE
TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA) AS VARCHAR(MAX)) AS JSONDATA
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertAlbum]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertAlbum]
(
	@Title nvarchar (MAX),
	@ArtistId int,
	@AlbumId  int OUTPUT
)

AS
INSERT INTO [Album]
(
	Title,
	ArtistId

)
VALUES
(
	@Title,
	@ArtistId
)


SET @AlbumId= @@IDENTITY
 Return @AlbumId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertArtist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertArtist]
(
	@Name nvarchar (MAX),
	@ArtistId  int OUTPUT
)

AS
INSERT INTO [Artist]
(
	Name

)
VALUES
(
	@Name
)


SET @ArtistId= @@IDENTITY
 Return @ArtistId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertCustomer]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertCustomer]
(
	@FirstName nvarchar (MAX),
	@LastName nvarchar (MAX),
	@Company nvarchar (MAX),
	@Address nvarchar (MAX),
	@City nvarchar (MAX),
	@State nvarchar (MAX),
	@Country nvarchar (MAX),
	@PostalCode nvarchar (MAX),
	@Phone nvarchar (MAX),
	@Fax nvarchar (MAX),
	@Email nvarchar (MAX),
	@SupportRepId int,
	@CustomerId  int OUTPUT
)

AS
INSERT INTO [Customer]
(
	FirstName,
	LastName,
	Company,
	Address,
	City,
	State,
	Country,
	PostalCode,
	Phone,
	Fax,
	Email,
	SupportRepId

)
VALUES
(
	@FirstName,
	@LastName,
	@Company,
	@Address,
	@City,
	@State,
	@Country,
	@PostalCode,
	@Phone,
	@Fax,
	@Email,
	@SupportRepId
)


SET @CustomerId= @@IDENTITY
 Return @CustomerId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertEmployee]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertEmployee]
(
	@LastName nvarchar (MAX),
	@FirstName nvarchar (MAX),
	@Title nvarchar (MAX),
	@ReportsTo int,
	@BirthDate datetime,
	@HireDate datetime,
	@Address nvarchar (MAX),
	@City nvarchar (MAX),
	@State nvarchar (MAX),
	@Country nvarchar (MAX),
	@PostalCode nvarchar (MAX),
	@Phone nvarchar (MAX),
	@Fax nvarchar (MAX),
	@Email nvarchar (MAX),
	@EmployeeId  int OUTPUT
)

AS
INSERT INTO [Employee]
(
	LastName,
	FirstName,
	Title,
	ReportsTo,
	BirthDate,
	HireDate,
	Address,
	City,
	State,
	Country,
	PostalCode,
	Phone,
	Fax,
	Email

)
VALUES
(
	@LastName,
	@FirstName,
	@Title,
	@ReportsTo,
	@BirthDate,
	@HireDate,
	@Address,
	@City,
	@State,
	@Country,
	@PostalCode,
	@Phone,
	@Fax,
	@Email
)


SET @EmployeeId= @@IDENTITY
 Return @EmployeeId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertGenre]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertGenre]
(
	@Name nvarchar (MAX),
	@GenreId  int OUTPUT
)

AS
INSERT INTO [Genre]
(
	Name

)
VALUES
(
	@Name
)


SET @GenreId= @@IDENTITY
 Return @GenreId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertInvoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertInvoice]
(
	@CustomerId int,
	@InvoiceDate datetime,
	@BillingAddress nvarchar (MAX),
	@BillingCity nvarchar (MAX),
	@BillingState nvarchar (MAX),
	@BillingCountry nvarchar (MAX),
	@BillingPostalCode nvarchar (MAX),
	@Total money,
	@InvoiceId  int OUTPUT
)

AS
INSERT INTO [Invoice]
(
	CustomerId,
	InvoiceDate,
	BillingAddress,
	BillingCity,
	BillingState,
	BillingCountry,
	BillingPostalCode,
	Total

)
VALUES
(
	@CustomerId,
	@InvoiceDate,
	@BillingAddress,
	@BillingCity,
	@BillingState,
	@BillingCountry,
	@BillingPostalCode,
	@Total
)


SET @InvoiceId= @@IDENTITY
 Return @InvoiceId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertInvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertInvoiceLine]
(
	@InvoiceId int,
	@TrackId int,
	@UnitPrice money,
	@Quantity int,
	@InvoiceLineId  int OUTPUT
)

AS
INSERT INTO [InvoiceLine]
(
	InvoiceId,
	TrackId,
	UnitPrice,
	Quantity

)
VALUES
(
	@InvoiceId,
	@TrackId,
	@UnitPrice,
	@Quantity
)


SET @InvoiceLineId= @@IDENTITY
 Return @InvoiceLineId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertMediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertMediaType]
(
	@Name nvarchar (MAX),
	@MediaTypeId  int OUTPUT
)

AS
INSERT INTO [MediaType]
(
	Name

)
VALUES
(
	@Name
)


SET @MediaTypeId= @@IDENTITY
 Return @MediaTypeId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertPlaylist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertPlaylist]
(
	@Name nvarchar (MAX),
	@PlaylistId  int OUTPUT
)

AS
INSERT INTO [Playlist]
(
	Name

)
VALUES
(
	@Name
)


SET @PlaylistId= @@IDENTITY
 Return @PlaylistId
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertPlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertPlaylistTrack]
(
	@PlaylistId int,
	@TrackId int
)

AS
INSERT INTO [PlaylistTrack]
(
	PlaylistId,
	TrackId

)
VALUES
(
	@PlaylistId,
	@TrackId
)
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertTrack]
(
	@Name nvarchar (MAX),
	@AlbumId int,
	@MediaTypeId int,
	@GenreId int,
	@Composer nvarchar (MAX),
	@Milliseconds int,
	@Bytes int,
	@UnitPrice money,
	@TrackId  int OUTPUT
)

AS
INSERT INTO [Track]
(
	Name,
	AlbumId,
	MediaTypeId,
	GenreId,
	Composer,
	Milliseconds,
	Bytes,
	UnitPrice

)
VALUES
(
	@Name,
	@AlbumId,
	@MediaTypeId,
	@GenreId,
	@Composer,
	@Milliseconds,
	@Bytes,
	@UnitPrice
)


SET @TrackId= @@IDENTITY
 Return @TrackId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateAlbum]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateAlbum]
(
	@AlbumId int,
	@Title nvarchar (MAX),
	@ArtistId int
)

AS
UPDATE [Album]
SET
Title = @Title,
ArtistId = @ArtistId

WHERE
AlbumId = @AlbumId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateArtist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateArtist]
(
	@ArtistId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [Artist]
SET
Name = @Name

WHERE
ArtistId = @ArtistId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateCustomer]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateCustomer]
(
	@CustomerId int,
	@FirstName nvarchar (MAX),
	@LastName nvarchar (MAX),
	@Company nvarchar (MAX),
	@Address nvarchar (MAX),
	@City nvarchar (MAX),
	@State nvarchar (MAX),
	@Country nvarchar (MAX),
	@PostalCode nvarchar (MAX),
	@Phone nvarchar (MAX),
	@Fax nvarchar (MAX),
	@Email nvarchar (MAX),
	@SupportRepId int
)

AS
UPDATE [Customer]
SET
FirstName = @FirstName,
LastName = @LastName,
Company = @Company,
Address = @Address,
City = @City,
State = @State,
Country = @Country,
PostalCode = @PostalCode,
Phone = @Phone,
Fax = @Fax,
Email = @Email,
SupportRepId = @SupportRepId

WHERE
CustomerId = @CustomerId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateEmployee]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateEmployee]
(
	@EmployeeId int,
	@LastName nvarchar (MAX),
	@FirstName nvarchar (MAX),
	@Title nvarchar (MAX),
	@ReportsTo int,
	@BirthDate datetime,
	@HireDate datetime,
	@Address nvarchar (MAX),
	@City nvarchar (MAX),
	@State nvarchar (MAX),
	@Country nvarchar (MAX),
	@PostalCode nvarchar (MAX),
	@Phone nvarchar (MAX),
	@Fax nvarchar (MAX),
	@Email nvarchar (MAX)
)

AS
UPDATE [Employee]
SET
LastName = @LastName,
FirstName = @FirstName,
Title = @Title,
ReportsTo = @ReportsTo,
BirthDate = @BirthDate,
HireDate = @HireDate,
Address = @Address,
City = @City,
State = @State,
Country = @Country,
PostalCode = @PostalCode,
Phone = @Phone,
Fax = @Fax,
Email = @Email

WHERE
EmployeeId = @EmployeeId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateGenre]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateGenre]
(
	@GenreId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [Genre]
SET
Name = @Name

WHERE
GenreId = @GenreId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateInvoice]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateInvoice]
(
	@InvoiceId int,
	@CustomerId int,
	@InvoiceDate datetime,
	@BillingAddress nvarchar (MAX),
	@BillingCity nvarchar (MAX),
	@BillingState nvarchar (MAX),
	@BillingCountry nvarchar (MAX),
	@BillingPostalCode nvarchar (MAX),
	@Total money
)

AS
UPDATE [Invoice]
SET
CustomerId = @CustomerId,
InvoiceDate = @InvoiceDate,
BillingAddress = @BillingAddress,
BillingCity = @BillingCity,
BillingState = @BillingState,
BillingCountry = @BillingCountry,
BillingPostalCode = @BillingPostalCode,
Total = @Total

WHERE
InvoiceId = @InvoiceId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateInvoiceLine]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateInvoiceLine]
(
	@InvoiceLineId int,
	@InvoiceId int,
	@TrackId int,
	@UnitPrice money,
	@Quantity int
)

AS
UPDATE [InvoiceLine]
SET
InvoiceId = @InvoiceId,
TrackId = @TrackId,
UnitPrice = @UnitPrice,
Quantity = @Quantity

WHERE
InvoiceLineId = @InvoiceLineId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateMediaType]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateMediaType]
(
	@MediaTypeId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [MediaType]
SET
Name = @Name

WHERE
MediaTypeId = @MediaTypeId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdatePlaylist]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdatePlaylist]
(
	@PlaylistId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [Playlist]
SET
Name = @Name

WHERE
PlaylistId = @PlaylistId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdatePlaylistTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdatePlaylistTrack]
(
	@PlaylistId int,
	@TrackId int
)

AS
UPDATE [PlaylistTrack]
SET
PlaylistId = @PlaylistId,
TrackId = @TrackId

WHERE
PlaylistId = @PlaylistId
AND
TrackId = @TrackId
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateTrack]    Script Date: 5/28/2020 8:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateTrack]
(
	@TrackId int,
	@Name nvarchar (MAX),
	@AlbumId int,
	@MediaTypeId int,
	@GenreId int,
	@Composer nvarchar (MAX),
	@Milliseconds int,
	@Bytes int,
	@UnitPrice money
)

AS
UPDATE [Track]
SET
Name = @Name,
AlbumId = @AlbumId,
MediaTypeId = @MediaTypeId,
GenreId = @GenreId,
Composer = @Composer,
Milliseconds = @Milliseconds,
Bytes = @Bytes,
UnitPrice = @UnitPrice

WHERE
TrackId = @TrackId
GO
USE [master]
GO
ALTER DATABASE [Chinook] SET  READ_WRITE 
GO
