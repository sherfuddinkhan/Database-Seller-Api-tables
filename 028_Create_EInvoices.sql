CREATE TABLE [dbo].[EInvoices](
	[EInvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[SalesInvoiceId] [int] NULL,
	[InvoiceNumber] [nvarchar](100) NULL,
	[IRN] [nvarchar](200) NULL,
	[AckNo] [nvarchar](100) NULL,
	[AckDate] [datetime2](7) NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[AckNumber] [nvarchar](100) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[IRNNumber] [nvarchar](200) NULL,
	[InvoiceDate] [datetime2](7) NULL,
	[QrCode] [nvarchar](max) NULL,
	[SignedInvoice] [nvarchar](max) NULL,
	[SignedQrCode] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EInvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
