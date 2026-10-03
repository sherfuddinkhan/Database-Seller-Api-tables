CREATE TABLE [dbo].[ProductImages](
	[ProductImageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImageUrl] [nvarchar](500) NOT NULL,
	[DisplayOrder] [int] NULL,
	[IsPrimary] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[SellerId] [int] NULL,
	[ImageSize] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ImageName] [nvarchar](255) NULL,
	[ImageType] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
