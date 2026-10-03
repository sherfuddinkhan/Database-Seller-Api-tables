CREATE TABLE [dbo].[ShippingManifests](
	[ShippingManifestCode] [varchar](50) NOT NULL,
	[Channel] [varchar](50) NULL,
	[ShippingProviderCode] [varchar](50) NULL,
	[ShippingMethodCode] [varchar](50) NULL,
	[Comments] [text] NULL,
	[Status] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[ShippingProviderName] [nvarchar](100) NULL,
	[ThirdPartyShipping] [bit] NOT NULL,
	[courierCode] [nvarchar](50) NULL,
	[trackingNumber] [nvarchar](100) NULL,
	[manifestType] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShippingManifestCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
