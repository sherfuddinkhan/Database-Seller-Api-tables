CREATE TABLE [dbo].[Gatepasses](
	[GatepassId] [int] IDENTITY(1,1) NOT NULL,
	[GatepassCode] [varchar](50) NOT NULL,
	[FacilityCode] [varchar](50) NOT NULL,
	[ItemSkuCode] [varchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Reason] [varchar](500) NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[Facility] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
	[purpose] [varchar](100) NULL,
	[transferAmount] [decimal](18, 2) NULL,
	[type] [varchar](30) NULL,
	[partyCode] [varchar](50) NULL,
	[inventoryType] [varchar](30) NULL,
	[shelfCode] [varchar](50) NULL,
	[statusCode] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[GatepassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
