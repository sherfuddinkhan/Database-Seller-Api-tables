USE [master]
GO
/****** Object:  Database [SellerPortalDB]    Script Date: 19-08-2026 18:55:45 ******/
CREATE DATABASE [SellerPortalDB]
GO
GO
ALTER DATABASE [SellerPortalDB] SET COMPATIBILITY_LEVEL = 170
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SellerPortalDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SellerPortalDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SellerPortalDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SellerPortalDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SellerPortalDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SellerPortalDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SellerPortalDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SellerPortalDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SellerPortalDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SellerPortalDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SellerPortalDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SellerPortalDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SellerPortalDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SellerPortalDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SellerPortalDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SellerPortalDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SellerPortalDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SellerPortalDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SellerPortalDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SellerPortalDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SellerPortalDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SellerPortalDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SellerPortalDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SellerPortalDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SellerPortalDB] SET  MULTI_USER 
GO
ALTER DATABASE [SellerPortalDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SellerPortalDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SellerPortalDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SellerPortalDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SellerPortalDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SellerPortalDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SellerPortalDB] SET OPTIMIZED_LOCKING = OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SellerPortalDB', N'ON'
GO
ALTER DATABASE [SellerPortalDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [SellerPortalDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SellerPortalDB]
GO
/****** Object:  Table [dbo].[AmazonAccounts]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonAccounts](
	[AmazonAccountId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[SellerCentralId] [nvarchar](100) NULL,
	[MerchantToken] [nvarchar](100) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[Region] [nvarchar](50) NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[ClientId] [nvarchar](250) NULL,
	[ClientSecret] [nvarchar](500) NULL,
	[AwsAccessKey] [nvarchar](250) NULL,
	[AwsSecretKey] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmazonAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonEasyShip]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonEasyShip](
	[EasyShipId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonOrderId] [nvarchar](100) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[SlotId] [nvarchar](100) NULL,
	[PackageStatus] [nvarchar](100) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EasyShipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonFeedDocuments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonFeedDocuments](
	[FeedDocumentId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonDocumentId] [nvarchar](100) NULL,
	[Url] [nvarchar](max) NULL,
	[CompressionAlgorithm] [nvarchar](100) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonFeeds]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonFeeds](
	[FeedId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonFeedId] [nvarchar](100) NULL,
	[FeedType] [nvarchar](200) NULL,
	[ProcessingStatus] [nvarchar](100) NULL,
	[InputFeedDocumentId] [nvarchar](100) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonFinancialEvents]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonFinancialEvents](
	[FinancialEventId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonOrderId] [nvarchar](100) NULL,
	[EventType] [nvarchar](100) NULL,
	[Amount] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[PostedDate] [datetime] NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FinancialEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonInventorySync]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonInventorySync](
	[InventorySyncId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[SKU] [nvarchar](100) NULL,
	[ASIN] [nvarchar](30) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[AvailableQuantity] [int] NULL,
	[ReservedQuantity] [int] NULL,
	[InboundQuantity] [int] NULL,
	[UnfulfillableQuantity] [int] NULL,
	[LastSyncDate] [datetime] NULL,
	[JsonData] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[InventorySyncId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonListings]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonListings](
	[AmazonListingId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[SKU] [nvarchar](100) NOT NULL,
	[ASIN] [nvarchar](30) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[ListingStatus] [nvarchar](100) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[ItemCondition] [nvarchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[Quantity] [int] NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmazonListingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonMarketplaceParticipations]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonMarketplaceParticipations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[MarketplaceName] [nvarchar](200) NULL,
	[CountryCode] [nvarchar](20) NULL,
	[DefaultCurrency] [nvarchar](20) NULL,
	[DefaultLanguage] [nvarchar](20) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonMessages]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonMessages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonOrderId] [nvarchar](100) NULL,
	[MessageType] [nvarchar](100) NULL,
	[Subject] [nvarchar](500) NULL,
	[MessageBody] [nvarchar](max) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonNotifications]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonNotifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[DestinationId] [nvarchar](100) NULL,
	[NotificationType] [nvarchar](100) NULL,
	[PayloadVersion] [nvarchar](50) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonOrderItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonOrderItems](
	[AmazonOrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonOrderId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[OrderItemId] [nvarchar](100) NULL,
	[SKU] [nvarchar](100) NULL,
	[ASIN] [nvarchar](30) NULL,
	[ProductName] [nvarchar](500) NULL,
	[QuantityOrdered] [int] NULL,
	[QuantityShipped] [int] NULL,
	[ItemPrice] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmazonOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonOrders]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonOrders](
	[AmazonOrderId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonOrderNumber] [nvarchar](50) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[PurchaseDate] [datetime] NULL,
	[OrderStatus] [nvarchar](100) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[SalesChannel] [nvarchar](100) NULL,
	[OrderTotal] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[BuyerEmail] [nvarchar](250) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmazonOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonReportDocuments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonReportDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[ReportDocumentId] [nvarchar](100) NULL,
	[CompressionAlgorithm] [nvarchar](100) NULL,
	[DownloadUrl] [nvarchar](max) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonReports]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonReports](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonReportId] [nvarchar](100) NOT NULL,
	[ReportType] [nvarchar](200) NULL,
	[ProcessingStatus] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[ProcessingStartTime] [datetime] NULL,
	[ProcessingEndTime] [datetime] NULL,
	[ReportDocumentId] [nvarchar](100) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonTokens]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonTokens](
	[TokenId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AccessToken] [nvarchar](max) NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[TokenType] [nvarchar](100) NULL,
	[ExpiresIn] [int] NULL,
	[ExpiresAt] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmazonUploads]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmazonUploads](
	[UploadId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[UploadDestinationId] [nvarchar](100) NULL,
	[UploadUrl] [nvarchar](max) NULL,
	[ContentType] [nvarchar](200) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UploadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NULL,
	[UnitPrice] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](200) NOT NULL,
	[ParentCategoryId] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[CouponId] [int] IDENTITY(1,1) NOT NULL,
	[CouponCode] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[DiscountType] [nvarchar](50) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CouponCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddresses]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddresses](
	[CustomerAddressId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AddressType] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](250) NOT NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[IsDefault] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPayments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPayments](
	[CustomerPaymentId] [int] IDENTITY(1,1) NOT NULL,
	[SalesInvoiceId] [int] NOT NULL,
	[PaymentNumber] [nvarchar](100) NOT NULL,
	[PaymentDate] [datetime] NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerReturns]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerReturns](
	[CustomerReturnId] [int] IDENTITY(1,1) NOT NULL,
	[SalesInvoiceId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ReturnNumber] [nvarchar](100) NOT NULL,
	[ReturnDate] [datetime] NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[ReturnAmount] [decimal](18, 2) NOT NULL,
	[Reason] [nvarchar](500) NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerReturnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryChallanItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryChallanItems](
	[DeliveryChallanItemId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryChallanId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryChallanItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryChallans]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryChallans](
	[DeliveryChallanId] [int] IDENTITY(1,1) NOT NULL,
	[SalesOrderId] [int] NOT NULL,
	[ChallanNumber] [nvarchar](100) NOT NULL,
	[ChallanDate] [datetime] NULL,
	[VehicleNumber] [nvarchar](50) NULL,
	[DriverName] [nvarchar](150) NULL,
	[DriverMobile] [nvarchar](20) NULL,
	[TransporterName] [nvarchar](150) NULL,
	[Status] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryChallanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptItems](
	[GoodsReceiptItemId] [int] IDENTITY(1,1) NOT NULL,
	[GoodsReceiptNoteId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ReceivedQuantity] [decimal](18, 2) NOT NULL,
	[AcceptedQuantity] [decimal](18, 2) NOT NULL,
	[RejectedQuantity] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](500) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodsReceiptItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptNotes]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptNotes](
	[GoodsReceiptNoteId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderId] [int] NOT NULL,
	[GRNNumber] [nvarchar](100) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodsReceiptNoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceAccounts]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceAccounts](
	[MarketplaceAccountId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[MarketplaceTypeId] [int] NOT NULL,
	[AccountName] [nvarchar](150) NOT NULL,
	[MerchantId] [nvarchar](200) NULL,
	[SellerCentralId] [nvarchar](200) NULL,
	[MarketplaceSellerId] [nvarchar](200) NULL,
	[CountryCode] [nvarchar](10) NULL,
	[Region] [nvarchar](50) NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[AccessToken] [nvarchar](max) NULL,
	[ClientId] [nvarchar](500) NULL,
	[ClientSecret] [nvarchar](500) NULL,
	[AwsAccessKey] [nvarchar](500) NULL,
	[AwsSecretKey] [nvarchar](500) NULL,
	[AwsRoleArn] [nvarchar](500) NULL,
	[Status] [nvarchar](30) NOT NULL,
	[LastSyncDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceApiLogs]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceApiLogs](
	[MarketplaceApiLogId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[ApiName] [nvarchar](300) NULL,
	[HttpMethod] [nvarchar](20) NULL,
	[RequestUrl] [nvarchar](1000) NULL,
	[RequestBody] [nvarchar](max) NULL,
	[ResponseBody] [nvarchar](max) NULL,
	[HttpStatusCode] [int] NULL,
	[DurationMs] [int] NULL,
	[RequestTime] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceApiLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceCatalogItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceCatalogItems](
	[MarketplaceCatalogItemId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceTypeId] [int] NOT NULL,
	[ExternalProductId] [nvarchar](200) NULL,
	[ProductTitle] [nvarchar](500) NULL,
	[Brand] [nvarchar](200) NULL,
	[Manufacturer] [nvarchar](200) NULL,
	[Category] [nvarchar](200) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceCatalogItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceErrorLogs]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceErrorLogs](
	[MarketplaceErrorLogId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NULL,
	[SyncJobId] [int] NULL,
	[ErrorCode] [nvarchar](100) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[LoggedOn] [datetime] NULL,
	[Resolved] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceErrorLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceFeedDocuments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceFeedDocuments](
	[MarketplaceFeedDocumentId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceFeedId] [int] NOT NULL,
	[DocumentId] [nvarchar](200) NULL,
	[FileName] [nvarchar](300) NULL,
	[FilePath] [nvarchar](1000) NULL,
	[MimeType] [nvarchar](100) NULL,
	[UploadedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceFeedDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceFeeds]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceFeeds](
	[MarketplaceFeedId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[FeedType] [nvarchar](100) NOT NULL,
	[FeedId] [nvarchar](200) NULL,
	[ProcessingStatus] [nvarchar](100) NULL,
	[SubmittedDate] [datetime] NULL,
	[ProcessingStarted] [datetime] NULL,
	[ProcessingCompleted] [datetime] NULL,
	[FeedDocumentId] [nvarchar](200) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceFeedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceListingAttributes]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceListingAttributes](
	[MarketplaceListingAttributeId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[AttributeName] [nvarchar](150) NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceListingImages]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceListingImages](
	[MarketplaceListingImageId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[IsPrimary] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceListingInventory]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceListingInventory](
	[MarketplaceListingInventoryId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[AvailableQuantity] [decimal](18, 2) NULL,
	[ReservedQuantity] [decimal](18, 2) NULL,
	[InboundQuantity] [decimal](18, 2) NULL,
	[LastInventorySync] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingInventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceListingPrices]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceListingPrices](
	[MarketplaceListingPriceId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[SellingPrice] [decimal](18, 2) NOT NULL,
	[MRP] [decimal](18, 2) NULL,
	[Currency] [nvarchar](20) NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTo] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingPriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceListings]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceListings](
	[MarketplaceListingId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[MarketplaceSKU] [nvarchar](150) NULL,
	[MarketplaceProductId] [nvarchar](200) NULL,
	[ExternalProductId] [nvarchar](200) NULL,
	[ListingTitle] [nvarchar](500) NULL,
	[ListingDescription] [nvarchar](max) NULL,
	[ListingStatus] [nvarchar](50) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[Currency] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceOrderAddresses]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceOrderAddresses](
	[MarketplaceOrderAddressId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderId] [int] NOT NULL,
	[AddressType] [nvarchar](30) NULL,
	[Name] [nvarchar](200) NULL,
	[Company] [nvarchar](200) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Phone] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceOrderAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceOrderItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceOrderItems](
	[MarketplaceOrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderId] [int] NOT NULL,
	[MarketplaceListingId] [int] NULL,
	[ProductId] [int] NULL,
	[MarketplaceOrderItemNumber] [nvarchar](150) NULL,
	[ExternalOrderItemId] [nvarchar](200) NULL,
	[ProductTitle] [nvarchar](500) NULL,
	[SKU] [nvarchar](150) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[ShippingAmount] [decimal](18, 2) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceOrders]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceOrders](
	[MarketplaceOrderId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[MarketplaceOrderNumber] [nvarchar](150) NOT NULL,
	[ExternalOrderId] [nvarchar](200) NULL,
	[SellerOrderNumber] [nvarchar](100) NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderStatus] [nvarchar](100) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[Currency] [nvarchar](20) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[BuyerName] [nvarchar](200) NULL,
	[BuyerEmail] [nvarchar](200) NULL,
	[PurchaseOrderNumber] [nvarchar](100) NULL,
	[LastSyncDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplacePayments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplacePayments](
	[MarketplacePaymentId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderId] [int] NOT NULL,
	[PaymentReference] [nvarchar](150) NULL,
	[PaymentStatus] [nvarchar](100) NULL,
	[PaymentMethod] [nvarchar](100) NULL,
	[GrossAmount] [decimal](18, 2) NULL,
	[Commission] [decimal](18, 2) NULL,
	[ShippingFee] [decimal](18, 2) NULL,
	[Tax] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplacePaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceReportDocuments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceReportDocuments](
	[MarketplaceReportDocumentId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceReportId] [int] NOT NULL,
	[DocumentId] [nvarchar](200) NULL,
	[FileName] [nvarchar](300) NULL,
	[FilePath] [nvarchar](1000) NULL,
	[MimeType] [nvarchar](100) NULL,
	[DownloadedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceReportDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceReports]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceReports](
	[MarketplaceReportId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[ReportType] [nvarchar](150) NULL,
	[ReportId] [nvarchar](200) NULL,
	[ProcessingStatus] [nvarchar](100) NULL,
	[ReportDocumentId] [nvarchar](200) NULL,
	[RequestedDate] [datetime] NULL,
	[CompletedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceReturns]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceReturns](
	[MarketplaceReturnId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderItemId] [int] NOT NULL,
	[ReturnNumber] [nvarchar](100) NULL,
	[ReturnReason] [nvarchar](300) NULL,
	[ReturnStatus] [nvarchar](100) NULL,
	[QuantityReturned] [int] NULL,
	[RefundAmount] [decimal](18, 2) NULL,
	[ReturnDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceReturnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceSettlements]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceSettlements](
	[MarketplaceSettlementId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[SettlementNumber] [nvarchar](100) NULL,
	[SettlementStartDate] [datetime] NULL,
	[SettlementEndDate] [datetime] NULL,
	[SettlementDate] [datetime] NULL,
	[Currency] [nvarchar](20) NULL,
	[GrossSales] [decimal](18, 2) NULL,
	[Commission] [decimal](18, 2) NULL,
	[ShippingFee] [decimal](18, 2) NULL,
	[Tax] [decimal](18, 2) NULL,
	[RefundAmount] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceSettlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceShipments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceShipments](
	[MarketplaceShipmentId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderId] [int] NOT NULL,
	[ShipmentNumber] [nvarchar](100) NULL,
	[Carrier] [nvarchar](150) NULL,
	[TrackingNumber] [nvarchar](150) NULL,
	[ShippingService] [nvarchar](100) NULL,
	[ShipDate] [datetime] NULL,
	[DeliveryDate] [datetime] NULL,
	[ShipmentStatus] [nvarchar](100) NULL,
	[ShippingCost] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceSyncJobs]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceSyncJobs](
	[MarketplaceSyncJobId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[SyncType] [nvarchar](100) NULL,
	[StartedOn] [datetime] NULL,
	[CompletedOn] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[TotalRecords] [int] NULL,
	[SuccessRecords] [int] NULL,
	[FailedRecords] [int] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceSyncJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceSyncLogs]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceSyncLogs](
	[MarketplaceSyncLogId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceSyncJobId] [int] NOT NULL,
	[EntityName] [nvarchar](150) NULL,
	[EntityId] [nvarchar](200) NULL,
	[ActionType] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[LoggedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceSyncLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceTypes]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceTypes](
	[MarketplaceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceName] [nvarchar](100) NOT NULL,
	[MarketplaceCode] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ApiBaseUrl] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MarketplaceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketplaceWebhooks]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketplaceWebhooks](
	[MarketplaceWebhookId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[EventType] [nvarchar](150) NULL,
	[EventId] [nvarchar](200) NULL,
	[Payload] [nvarchar](max) NULL,
	[ReceivedOn] [datetime] NULL,
	[ProcessedOn] [datetime] NULL,
	[Status] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceWebhookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[Title] [nvarchar](200) NULL,
	[Message] [nvarchar](max) NULL,
	[IsRead] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderNumber] [nvarchar](100) NOT NULL,
	[OrderDate] [datetime] NULL,
	[OrderStatus] [nvarchar](50) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatusHistory]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatusHistory](
	[OrderStatusHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Status] [nvarchar](100) NULL,
	[Remarks] [nvarchar](500) NULL,
	[ChangedOn] [datetime] NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderStatusHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[TransactionId] [nvarchar](150) NULL,
	[PaymentDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributes]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributes](
	[ProductAttributeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[AttributeName] [nvarchar](100) NOT NULL,
	[AttributeValue] [nvarchar](500) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[SellerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[ProductImageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImageUrl] [nvarchar](500) NOT NULL,
	[DisplayOrder] [int] NULL,
	[IsPrimary] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[SellerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInventory]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInventory](
	[ProductInventoryId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NULL,
	[ReservedQuantity] [decimal](18, 2) NULL,
	[DamagedQuantity] [decimal](18, 2) NULL,
	[ReorderLevel] [decimal](18, 2) NULL,
	[ReorderQuantity] [decimal](18, 2) NULL,
	[LastStockUpdate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductInventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPrices]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPrices](
	[ProductPriceId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SellerId] [int] NOT NULL,
	[PriceType] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Currency] [nvarchar](10) NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTo] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductPriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[SKU] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[BrandId] [int] NULL,
	[CategoryId] [int] NULL,
	[ProductTypeId] [int] NULL,
	[Barcode] [nvarchar](100) NULL,
	[HSNCode] [nvarchar](20) NULL,
	[UnitOfMeasure] [nvarchar](50) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Length] [decimal](18, 2) NULL,
	[Width] [decimal](18, 2) NULL,
	[Height] [decimal](18, 2) NULL,
	[Status] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[ProductTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderItems](
	[PurchaseOrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrders]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrders](
	[PurchaseOrderId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[PurchaseOrderNumber] [nvarchar](100) NOT NULL,
	[OrderDate] [datetime] NULL,
	[ExpectedDeliveryDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseReturns]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseReturns](
	[PurchaseReturnId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderId] [int] NOT NULL,
	[GoodsReceiptNoteId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[PurchaseReturnNumber] [nvarchar](100) NOT NULL,
	[ReturnDate] [datetime] NULL,
	[Reason] [nvarchar](500) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseReturnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Rating] [int] NULL,
	[Review] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesInvoices]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesInvoices](
	[SalesInvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[SalesOrderId] [int] NOT NULL,
	[InvoiceNumber] [nvarchar](100) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[PaidAmount] [decimal](18, 2) NOT NULL,
	[BalanceAmount] [decimal](18, 2) NOT NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesInvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderItems](
	[SalesOrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[SalesOrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrders]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrders](
	[SalesOrderId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[SalesOrderNumber] [nvarchar](100) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellerCustomers]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerCustomers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](200) NOT NULL,
	[ContactPerson] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Phone] [nvarchar](20) NULL,
	[GSTIN] [nvarchar](20) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[CreditLimit] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sellers]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sellers](
	[SellerId] [int] IDENTITY(1,1) NOT NULL,
	[SellerCode] [nvarchar](50) NOT NULL,
	[SellerName] [nvarchar](200) NOT NULL,
	[GSTIN] [nvarchar](20) NULL,
	[PAN] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[Phone] [nvarchar](20) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Address] [nvarchar](500) NULL,
	[CompanyName] [nvarchar](200) NULL,
	[ContactPerson] [nvarchar](200) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SellerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments](
	[ShipmentId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[CourierName] [nvarchar](150) NULL,
	[TrackingNumber] [nvarchar](150) NULL,
	[ShipmentDate] [datetime] NULL,
	[DeliveryDate] [datetime] NULL,
	[ShipmentStatus] [nvarchar](50) NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockAdjustments]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockAdjustments](
	[StockAdjustmentId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[AdjustmentType] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Reason] [nvarchar](500) NULL,
	[AdjustedBy] [nvarchar](150) NULL,
	[AdjustmentDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StockAdjustmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockLedger]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockLedger](
	[StockLedgerId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[TransactionType] [nvarchar](50) NOT NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[BalanceQuantity] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[TransactionDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockLedgerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMovement]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMovement](
	[StockMovementId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[MovementType] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 2) NULL,
	[ReferenceTable] [nvarchar](100) NULL,
	[ReferenceId] [int] NULL,
	[MovementDate] [datetime] NULL,
	[Remarks] [nvarchar](500) NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockMovementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTransfers]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransfers](
	[StockTransferId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[FromWarehouseId] [int] NOT NULL,
	[ToWarehouseId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[TransferDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockTransferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierProducts]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierProducts](
	[SupplierProductId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[SupplierSKU] [nvarchar](100) NULL,
	[PurchasePrice] [decimal](18, 2) NULL,
	[LeadTimeDays] [int] NULL,
	[IsPreferredSupplier] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[SupplierCode] [nvarchar](50) NOT NULL,
	[SupplierName] [nvarchar](200) NOT NULL,
	[ContactPerson] [nvarchar](150) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[GSTIN] [nvarchar](20) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[PaymentTerms] [nvarchar](100) NULL,
	[CreditLimit] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[PasswordHash] [nvarchar](500) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Role] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[EmailVerified] [bit] NULL,
	[MobileVerified] [bit] NULL,
	[LastLoginDate] [datetime] NULL,
	[FailedLoginAttempts] [int] NULL,
	[IsLocked] [bit] NULL,
	[PasswordResetToken] [nvarchar](200) NULL,
	[PasswordResetExpiry] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WarehouseLocations]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseLocations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[LocationCode] [nvarchar](50) NOT NULL,
	[LocationName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouses]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouses](
	[WarehouseId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[WarehouseCode] [nvarchar](50) NOT NULL,
	[WarehouseName] [nvarchar](200) NOT NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[ContactPerson] [nvarchar](150) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItems]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistItems](
	[WishlistItemId] [int] IDENTITY(1,1) NOT NULL,
	[WishlistId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WishlistItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlists]    Script Date: 19-08-2026 18:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlists](
	[WishlistId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WishlistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AmazonAccounts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AmazonAccounts] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonEasyShip] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonFeedDocuments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonFeeds] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonFinancialEvents] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonInventorySync] ADD  DEFAULT (getdate()) FOR [LastSyncDate]
GO
ALTER TABLE [dbo].[AmazonListings] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonMarketplaceParticipations] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonMessages] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonNotifications] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonOrderItems] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonOrders] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonReportDocuments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonReports] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonTokens] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AmazonTokens] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonUploads] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Brands] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Brands] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CartItems] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Coupons] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CustomerAddresses] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[CustomerAddresses] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CustomerPayments] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[CustomerPayments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CustomerReturns] ADD  DEFAULT (getdate()) FOR [ReturnDate]
GO
ALTER TABLE [dbo].[CustomerReturns] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[CustomerReturns] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DeliveryChallanItems] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[DeliveryChallanItems] ADD  DEFAULT ((0)) FOR [TaxAmount]
GO
ALTER TABLE [dbo].[DeliveryChallanItems] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DeliveryChallans] ADD  DEFAULT (getdate()) FOR [ChallanDate]
GO
ALTER TABLE [dbo].[DeliveryChallans] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[DeliveryChallans] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GoodsReceiptItems] ADD  DEFAULT ((0)) FOR [RejectedQuantity]
GO
ALTER TABLE [dbo].[GoodsReceiptNotes] ADD  DEFAULT (getdate()) FOR [ReceiptDate]
GO
ALTER TABLE [dbo].[GoodsReceiptNotes] ADD  DEFAULT ('Received') FOR [Status]
GO
ALTER TABLE [dbo].[GoodsReceiptNotes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceAccounts] ADD  DEFAULT ('Connected') FOR [Status]
GO
ALTER TABLE [dbo].[MarketplaceAccounts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MarketplaceAccounts] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceApiLogs] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceCatalogItems] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceErrorLogs] ADD  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [dbo].[MarketplaceErrorLogs] ADD  DEFAULT ((0)) FOR [Resolved]
GO
ALTER TABLE [dbo].[MarketplaceFeedDocuments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceFeeds] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceListingAttributes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceListingImages] ADD  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[MarketplaceListingImages] ADD  DEFAULT ((0)) FOR [IsPrimary]
GO
ALTER TABLE [dbo].[MarketplaceListingImages] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceListingInventory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceListingPrices] ADD  DEFAULT ('INR') FOR [Currency]
GO
ALTER TABLE [dbo].[MarketplaceListingPrices] ADD  DEFAULT (getdate()) FOR [EffectiveFrom]
GO
ALTER TABLE [dbo].[MarketplaceListingPrices] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MarketplaceListingPrices] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceListings] ADD  DEFAULT ('Draft') FOR [ListingStatus]
GO
ALTER TABLE [dbo].[MarketplaceListings] ADD  DEFAULT ('INR') FOR [Currency]
GO
ALTER TABLE [dbo].[MarketplaceListings] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceOrderAddresses] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceOrderItems] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceOrders] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplacePayments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceReportDocuments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceReports] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceReturns] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceSettlements] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceShipments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceSyncJobs] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceSyncLogs] ADD  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [dbo].[MarketplaceTypes] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MarketplaceTypes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MarketplaceWebhooks] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('Pending') FOR [OrderStatus]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0)) FOR [SellerId]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[ProductAttributes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductImages] ADD  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductImages] ADD  DEFAULT ((0)) FOR [IsPrimary]
GO
ALTER TABLE [dbo].[ProductImages] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductInventory] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[ProductInventory] ADD  DEFAULT ((0)) FOR [ReservedQuantity]
GO
ALTER TABLE [dbo].[ProductInventory] ADD  DEFAULT ((0)) FOR [DamagedQuantity]
GO
ALTER TABLE [dbo].[ProductInventory] ADD  DEFAULT ((0)) FOR [ReorderLevel]
GO
ALTER TABLE [dbo].[ProductInventory] ADD  DEFAULT ((0)) FOR [ReorderQuantity]
GO
ALTER TABLE [dbo].[ProductInventory] ADD  DEFAULT (getdate()) FOR [LastStockUpdate]
GO
ALTER TABLE [dbo].[ProductInventory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductPrices] ADD  DEFAULT ('INR') FOR [Currency]
GO
ALTER TABLE [dbo].[ProductPrices] ADD  DEFAULT (getdate()) FOR [EffectiveFrom]
GO
ALTER TABLE [dbo].[ProductPrices] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductPrices] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('Nos') FOR [UnitOfMeasure]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductTypes] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductTypes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductTypes] ADD  DEFAULT ((0)) FOR [SellerId]
GO
ALTER TABLE [dbo].[ProductTypes] ADD  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[PurchaseOrderItems] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[PurchaseOrderItems] ADD  DEFAULT ((0)) FOR [TaxAmount]
GO
ALTER TABLE [dbo].[PurchaseOrderItems] ADD  DEFAULT ((0)) FOR [SellerId]
GO
ALTER TABLE [dbo].[PurchaseOrderItems] ADD  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PurchaseReturns] ADD  DEFAULT (getdate()) FOR [ReturnDate]
GO
ALTER TABLE [dbo].[PurchaseReturns] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[PurchaseReturns] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[PurchaseReturns] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PurchaseReturns] ADD  DEFAULT ((0)) FOR [SellerId]
GO
ALTER TABLE [dbo].[PurchaseReturns] ADD  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT (getdate()) FOR [InvoiceDate]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [SubTotal]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [DiscountAmount]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [TaxAmount]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [PaidAmount]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [BalanceAmount]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ('Pending') FOR [PaymentStatus]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ('Open') FOR [Status]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [SellerId]
GO
ALTER TABLE [dbo].[SalesInvoices] ADD  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[SalesOrderItems] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[SalesOrderItems] ADD  DEFAULT ((0)) FOR [TaxAmount]
GO
ALTER TABLE [dbo].[SalesOrders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[SalesOrders] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[SalesOrders] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[SalesOrders] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SellerCustomers] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[SellerCustomers] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Sellers] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Sellers] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Shipments] ADD  DEFAULT ((0)) FOR [SellerId]
GO
ALTER TABLE [dbo].[Shipments] ADD  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[ShoppingCart] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StockAdjustments] ADD  DEFAULT (getdate()) FOR [AdjustmentDate]
GO
ALTER TABLE [dbo].[StockAdjustments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StockAdjustments] ADD  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[StockLedger] ADD  DEFAULT (getdate()) FOR [TransactionDate]
GO
ALTER TABLE [dbo].[StockLedger] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StockMovement] ADD  DEFAULT (getdate()) FOR [MovementDate]
GO
ALTER TABLE [dbo].[StockTransfers] ADD  DEFAULT (getdate()) FOR [TransferDate]
GO
ALTER TABLE [dbo].[StockTransfers] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[StockTransfers] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SupplierProducts] ADD  DEFAULT ((0)) FOR [IsPreferredSupplier]
GO
ALTER TABLE [dbo].[SupplierProducts] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Suppliers] ADD  DEFAULT ((0)) FOR [CreditLimit]
GO
ALTER TABLE [dbo].[Suppliers] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Suppliers] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [EmailVerified]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [MobileVerified]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [FailedLoginAttempts]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsLocked]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[WarehouseLocations] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[WarehouseLocations] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Warehouses] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Warehouses] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[WishlistItems] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Wishlists] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AmazonAccounts]  WITH CHECK ADD  CONSTRAINT [FK_AmazonAccounts_Sellers] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[AmazonAccounts] CHECK CONSTRAINT [FK_AmazonAccounts_Sellers]
GO
ALTER TABLE [dbo].[AmazonEasyShip]  WITH CHECK ADD  CONSTRAINT [FK_EasyShip_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonEasyShip] CHECK CONSTRAINT [FK_EasyShip_Account]
GO
ALTER TABLE [dbo].[AmazonFeedDocuments]  WITH CHECK ADD  CONSTRAINT [FK_FeedDocuments_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonFeedDocuments] CHECK CONSTRAINT [FK_FeedDocuments_Account]
GO
ALTER TABLE [dbo].[AmazonFeeds]  WITH CHECK ADD  CONSTRAINT [FK_AmazonFeeds_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonFeeds] CHECK CONSTRAINT [FK_AmazonFeeds_Account]
GO
ALTER TABLE [dbo].[AmazonFinancialEvents]  WITH CHECK ADD  CONSTRAINT [FK_FinancialEvents_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonFinancialEvents] CHECK CONSTRAINT [FK_FinancialEvents_Account]
GO
ALTER TABLE [dbo].[AmazonInventorySync]  WITH CHECK ADD  CONSTRAINT [FK_InventorySync_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonInventorySync] CHECK CONSTRAINT [FK_InventorySync_Account]
GO
ALTER TABLE [dbo].[AmazonInventorySync]  WITH CHECK ADD  CONSTRAINT [FK_InventorySync_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[AmazonInventorySync] CHECK CONSTRAINT [FK_InventorySync_Product]
GO
ALTER TABLE [dbo].[AmazonListings]  WITH CHECK ADD  CONSTRAINT [FK_AmazonListings_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonListings] CHECK CONSTRAINT [FK_AmazonListings_Account]
GO
ALTER TABLE [dbo].[AmazonListings]  WITH CHECK ADD  CONSTRAINT [FK_AmazonListings_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[AmazonListings] CHECK CONSTRAINT [FK_AmazonListings_Product]
GO
ALTER TABLE [dbo].[AmazonMarketplaceParticipations]  WITH CHECK ADD  CONSTRAINT [FK_MarketplaceParticipation_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonMarketplaceParticipations] CHECK CONSTRAINT [FK_MarketplaceParticipation_Account]
GO
ALTER TABLE [dbo].[AmazonMessages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonMessages] CHECK CONSTRAINT [FK_Messages_Account]
GO
ALTER TABLE [dbo].[AmazonNotifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonNotifications] CHECK CONSTRAINT [FK_Notifications_Account]
GO
ALTER TABLE [dbo].[AmazonOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Order] FOREIGN KEY([AmazonOrderId])
REFERENCES [dbo].[AmazonOrders] ([AmazonOrderId])
GO
ALTER TABLE [dbo].[AmazonOrderItems] CHECK CONSTRAINT [FK_OrderItems_Order]
GO
ALTER TABLE [dbo].[AmazonOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[AmazonOrderItems] CHECK CONSTRAINT [FK_OrderItems_Product]
GO
ALTER TABLE [dbo].[AmazonOrders]  WITH CHECK ADD  CONSTRAINT [FK_AmazonOrders_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonOrders] CHECK CONSTRAINT [FK_AmazonOrders_Account]
GO
ALTER TABLE [dbo].[AmazonReportDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ReportDocuments_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonReportDocuments] CHECK CONSTRAINT [FK_ReportDocuments_Account]
GO
ALTER TABLE [dbo].[AmazonReports]  WITH CHECK ADD  CONSTRAINT [FK_AmazonReports_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonReports] CHECK CONSTRAINT [FK_AmazonReports_Account]
GO
ALTER TABLE [dbo].[AmazonTokens]  WITH CHECK ADD  CONSTRAINT [FK_AmazonTokens_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonTokens] CHECK CONSTRAINT [FK_AmazonTokens_Account]
GO
ALTER TABLE [dbo].[AmazonUploads]  WITH CHECK ADD  CONSTRAINT [FK_Uploads_Account] FOREIGN KEY([AmazonAccountId])
REFERENCES [dbo].[AmazonAccounts] ([AmazonAccountId])
GO
ALTER TABLE [dbo].[AmazonUploads] CHECK CONSTRAINT [FK_Uploads_Account]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[ShoppingCart] ([CartId])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItem_Product]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Parent] FOREIGN KEY([ParentCategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Parent]
GO
ALTER TABLE [dbo].[CustomerAddresses]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerAddresses] CHECK CONSTRAINT [FK_CustomerAddress_Customer]
GO
ALTER TABLE [dbo].[CustomerPayments]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Invoice] FOREIGN KEY([SalesInvoiceId])
REFERENCES [dbo].[SalesInvoices] ([SalesInvoiceId])
GO
ALTER TABLE [dbo].[CustomerPayments] CHECK CONSTRAINT [FK_Payment_Invoice]
GO
ALTER TABLE [dbo].[CustomerReturns]  WITH CHECK ADD  CONSTRAINT [FK_Return_Invoice] FOREIGN KEY([SalesInvoiceId])
REFERENCES [dbo].[SalesInvoices] ([SalesInvoiceId])
GO
ALTER TABLE [dbo].[CustomerReturns] CHECK CONSTRAINT [FK_Return_Invoice]
GO
ALTER TABLE [dbo].[CustomerReturns]  WITH CHECK ADD  CONSTRAINT [FK_Return_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[CustomerReturns] CHECK CONSTRAINT [FK_Return_Product]
GO
ALTER TABLE [dbo].[DeliveryChallanItems]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryChallanItems_DeliveryChallans] FOREIGN KEY([DeliveryChallanId])
REFERENCES [dbo].[DeliveryChallans] ([DeliveryChallanId])
GO
ALTER TABLE [dbo].[DeliveryChallanItems] CHECK CONSTRAINT [FK_DeliveryChallanItems_DeliveryChallans]
GO
ALTER TABLE [dbo].[DeliveryChallanItems]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryChallanItems_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[DeliveryChallanItems] CHECK CONSTRAINT [FK_DeliveryChallanItems_Products]
GO
ALTER TABLE [dbo].[DeliveryChallans]  WITH CHECK ADD  CONSTRAINT [FK_DC_Order] FOREIGN KEY([SalesOrderId])
REFERENCES [dbo].[SalesOrders] ([SalesOrderId])
GO
ALTER TABLE [dbo].[DeliveryChallans] CHECK CONSTRAINT [FK_DC_Order]
GO
ALTER TABLE [dbo].[GoodsReceiptItems]  WITH CHECK ADD  CONSTRAINT [FK_GRNItem_GRN] FOREIGN KEY([GoodsReceiptNoteId])
REFERENCES [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId])
GO
ALTER TABLE [dbo].[GoodsReceiptItems] CHECK CONSTRAINT [FK_GRNItem_GRN]
GO
ALTER TABLE [dbo].[GoodsReceiptItems]  WITH CHECK ADD  CONSTRAINT [FK_GRNItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[GoodsReceiptItems] CHECK CONSTRAINT [FK_GRNItem_Product]
GO
ALTER TABLE [dbo].[GoodsReceiptNotes]  WITH CHECK ADD  CONSTRAINT [FK_GRN_PO] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrderId])
GO
ALTER TABLE [dbo].[GoodsReceiptNotes] CHECK CONSTRAINT [FK_GRN_PO]
GO
ALTER TABLE [dbo].[MarketplaceAccounts]  WITH CHECK ADD  CONSTRAINT [FK_MarketplaceAccounts_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[MarketplaceAccounts] CHECK CONSTRAINT [FK_MarketplaceAccounts_Seller]
GO
ALTER TABLE [dbo].[MarketplaceAccounts]  WITH CHECK ADD  CONSTRAINT [FK_MarketplaceAccounts_Type] FOREIGN KEY([MarketplaceTypeId])
REFERENCES [dbo].[MarketplaceTypes] ([MarketplaceTypeId])
GO
ALTER TABLE [dbo].[MarketplaceAccounts] CHECK CONSTRAINT [FK_MarketplaceAccounts_Type]
GO
ALTER TABLE [dbo].[MarketplaceApiLogs]  WITH CHECK ADD  CONSTRAINT [FK_MPApiLogs_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceApiLogs] CHECK CONSTRAINT [FK_MPApiLogs_Account]
GO
ALTER TABLE [dbo].[MarketplaceCatalogItems]  WITH CHECK ADD  CONSTRAINT [FK_MPCatalog_Type] FOREIGN KEY([MarketplaceTypeId])
REFERENCES [dbo].[MarketplaceTypes] ([MarketplaceTypeId])
GO
ALTER TABLE [dbo].[MarketplaceCatalogItems] CHECK CONSTRAINT [FK_MPCatalog_Type]
GO
ALTER TABLE [dbo].[MarketplaceErrorLogs]  WITH CHECK ADD  CONSTRAINT [FK_MPError_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceErrorLogs] CHECK CONSTRAINT [FK_MPError_Account]
GO
ALTER TABLE [dbo].[MarketplaceErrorLogs]  WITH CHECK ADD  CONSTRAINT [FK_MPError_Job] FOREIGN KEY([SyncJobId])
REFERENCES [dbo].[MarketplaceSyncJobs] ([MarketplaceSyncJobId])
GO
ALTER TABLE [dbo].[MarketplaceErrorLogs] CHECK CONSTRAINT [FK_MPError_Job]
GO
ALTER TABLE [dbo].[MarketplaceFeedDocuments]  WITH CHECK ADD  CONSTRAINT [FK_MPFeedDocs_Feed] FOREIGN KEY([MarketplaceFeedId])
REFERENCES [dbo].[MarketplaceFeeds] ([MarketplaceFeedId])
GO
ALTER TABLE [dbo].[MarketplaceFeedDocuments] CHECK CONSTRAINT [FK_MPFeedDocs_Feed]
GO
ALTER TABLE [dbo].[MarketplaceFeeds]  WITH CHECK ADD  CONSTRAINT [FK_MPFeeds_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceFeeds] CHECK CONSTRAINT [FK_MPFeeds_Account]
GO
ALTER TABLE [dbo].[MarketplaceListingAttributes]  WITH CHECK ADD  CONSTRAINT [FK_MPAttribute_Listing] FOREIGN KEY([MarketplaceListingId])
REFERENCES [dbo].[MarketplaceListings] ([MarketplaceListingId])
GO
ALTER TABLE [dbo].[MarketplaceListingAttributes] CHECK CONSTRAINT [FK_MPAttribute_Listing]
GO
ALTER TABLE [dbo].[MarketplaceListingImages]  WITH CHECK ADD  CONSTRAINT [FK_MPImage_Listing] FOREIGN KEY([MarketplaceListingId])
REFERENCES [dbo].[MarketplaceListings] ([MarketplaceListingId])
GO
ALTER TABLE [dbo].[MarketplaceListingImages] CHECK CONSTRAINT [FK_MPImage_Listing]
GO
ALTER TABLE [dbo].[MarketplaceListingInventory]  WITH CHECK ADD  CONSTRAINT [FK_MPInventory_Listing] FOREIGN KEY([MarketplaceListingId])
REFERENCES [dbo].[MarketplaceListings] ([MarketplaceListingId])
GO
ALTER TABLE [dbo].[MarketplaceListingInventory] CHECK CONSTRAINT [FK_MPInventory_Listing]
GO
ALTER TABLE [dbo].[MarketplaceListingPrices]  WITH CHECK ADD  CONSTRAINT [FK_MPPrice_Listing] FOREIGN KEY([MarketplaceListingId])
REFERENCES [dbo].[MarketplaceListings] ([MarketplaceListingId])
GO
ALTER TABLE [dbo].[MarketplaceListingPrices] CHECK CONSTRAINT [FK_MPPrice_Listing]
GO
ALTER TABLE [dbo].[MarketplaceListings]  WITH CHECK ADD  CONSTRAINT [FK_MarketplaceListing_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceListings] CHECK CONSTRAINT [FK_MarketplaceListing_Account]
GO
ALTER TABLE [dbo].[MarketplaceListings]  WITH CHECK ADD  CONSTRAINT [FK_MarketplaceListing_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[MarketplaceListings] CHECK CONSTRAINT [FK_MarketplaceListing_Product]
GO
ALTER TABLE [dbo].[MarketplaceOrderAddresses]  WITH CHECK ADD  CONSTRAINT [FK_MPAddress_Order] FOREIGN KEY([MarketplaceOrderId])
REFERENCES [dbo].[MarketplaceOrders] ([MarketplaceOrderId])
GO
ALTER TABLE [dbo].[MarketplaceOrderAddresses] CHECK CONSTRAINT [FK_MPAddress_Order]
GO
ALTER TABLE [dbo].[MarketplaceOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_MPOrderItems_Listing] FOREIGN KEY([MarketplaceListingId])
REFERENCES [dbo].[MarketplaceListings] ([MarketplaceListingId])
GO
ALTER TABLE [dbo].[MarketplaceOrderItems] CHECK CONSTRAINT [FK_MPOrderItems_Listing]
GO
ALTER TABLE [dbo].[MarketplaceOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_MPOrderItems_Order] FOREIGN KEY([MarketplaceOrderId])
REFERENCES [dbo].[MarketplaceOrders] ([MarketplaceOrderId])
GO
ALTER TABLE [dbo].[MarketplaceOrderItems] CHECK CONSTRAINT [FK_MPOrderItems_Order]
GO
ALTER TABLE [dbo].[MarketplaceOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_MPOrderItems_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[MarketplaceOrderItems] CHECK CONSTRAINT [FK_MPOrderItems_Product]
GO
ALTER TABLE [dbo].[MarketplaceOrders]  WITH CHECK ADD  CONSTRAINT [FK_MPOrders_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceOrders] CHECK CONSTRAINT [FK_MPOrders_Account]
GO
ALTER TABLE [dbo].[MarketplacePayments]  WITH CHECK ADD  CONSTRAINT [FK_MPPayment_Order] FOREIGN KEY([MarketplaceOrderId])
REFERENCES [dbo].[MarketplaceOrders] ([MarketplaceOrderId])
GO
ALTER TABLE [dbo].[MarketplacePayments] CHECK CONSTRAINT [FK_MPPayment_Order]
GO
ALTER TABLE [dbo].[MarketplaceReportDocuments]  WITH CHECK ADD  CONSTRAINT [FK_MPReportDocs_Report] FOREIGN KEY([MarketplaceReportId])
REFERENCES [dbo].[MarketplaceReports] ([MarketplaceReportId])
GO
ALTER TABLE [dbo].[MarketplaceReportDocuments] CHECK CONSTRAINT [FK_MPReportDocs_Report]
GO
ALTER TABLE [dbo].[MarketplaceReports]  WITH CHECK ADD  CONSTRAINT [FK_MPReports_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceReports] CHECK CONSTRAINT [FK_MPReports_Account]
GO
ALTER TABLE [dbo].[MarketplaceReturns]  WITH CHECK ADD  CONSTRAINT [FK_MPReturns_Item] FOREIGN KEY([MarketplaceOrderItemId])
REFERENCES [dbo].[MarketplaceOrderItems] ([MarketplaceOrderItemId])
GO
ALTER TABLE [dbo].[MarketplaceReturns] CHECK CONSTRAINT [FK_MPReturns_Item]
GO
ALTER TABLE [dbo].[MarketplaceSettlements]  WITH CHECK ADD  CONSTRAINT [FK_MPSettlement_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceSettlements] CHECK CONSTRAINT [FK_MPSettlement_Account]
GO
ALTER TABLE [dbo].[MarketplaceShipments]  WITH CHECK ADD  CONSTRAINT [FK_MPShipment_Order] FOREIGN KEY([MarketplaceOrderId])
REFERENCES [dbo].[MarketplaceOrders] ([MarketplaceOrderId])
GO
ALTER TABLE [dbo].[MarketplaceShipments] CHECK CONSTRAINT [FK_MPShipment_Order]
GO
ALTER TABLE [dbo].[MarketplaceSyncJobs]  WITH CHECK ADD  CONSTRAINT [FK_MPSyncJob_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceSyncJobs] CHECK CONSTRAINT [FK_MPSyncJob_Account]
GO
ALTER TABLE [dbo].[MarketplaceSyncLogs]  WITH CHECK ADD  CONSTRAINT [FK_MPSyncLogs_Job] FOREIGN KEY([MarketplaceSyncJobId])
REFERENCES [dbo].[MarketplaceSyncJobs] ([MarketplaceSyncJobId])
GO
ALTER TABLE [dbo].[MarketplaceSyncLogs] CHECK CONSTRAINT [FK_MPSyncLogs_Job]
GO
ALTER TABLE [dbo].[MarketplaceWebhooks]  WITH CHECK ADD  CONSTRAINT [FK_MPWebhook_Account] FOREIGN KEY([MarketplaceAccountId])
REFERENCES [dbo].[MarketplaceAccounts] ([MarketplaceAccountId])
GO
ALTER TABLE [dbo].[MarketplaceWebhooks] CHECK CONSTRAINT [FK_MPWebhook_Account]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notification_Customer]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItem_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Seller]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payment_Order]
GO
ALTER TABLE [dbo].[ProductAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttribute_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductAttributes] CHECK CONSTRAINT [FK_ProductAttribute_Product]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
ALTER TABLE [dbo].[ProductInventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[WarehouseLocations] ([LocationId])
GO
ALTER TABLE [dbo].[ProductInventory] CHECK CONSTRAINT [FK_Inventory_Location]
GO
ALTER TABLE [dbo].[ProductInventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductInventory] CHECK CONSTRAINT [FK_Inventory_Product]
GO
ALTER TABLE [dbo].[ProductInventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[ProductInventory] CHECK CONSTRAINT [FK_Inventory_Seller]
GO
ALTER TABLE [dbo].[ProductInventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Warehouse] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[ProductInventory] CHECK CONSTRAINT [FK_Inventory_Warehouse]
GO
ALTER TABLE [dbo].[ProductPrices]  WITH CHECK ADD  CONSTRAINT [FK_ProductPrice_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductPrices] CHECK CONSTRAINT [FK_ProductPrice_Product]
GO
ALTER TABLE [dbo].[ProductPrices]  WITH CHECK ADD  CONSTRAINT [FK_ProductPrice_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[ProductPrices] CHECK CONSTRAINT [FK_ProductPrice_Seller]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductTypes] ([ProductTypeId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Seller]
GO
ALTER TABLE [dbo].[PurchaseOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_POItem_PO] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrderId])
GO
ALTER TABLE [dbo].[PurchaseOrderItems] CHECK CONSTRAINT [FK_POItem_PO]
GO
ALTER TABLE [dbo].[PurchaseOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_POItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[PurchaseOrderItems] CHECK CONSTRAINT [FK_POItem_Product]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH CHECK ADD  CONSTRAINT [FK_PO_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [FK_PO_Seller]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH CHECK ADD  CONSTRAINT [FK_PO_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [FK_PO_Supplier]
GO
ALTER TABLE [dbo].[PurchaseReturns]  WITH CHECK ADD  CONSTRAINT [FK_PR_GRN] FOREIGN KEY([GoodsReceiptNoteId])
REFERENCES [dbo].[GoodsReceiptNotes] ([GoodsReceiptNoteId])
GO
ALTER TABLE [dbo].[PurchaseReturns] CHECK CONSTRAINT [FK_PR_GRN]
GO
ALTER TABLE [dbo].[PurchaseReturns]  WITH CHECK ADD  CONSTRAINT [FK_PR_PO] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrderId])
GO
ALTER TABLE [dbo].[PurchaseReturns] CHECK CONSTRAINT [FK_PR_PO]
GO
ALTER TABLE [dbo].[PurchaseReturns]  WITH CHECK ADD  CONSTRAINT [FK_PR_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
GO
ALTER TABLE [dbo].[PurchaseReturns] CHECK CONSTRAINT [FK_PR_Supplier]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Review_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Review_Customer]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Review_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Review_Product]
GO
ALTER TABLE [dbo].[SalesInvoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order] FOREIGN KEY([SalesOrderId])
REFERENCES [dbo].[SalesOrders] ([SalesOrderId])
GO
ALTER TABLE [dbo].[SalesInvoices] CHECK CONSTRAINT [FK_Invoice_Order]
GO
ALTER TABLE [dbo].[SalesOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_SOItem_Order] FOREIGN KEY([SalesOrderId])
REFERENCES [dbo].[SalesOrders] ([SalesOrderId])
GO
ALTER TABLE [dbo].[SalesOrderItems] CHECK CONSTRAINT [FK_SOItem_Order]
GO
ALTER TABLE [dbo].[SalesOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_SOItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[SalesOrderItems] CHECK CONSTRAINT [FK_SOItem_Product]
GO
ALTER TABLE [dbo].[SalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrder_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[SalesOrders] CHECK CONSTRAINT [FK_SalesOrder_Customer]
GO
ALTER TABLE [dbo].[SalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrder_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[SalesOrders] CHECK CONSTRAINT [FK_SalesOrder_Seller]
GO
ALTER TABLE [dbo].[SellerCustomers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[SellerCustomers] CHECK CONSTRAINT [FK_Customers_Seller]
GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipment_Order]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
ALTER TABLE [dbo].[StockAdjustments]  WITH CHECK ADD  CONSTRAINT [FK_Adjustment_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[StockAdjustments] CHECK CONSTRAINT [FK_Adjustment_Product]
GO
ALTER TABLE [dbo].[StockAdjustments]  WITH CHECK ADD  CONSTRAINT [FK_Adjustment_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[StockAdjustments] CHECK CONSTRAINT [FK_Adjustment_Seller]
GO
ALTER TABLE [dbo].[StockAdjustments]  WITH CHECK ADD  CONSTRAINT [FK_Adjustment_Warehouse] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[StockAdjustments] CHECK CONSTRAINT [FK_Adjustment_Warehouse]
GO
ALTER TABLE [dbo].[StockLedger]  WITH CHECK ADD  CONSTRAINT [FK_StockLedger_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[StockLedger] CHECK CONSTRAINT [FK_StockLedger_Product]
GO
ALTER TABLE [dbo].[StockLedger]  WITH CHECK ADD  CONSTRAINT [FK_StockLedger_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[StockLedger] CHECK CONSTRAINT [FK_StockLedger_Seller]
GO
ALTER TABLE [dbo].[StockLedger]  WITH CHECK ADD  CONSTRAINT [FK_StockLedger_Warehouse] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[StockLedger] CHECK CONSTRAINT [FK_StockLedger_Warehouse]
GO
ALTER TABLE [dbo].[StockMovement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[StockMovement] CHECK CONSTRAINT [FK_Movement_Product]
GO
ALTER TABLE [dbo].[StockMovement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[StockMovement] CHECK CONSTRAINT [FK_Movement_Seller]
GO
ALTER TABLE [dbo].[StockMovement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Warehouse] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[StockMovement] CHECK CONSTRAINT [FK_Movement_Warehouse]
GO
ALTER TABLE [dbo].[StockTransfers]  WITH CHECK ADD  CONSTRAINT [FK_Transfer_FromWarehouse] FOREIGN KEY([FromWarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[StockTransfers] CHECK CONSTRAINT [FK_Transfer_FromWarehouse]
GO
ALTER TABLE [dbo].[StockTransfers]  WITH CHECK ADD  CONSTRAINT [FK_Transfer_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[StockTransfers] CHECK CONSTRAINT [FK_Transfer_Product]
GO
ALTER TABLE [dbo].[StockTransfers]  WITH CHECK ADD  CONSTRAINT [FK_Transfer_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[StockTransfers] CHECK CONSTRAINT [FK_Transfer_Seller]
GO
ALTER TABLE [dbo].[StockTransfers]  WITH CHECK ADD  CONSTRAINT [FK_Transfer_ToWarehouse] FOREIGN KEY([ToWarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[StockTransfers] CHECK CONSTRAINT [FK_Transfer_ToWarehouse]
GO
ALTER TABLE [dbo].[SupplierProducts]  WITH CHECK ADD  CONSTRAINT [FK_SupplierProducts_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[SupplierProducts] CHECK CONSTRAINT [FK_SupplierProducts_Product]
GO
ALTER TABLE [dbo].[SupplierProducts]  WITH CHECK ADD  CONSTRAINT [FK_SupplierProducts_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
GO
ALTER TABLE [dbo].[SupplierProducts] CHECK CONSTRAINT [FK_SupplierProducts_Supplier]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Supplier_Seller]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Seller]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_SellerCustomer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_SellerCustomer]
GO
ALTER TABLE [dbo].[WarehouseLocations]  WITH CHECK ADD  CONSTRAINT [FK_Location_Warehouse] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[WarehouseLocations] CHECK CONSTRAINT [FK_Location_Warehouse]
GO
ALTER TABLE [dbo].[Warehouses]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_Seller] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[Warehouses] CHECK CONSTRAINT [FK_Warehouse_Seller]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItem_Product]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItem_Wishlist] FOREIGN KEY([WishlistId])
REFERENCES [dbo].[Wishlists] ([WishlistId])
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItem_Wishlist]
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[SellerCustomers] ([CustomerId])
GO
ALTER TABLE [dbo].[Wishlists] CHECK CONSTRAINT [FK_Wishlist_Customer]
GO
USE [master]
GO
ALTER DATABASE [SellerPortalDB] SET  READ_WRITE 
GO
