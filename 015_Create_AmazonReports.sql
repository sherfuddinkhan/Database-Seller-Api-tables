CREATE TABLE [dbo].[AmazonReports](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonReportId] [nvarchar](100) NOT NULL,
	[ReportType] [nvarchar](200) NULL,
	[ProcessingStatus] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NULL,
	[ProcessingStartTime] [datetime] NULL,
	[ProcessingEndTime] [datetime] NULL,
	[ReportDocumentId] [nvarchar](100) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
