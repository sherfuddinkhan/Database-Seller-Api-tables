CREATE TABLE [dbo].[WarehouseLocations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[LocationCode] [nvarchar](50) NOT NULL,
	[LocationName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[SellerId] [int] NULL,
	[ListingStatus] [nvarchar](20) NULL,
	[FulfillmentProfile] [nvarchar](50) NULL,
	[FacilityCode] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
