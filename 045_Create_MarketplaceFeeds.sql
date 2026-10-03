CREATE TABLE [dbo].[MarketplaceFeeds](
	[MarketplaceFeedId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[FeedType] [nvarchar](100) NOT NULL,
	[FeedId] [nvarchar](200) NULL,
	[ProcessingStatus] [nvarchar](100) NULL,
	[SubmittedDate] [datetime] NULL,
	[ProcessingStarted] [datetime] NULL,
	[ProcessingCompleted] [datetime] NULL,
	[FeedDocumentId] [nvarchar](200) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceFeedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
