CREATE TABLE [dbo].[ProductPackages](
	[PackageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Length] [decimal](18, 2) NOT NULL,
	[Breadth] [decimal](18, 2) NOT NULL,
	[Height] [decimal](18, 2) NOT NULL,
	[Weight] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsFragile] [bit] NOT NULL,
	[FlipkartPackageId] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[PackageType] [nvarchar](50) NULL,
	[IsHazardous] [bit] NULL,
	[DefectCount] [int] NULL,
	[DefectDetails] [nvarchar](max) NULL,
	[PackageXID] [int] NULL,
	[IsPrimary] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
