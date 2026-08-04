USE [NorthWindDW]
GO

/****** Object:  Table [dbo].[DimCustomers]    Script Date: 8/4/2026 10:31:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomers](
	[CustomersSK] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nvarchar](5) NULL,
	[CompanyName] [nvarchar](40) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[GeographySK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomersSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimCustomers]  WITH CHECK ADD  CONSTRAINT [FK_DimCustomers_DimGeography] FOREIGN KEY([GeographySK])
REFERENCES [dbo].[DimGeography] ([GeographySK])
GO

ALTER TABLE [dbo].[DimCustomers] CHECK CONSTRAINT [FK_DimCustomers_DimGeography]
GO


