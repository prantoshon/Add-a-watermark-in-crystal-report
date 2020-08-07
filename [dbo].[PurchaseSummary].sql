USE [SBMS]
GO

/****** Object:  View [dbo].[PurchaseSummary]    Script Date: 8/7/2020 12:03:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[PurchaseSummary]
AS
SELECT        dbo.Purchase.PurchaseVoucher, dbo.Purchase.PurchaseDate, dbo.Product.Name AS ProductName, dbo.PurchaseDetails.ManufactureDate, dbo.PurchaseDetails.ExpireDate, dbo.PurchaseDetails.Quantity, 
                         dbo.PurchaseDetails.UnitPrice, dbo.PurchaseDetails.TotalPrice, dbo.PurchaseDetails.MRP, dbo.Catagory.Name AS Catagory
FROM            dbo.Purchase INNER JOIN
                         dbo.PurchaseDetails ON dbo.Purchase.PurchaseCode = dbo.PurchaseDetails.Code INNER JOIN
                         dbo.Product ON dbo.PurchaseDetails.ProductCode = dbo.Product.Code INNER JOIN
                         dbo.Catagory ON dbo.Purchase.CatagoryCode = dbo.Catagory.Code

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[12] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Purchase"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 182
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PurchaseDetails"
            Begin Extent = 
               Top = 6
               Left = 257
               Bottom = 210
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 476
               Bottom = 136
               Right = 646
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Catagory"
            Begin Extent = 
               Top = 6
               Left = 684
               Bottom = 102
               Right = 854
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PurchaseSummary'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PurchaseSummary'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PurchaseSummary'
GO


