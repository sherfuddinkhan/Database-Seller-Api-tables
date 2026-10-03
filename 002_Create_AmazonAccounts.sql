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
