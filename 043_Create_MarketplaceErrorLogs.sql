CREATE TABLE [dbo].[MarketplaceErrorLogs](
	[MarketplaceErrorLogId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NULL,
	[SyncJobId] [int] NULL,
	[ErrorCode] [nvarchar](100) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[LoggedOn] [datetime] NULL,
	[Resolved] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceErrorLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
