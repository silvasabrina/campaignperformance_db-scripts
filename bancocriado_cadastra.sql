CREATE DATABASE campaignperformance_db;
USE campaignperformance_db;
CREATE TABLE DimDate (
    DateID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    Year YEAR(4),
    Month INT,
    Day INT
);

CREATE TABLE DimBrand (
    BrandID INT AUTO_INCREMENT PRIMARY KEY,
    BrandName VARCHAR(255) NOT NULL
);

CREATE TABLE DimMedia (
    MediaID INT AUTO_INCREMENT PRIMARY KEY,
    MediaType VARCHAR(255) NOT NULL
);

CREATE TABLE DimCampaign (
    CampaignID INT AUTO_INCREMENT PRIMARY KEY,
    CampaignName VARCHAR(255) NOT NULL
);

CREATE TABLE FactSales (
    FactID INT AUTO_INCREMENT PRIMARY KEY,
    DateID INT,
    BrandID INT,
    MediaID INT,
    CampaignID INT,
    Investment DECIMAL(10, 2),
    Revenue DECIMAL(10, 2),
    Impressions INT,
    Clicks INT,
    Sessions INT,
    Users INT,
    Views INT,
    Conversions INT,
    FOREIGN KEY (DateID) REFERENCES DimDate(DateID),
    FOREIGN KEY (BrandID) REFERENCES DimBrand(BrandID),
    FOREIGN KEY (MediaID) REFERENCES DimMedia(MediaID),
    FOREIGN KEY (CampaignID) REFERENCES DimCampaign(CampaignID)
);
