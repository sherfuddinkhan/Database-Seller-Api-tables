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
