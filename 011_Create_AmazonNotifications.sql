CREATE TABLE [dbo].[AmazonNotifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[DestinationId] [nvarchar](100) NULL,
	[NotificationType] [nvarchar](100) NULL,
	[PayloadVersion] [nvarchar](50) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
