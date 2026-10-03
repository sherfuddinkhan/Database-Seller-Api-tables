CREATE TABLE [dbo].[CustomerReturns](
	[CustomerReturnId] [int] IDENTITY(1,1) NOT NULL,
	[SalesInvoiceId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ReturnNumber] [nvarchar](100) NOT NULL,
	[ReturnDate] [datetime] NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[ReturnAmount] [decimal](18, 2) NOT NULL,
	[Reason] [nvarchar](500) NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[SalesOrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerReturnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
