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
