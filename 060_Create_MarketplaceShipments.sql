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
