CREATE TABLE [dbo].[SalesInvoicePayments](
	[SalesInvoicePaymentId] [int] IDENTITY(1,1) NOT NULL,
	[SalesInvoiceId] [int] NOT NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentMode] [nvarchar](100) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[ReferenceNumber] [nvarchar](200) NULL,
	[Remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SalesInvoicePayments] PRIMARY KEY CLUSTERED 
(
	[SalesInvoicePaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
