CREATE TABLE [dbo].[MarketplaceFeedDocuments](
	[MarketplaceFeedDocumentId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceFeedId] [int] NOT NULL,
	[DocumentId] [nvarchar](200) NULL,
	[FileName] [nvarchar](300) NULL,
	[FilePath] [nvarchar](1000) NULL,
	[MimeType] [nvarchar](100) NULL,
	[UploadedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceFeedDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
