CREATE TABLE [dbo].[Putaways](
	[PutawayId] [int] IDENTITY(1,1) NOT NULL,
	[PutawayCode] [varchar](50) NOT NULL,
	[ShelfCode] [varchar](50) NOT NULL,
	[ItemTypeskuCode] [varchar](100) NOT NULL,
	[PutawayQuantity] [int] NOT NULL,
	[BatchCode] [varchar](50) NULL,
	[InventoryType] [varchar](50) NOT NULL,
	[FacilityCode] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[PutawayType] [varchar](50) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[StatusCode] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PutawayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
