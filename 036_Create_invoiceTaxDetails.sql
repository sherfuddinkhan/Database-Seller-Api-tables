CREATE TABLE [dbo].[invoiceTaxDetails](
	[salesInvoiceId] [int] NULL,
	[channelProductId] [varchar](50) NULL,
	[taxPercentage] [decimal](5, 2) NULL,
	[centralGst] [decimal](18, 2) NULL,
	[stateGst] [decimal](18, 2) NULL,
	[integratedGst] [decimal](18, 2) NULL,
	[compensationCess] [decimal](18, 2) NULL,
	[InvoiceTaxDetailId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_InvoiceTaxDetails] PRIMARY KEY CLUSTERED 
(
	[InvoiceTaxDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
