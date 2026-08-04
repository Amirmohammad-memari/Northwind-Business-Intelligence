USE [NorthWindDW]
GO

/****** Object:  Table [dbo].[DimGeography]    Script Date: 8/4/2026 10:32:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimGeography](
	[GeographySK] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](15) NULL,
	[region] [nvarchar](15) NULL,
	[country] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[GeographySK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


