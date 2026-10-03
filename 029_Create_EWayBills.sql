CREATE TABLE [dbo].[EWayBills](
	[EWayBillId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[SalesInvoiceId] [int] NOT NULL,
	[EwbNumber] [nvarchar](50) NULL,
	[EwayBillNo] [nvarchar](50) NULL,
	[VehicleNo] [nvarchar](20) NULL,
	[TransporterName] [nvarchar](200) NULL,
	[TransporterID] [nvarchar](20) NULL,
	[Distance] [nvarchar](20) NULL,
	[TransportMode] [nvarchar](20) NULL,
	[EWayBillDate] [datetime2](7) NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AckNumber] [nvarchar](100) NULL,
	[EWayBillNumber] [nvarchar](100) NULL,
	[EwbNo] [nvarchar](100) NULL,
	[TransactionType] [nvarchar](50) NULL,
	[ValidUpto] [datetime2](7) NULL,
	[VehicleType] [nvarchar](50) NULL,
	[FromPlace] [nvarchar](200) NULL,
	[ToPlace] [nvarchar](200) NULL,
	[TotalValue] [decimal](18, 2) NULL,
	[TransporterDocNo] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EWayBillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
