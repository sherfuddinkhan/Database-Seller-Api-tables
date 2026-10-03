CREATE TABLE [dbo].[vendorItemCustomFields](
	[id] [int] NOT NULL,
	[vendorItemMasterId] [int] NULL,
	[name] [varchar](100) NULL,
	[value] [varchar](255) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[FieldName] [nvarchar](200) NULL,
	[FieldValue] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
