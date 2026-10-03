CREATE TABLE [dbo].[MarketplaceSyncLogs](
	[MarketplaceSyncLogId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceSyncJobId] [int] NOT NULL,
	[EntityName] [nvarchar](150) NULL,
	[EntityId] [nvarchar](200) NULL,
	[ActionType] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[LoggedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceSyncLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
