CREATE TABLE [dbo].[reversePickupAddresses](
	[id] [int] NOT NULL,
	[reversePickupId] [int] NULL,
	[addressType] [varchar](20) NULL,
	[addressLine1] [varchar](255) NULL,
	[city] [varchar](100) NULL,
	[pincode] [varchar](10) NULL,
	[phone] [varchar](20) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
