CREATE TABLE [dbo].[MarketplaceApiLogs](
	[MarketplaceApiLogId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[ApiName] [nvarchar](300) NULL,
	[HttpMethod] [nvarchar](20) NULL,
	[RequestUrl] [nvarchar](1000) NULL,
	[RequestBody] [nvarchar](max) NULL,
	[ResponseBody] [nvarchar](max) NULL,
	[HttpStatusCode] [int] NULL,
	[DurationMs] [int] NULL,
	[RequestTime] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceApiLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
