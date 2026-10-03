CREATE TABLE [dbo].[SalesInvoiceAdditionalCharges](
	[SalesInvoiceAdditionalChargeId] [int] IDENTITY(1,1) NOT NULL,
	[SalesInvoiceId] [int] NOT NULL,
	[ChargeName] [nvarchar](200) NOT NULL,
	[ChargeType] [nvarchar](100) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[TaxPercentage] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SalesInvoiceAdditionalCharges] PRIMARY KEY CLUSTERED 
(
	[SalesInvoiceAdditionalChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
