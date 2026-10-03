CREATE TABLE [dbo].[ManifestPackages](
	[ManifestPackageId] [int] IDENTITY(1,1) NOT NULL,
	[ShippingManifestCode] [varchar](50) NOT NULL,
	[ShippingPackageCode] [varchar](50) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_ManifestPackages] PRIMARY KEY CLUSTERED 
(
	[ManifestPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
