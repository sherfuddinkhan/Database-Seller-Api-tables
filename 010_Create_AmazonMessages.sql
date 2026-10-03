CREATE TABLE [dbo].[AmazonMessages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonOrderId] [nvarchar](100) NULL,
	[MessageType] [nvarchar](100) NULL,
	[Subject] [nvarchar](500) NULL,
	[MessageBody] [nvarchar](max) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
