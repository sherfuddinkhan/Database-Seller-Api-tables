CREATE TABLE [dbo].[picklists](
	[picklistCode] [varchar](50) NOT NULL,
	[destination] [varchar](20) NULL,
	[shippingPackageCodes] [text] NULL,
	[createdDate] [datetime] NULL,
	[PicklistId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[picklistCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
