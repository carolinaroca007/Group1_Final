CREATE TABLE [wine] (
    [FullName] nvarchar(150)  NOT NULL ,
    [Winery] nvarchar(50)  NOT NULL ,
    [WineName] nvarchar(100)  NOT NULL ,
    [Year] nvarchar(50) NOT NULL ,
    [Region] nvarchar(50)  NOT NULL ,
    [RegionalVariety] nvarchar(50)  NOT NULL ,
    [WineRating] float  NOT NULL ,
    [WineRatingCount] int  NOT NULL ,
    [WinePrice] float  NOT NULL ,
    [WineRatingPriceRatio] float  NOT NULL ,
	PRIMARY KEY([FullName])
);

CREATE TABLE [vintage] (
    [FullName] nvarchar(150)  NOT NULL ,
    [Winery] nvarchar(50)  NOT NULL ,
    [WineName] nvarchar(100)  NOT NULL ,
    [Year] nvarchar(50) ,
    [Region] nvarchar(50) ,
    [RegionalVariety] nvarchar(50) ,
    [VintageRating] float  NOT NULL ,
    [VintageRatingCount] int  NOT NULL ,
    [VintagePrice] float  NOT NULL ,
    [VintageRatingPriceRatio] float  NOT NULL ,
    [Age] nvarchar(50) ,
	FOREIGN KEY([FullName]) REFERENCES [wine] ([FullName]),
    PRIMARY KEY([FullName])
);
