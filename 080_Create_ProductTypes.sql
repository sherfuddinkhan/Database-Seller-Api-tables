CREATE TABLE [dbo].[ProductTypes](
	[ProductTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductTypeCode] [nvarchar](100) NULL,
	[CategoryId] [int] NULL,
	[HSNCode] [nvarchar](50) NULL,
	[GSTPercentage] [decimal](18, 2) NULL,
	[ImageUrl] [nvarchar](1000) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[DisplayOrder] [int] NULL,
	[IconUrl] [nvarchar](500) NULL,
	[IsSystemDefined] [bit] NULL,
	[ChannelCode] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
