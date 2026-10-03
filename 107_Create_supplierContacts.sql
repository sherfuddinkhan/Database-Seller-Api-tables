CREATE TABLE [dbo].[supplierContacts](
	[partyContactId] [int] NOT NULL,
	[supplierId] [int] NULL,
	[contactType] [varchar](20) NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[ContactName] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[partyContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
