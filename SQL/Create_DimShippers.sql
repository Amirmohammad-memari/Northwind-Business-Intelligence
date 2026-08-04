USE [NorthWindDW]
GO

/****** Object:  Table [dbo].[DimShippers]    Script Date: 8/4/2026 10:33:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimShippers](
	[ShipperSK] [int] IDENTITY(1,1) NOT NULL,
	[ShipperID] [int] NULL,
	[CompanyName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShipperSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


