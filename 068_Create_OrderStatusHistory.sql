CREATE TABLE [dbo].[OrderStatusHistory](
	[OrderStatusHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Status] [nvarchar](100) NULL,
	[Remarks] [nvarchar](500) NULL,
	[ChangedOn] [datetime] NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[Timestamp] [datetime] NOT NULL,
	[SalesOrderId] [int] NULL,
	[StatusCode] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderStatusHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
