CREATE TABLE [dbo].[SaleOrderAddresses](
	[AddressId] [varchar](50) NOT NULL,
	[SalesOrderId] [int] NULL,
	[Name] [varchar](100) NULL,
	[AddressLine1] [varchar](255) NULL,
	[AddressLine2] [varchar](255) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[StateCode] [varchar](10) NULL,
	[CountryCode] [varchar](2) NULL,
	[Pincode] [varchar](10) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Latitude] [varchar](20) NULL,
	[Longitude] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
