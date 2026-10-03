CREATE TABLE [dbo].[ProductAddressLabels](
	[AddressLabelId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ManufacturerDetails] [nvarchar](1000) NOT NULL,
	[ImporterDetails] [nvarchar](1000) NULL,
	[PackerDetails] [nvarchar](1000) NULL,
	[CountryOfOrigin] [nvarchar](10) NOT NULL,
	[MfgDateEpoch] [bigint] NULL,
	[ShelfLifeSeconds] [bigint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ExpiryDateEpoch] [bigint] NULL,
	[Quantity] [nvarchar](50) NULL,
	[Mrp] [decimal](18, 2) NULL,
	[AddressLabelXID] [int] NULL,
	[FSSAILicense] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressLabelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
