CREATE TABLE [dbo].[ProductComboComponents](
	[parentProductId] [int] NULL,
	[childProductId] [int] NULL,
	[childSku] [nvarchar](100) NULL,
	[quantityPerPack] [int] NULL
) ON [PRIMARY]
GO
