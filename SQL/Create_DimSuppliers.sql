USE [NorthWindDW]
GO

/****** Object:  Table [dbo].[DimSuppliers]    Script Date: 8/4/2026 10:33:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSuppliers](
	[SuppliersSK] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[CompanyName] [nvarchar](40) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[GeographySK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SuppliersSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_DimSuppliers_DimGeography] FOREIGN KEY([GeographySK])
REFERENCES [dbo].[DimGeography] ([GeographySK])
GO

ALTER TABLE [dbo].[DimSuppliers] CHECK CONSTRAINT [FK_DimSuppliers_DimGeography]
GO


