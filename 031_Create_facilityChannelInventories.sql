CREATE TABLE [dbo].[facilityChannelInventories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sellerId] [int] NOT NULL,
	[customerId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[skuCode] [nvarchar](100) NOT NULL,
	[facilityCode] [nvarchar](50) NOT NULL,
	[channelCode] [nvarchar](50) NOT NULL,
	[sellableQuantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
