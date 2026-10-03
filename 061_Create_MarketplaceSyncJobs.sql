CREATE TABLE [dbo].[MarketplaceSyncJobs](
	[MarketplaceSyncJobId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[SyncType] [nvarchar](100) NULL,
	[StartedOn] [datetime] NULL,
	[CompletedOn] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[TotalRecords] [int] NULL,
	[SuccessRecords] [int] NULL,
	[FailedRecords] [int] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceSyncJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
