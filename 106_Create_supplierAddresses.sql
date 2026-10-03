CREATE TABLE [dbo].[supplierAddresses](
	[supplierAddressId] [int] NOT NULL,
	[supplierId] [int] NULL,
	[addressType] [varchar](20) NULL,
	[addressLine1] [varchar](255) NULL,
	[addressLine2] [varchar](255) NULL,
	[countryCode] [varchar](2) NULL,
	[stateCode] [varchar](5) NULL,
	[city] [varchar](100) NULL,
	[pincode] [varchar](10) NULL,
	[phone] [varchar](20) NULL,
	[latitude] [varchar](20) NULL,
	[longitude] [varchar](20) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
