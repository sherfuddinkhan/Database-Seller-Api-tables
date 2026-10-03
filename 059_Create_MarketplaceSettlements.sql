CREATE TABLE [dbo].[MarketplaceSettlements](
	[MarketplaceSettlementId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[SettlementNumber] [nvarchar](100) NULL,
	[SettlementStartDate] [datetime] NULL,
	[SettlementEndDate] [datetime] NULL,
	[SettlementDate] [datetime] NULL,
	[Currency] [nvarchar](20) NULL,
	[GrossSales] [decimal](18, 2) NULL,
	[Commission] [decimal](18, 2) NULL,
	[ShippingFee] [decimal](18, 2) NULL,
	[Tax] [decimal](18, 2) NULL,
	[RefundAmount] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceSettlementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
