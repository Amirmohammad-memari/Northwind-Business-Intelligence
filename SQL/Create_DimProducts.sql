USE [NorthWindDW]
GO

/****** Object:  Table [dbo].[DimProducts]    Script Date: 8/4/2026 10:32:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProducts](
	[ProductsSK] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](40) NULL,
	[CategoryName] [nvarchar](15) NULL,
	[SuppliersSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductsSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimProducts]  WITH CHECK ADD  CONSTRAINT [FK_DimProducts_DimSuppliers] FOREIGN KEY([SuppliersSK])
REFERENCES [dbo].[DimSuppliers] ([SuppliersSK])
GO

ALTER TABLE [dbo].[DimProducts] CHECK CONSTRAINT [FK_DimProducts_DimSuppliers]
GO


