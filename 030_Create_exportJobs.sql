CREATE TABLE [dbo].[exportJobs](
	[jobCode] [varchar](50) NOT NULL,
	[exportJobTypeName] [varchar](100) NULL,
	[exportColums] [text] NULL,
	[exportFilters] [text] NULL,
	[scheduleTime] [datetime] NULL,
	[notificationEmail] [varchar](100) NULL,
	[frequency] [varchar](20) NULL,
	[reportName] [varchar](100) NULL,
	[status] [varchar](20) NULL,
	[ExportJobId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_ExportJobs] PRIMARY KEY CLUSTERED 
(
	[ExportJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
