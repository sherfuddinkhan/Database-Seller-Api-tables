CREATE TABLE [dbo].[AmazonFinancialEvents](
	[FinancialEventId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonOrderId] [nvarchar](100) NULL,
	[EventType] [nvarchar](100) NULL,
	[Amount] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[PostedDate] [datetime] NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FinancialEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
