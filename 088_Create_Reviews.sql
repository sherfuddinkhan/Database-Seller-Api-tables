CREATE TABLE [dbo].[Reviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Rating] [int] NULL,
	[Review] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](200) NULL,
	[CustomerImage] [nvarchar](500) NULL,
	[VerifiedBuyer] [bit] NOT NULL,
	[ProductName] [nvarchar](300) NULL,
	[ProductSku] [nvarchar](100) NULL,
	[ProductImage] [nvarchar](500) NULL,
	[Marketplace] [nvarchar](100) NULL,
	[ReviewTitle] [nvarchar](300) NULL,
	[HelpfulCount] [int] NOT NULL,
	[ReviewImages] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
