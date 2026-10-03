CREATE TABLE [dbo].[ProductAttributes](
	[ProductAttributeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[AttributeName] [nvarchar](100) NOT NULL,
	[AttributeValue] [nvarchar](500) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[SellerId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
