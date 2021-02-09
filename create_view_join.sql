USE [final-project];
GO
CREATE VIEW [final_table] AS
	SELECT 
	v.FullName,
	v.Winery,
	v.WineName,
	v.Year,
	v.Region,
	v.RegionalVariety,
	v.VintageRating,
	v.VintageRatingCount,
	v.VintagePrice,
	v.VintageRatingPriceRatio,
	v.Age,
	w.WineRating,
	w.WineRatingCount,
	w.WinePrice,
	w.WineRatingPriceRatio
	FROM [final-project].[dbo].[vintage]v
		RIGHT JOIN [final-project].[dbo].[wine]w
			ON v.FullName=w.FullName