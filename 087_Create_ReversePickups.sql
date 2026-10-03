CREATE TABLE [dbo].[ReversePickups](
	[ReversePickupId] [int] IDENTITY(1,1) NOT NULL,
	[ReversePickupNo] [varchar](50) NOT NULL,
	[SaleOrderCode] [varchar](100) NOT NULL,
	[SaleOrderItemCode] [varchar](100) NOT NULL,
	[ItemSkuCode] [varchar](100) NOT NULL,
	[TrackingNo] [varchar](100) NULL,
	[ReturnReason] [varchar](500) NULL,
	[ReversePickupStatus] [varchar](50) NOT NULL,
	[CourierProviderName] [varchar](100) NULL,
	[FacilityCode] [varchar](50) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[ChannelName] [nvarchar](100) NULL,
	[PutawayCode] [nvarchar](100) NULL,
	[QCComment] [nvarchar](500) NULL,
	[reversePickupCode] [varchar](50) NULL,
	[actionCode] [varchar](10) NULL,
	[trackingNumber] [varchar](50) NULL,
	[shippingProviderCode] [varchar](50) NULL,
	[pickupInstruction] [text] NULL,
	[returnFacilityCode] [varchar](50) NULL,
	[boxLength] [decimal](18, 2) NULL,
	[boxWidth] [decimal](18, 2) NULL,
	[boxHeight] [decimal](18, 2) NULL,
	[boxWeight] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReversePickupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
