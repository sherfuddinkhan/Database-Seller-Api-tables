CREATE TABLE [dbo].[PaymentSettings](
	[PaymentSettingsId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BankName] [nvarchar](200) NULL,
	[AccountHolderName] [nvarchar](200) NULL,
	[AccountNumber] [nvarchar](100) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[BranchName] [nvarchar](200) NULL,
	[GatewayName] [nvarchar](100) NULL,
	[GatewayMerchantId] [nvarchar](200) NULL,
	[GatewayKey] [nvarchar](500) NULL,
	[GatewaySecret] [nvarchar](500) NULL,
	[GatewayEnabled] [bit] NOT NULL,
	[UPIId] [nvarchar](200) NULL,
	[UPIName] [nvarchar](200) NULL,
	[UPIEnabled] [bit] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentSettingsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
