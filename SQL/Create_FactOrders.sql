USE [NorthWindDW]
GO

/****** Object:  Table [dbo].[FactOrders]    Script Date: 8/4/2026 10:33:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactOrders](
	[UnitPrice] [money] NULL,
	[Quantity] [smallint] NULL,
	[Discount] [real] NULL,
	[TotalSales] [real] NULL,
	[AllocatedFreight] [numeric](10, 3) NULL,
	[OrderDateKey] [int] NULL,
	[RequiredDateKey] [int] NULL,
	[ShippedDateKey] [int] NULL,
	[CustomersSK] [int] NULL,
	[ProductsSK] [int] NULL,
	[ShipperSK] [int] NULL,
	[EmployeeSK] [int] NULL,
	[GeographySK] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_FactOrders_DimDate] FOREIGN KEY([OrderDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_FactOrders_DimDate]
GO

ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_FactOrders_DimEmployee] FOREIGN KEY([EmployeeSK])
REFERENCES [dbo].[DimEmployee] ([EmployeeSK])
GO

ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_FactOrders_DimEmployee]
GO

ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_FactOrders_DimProducts] FOREIGN KEY([ProductsSK])
REFERENCES [dbo].[DimProducts] ([ProductsSK])
GO

ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_FactOrders_DimProducts]
GO

ALTER TABLE [dbo].[FactOrders]  WITH CHECK ADD  CONSTRAINT [FK_FactOrders_DimShippers] FOREIGN KEY([ShipperSK])
REFERENCES [dbo].[DimShippers] ([ShipperSK])
GO

ALTER TABLE [dbo].[FactOrders] CHECK CONSTRAINT [FK_FactOrders_DimShippers]
GO


