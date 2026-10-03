CREATE TABLE [dbo].[BrandModels](
	[BrandModelId] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NOT NULL,
	[ModelName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[ProductId] [int] NULL,
	[BrandCode] [nvarchar](100) NULL,
	[BrandName] [nvarchar](200) NULL,
	[Specifications] [nvarchar](2000) NULL,
	[ImageUrl] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
