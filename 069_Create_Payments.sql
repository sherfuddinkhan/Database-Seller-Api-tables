CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[TransactionId] [nvarchar](150) NULL,
	[PaymentDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BankName] [nvarchar](150) NULL,
	[AccountHolderName] [nvarchar](150) NULL,
	[AccountNumber] [nvarchar](100) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[BranchName] [nvarchar](150) NULL,
	[GatewayName] [nvarchar](100) NULL,
	[GatewayMerchantId] [nvarchar](150) NULL,
	[GatewayKey] [nvarchar](250) NULL,
	[GatewaySecret] [nvarchar](500) NULL,
	[GatewayEnabled] [bit] NOT NULL,
	[UPIId] [nvarchar](150) NULL,
	[UPIName] [nvarchar](150) NULL,
	[UPIEnabled] [bit] NOT NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
