/****** Script for SelectTopNRows command from SSMS  ******/
SELECT v.[FullName]
      ,v.[Winery]
      ,v.[WineName]
      ,v.[Year]
      ,v.[Region]
      ,v.[RegionalVariety]
      ,[VintageRating]
      ,[VintageRatingCount]
      ,[VintagePrice]
      ,[VintageRatingPriceRatio]
	  ,w.[WinePrice]
	  ,w.[WineRating]
	  ,w.[WineRatingCount]
	  ,w.[WineRatingPriceRatio]
	  ,v.[Age]
  FROM [dbo].[vintage]v
	RIGHT JOIN [dbo].[wine]w
		ON v.FullName=w.FullName