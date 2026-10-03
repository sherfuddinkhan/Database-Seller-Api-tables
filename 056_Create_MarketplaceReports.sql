CREATE TABLE [dbo].[MarketplaceReports](
	[MarketplaceReportId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[ReportType] [nvarchar](150) NULL,
	[ReportId] [nvarchar](200) NULL,
	[ProcessingStatus] [nvarchar](100) NULL,
	[ReportDocumentId] [nvarchar](200) NULL,
	[RequestedDate] [datetime] NULL,
	[CompletedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
