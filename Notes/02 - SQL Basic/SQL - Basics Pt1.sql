CREATE DATABASE DotNetCourseDatabase
GO
USE DotNetCourseDatabase

GO

CREATE SCHEMA TutorialAppSchema
GO

CREATE TABLE TutorialAppSchema.Computer(
    ComputerId INT IDENTITY(1,1) PRIMARY KEY,
    -- MotherBoard CHAR(10) 'x         '
    -- MotherBoard VARCHAR(10) 'x'
    MotherBoard VARCHAR(10),
    CPUCore INT,
    HasWifi BIT,
    HasLTE Bit,
    ReleaseDate DATETIME,
    Price DECIMAL,
    VideoCard NVARCHAR(50)
)

INSERT INTO TutorialAppSchema.Computer (MotherBoard, CPUCore, HasWifi, HasLTE, Price, VideoCard)
VALUES
('ASUS1234', 8, 1, 1, 999.99, 'NVIDIA RTX 3060'),
('MSI5678', 6, 1, 0, 799.99, 'AMD Radeon RX 580'),
('GIGABYTE1', 4, 0, 0, 499.99, 'Intel UHD Graphics'),
('DELLXPS15', 8, 1, 1, 1199.99, 'NVIDIA RTX 3070'),
('HPZBook14', 6, 1, 1, 899.99, 'AMD Radeon RX Vega'),
('ASUSROG17', 12, 1, 0, 1599.99, 'NVIDIA RTX 3080'),
('LENOVOYT5', 4, 0, 1, 649.99, 'Intel Iris Xe'),
('ACERAspire7', 6, 1, 0, 749.99, 'NVIDIA GTX 1650'),
('APPLEMBP', 10, 1, 0, 2499.99, 'Apple M2 GPU'),
('DELLINSP15', 6, 1, 0, 699.99, 'AMD Radeon RX 550'),
('HPOMEN30L', 16, 1, 1, 1899.99, 'NVIDIA RTX 3090'),
('MSIStealth', 12, 1, 0, 1399.99, 'NVIDIA RTX 3070'),
('ASUSZenB', 8, 1, 0, 1099.99, 'AMD Radeon RX 6600M'),
('GIGAAERO', 12, 1, 1, 1499.99, 'NVIDIA RTX 3080'),
('ACERPred10', 8, 1, 0, 1199.99, 'NVIDIA GTX 1660'),
('LENOVOLeg', 6, 1, 1, 799.99, 'AMD Radeon RX 560'),
('HPENVY17', 4, 0, 1, 599.99, 'Intel UHD Graphics 620'),
('DELLG515', 8, 1, 0, 999.99, 'NVIDIA RTX 2060'),
('MSIAlpha', 12, 1, 1, 1299.99, 'AMD Radeon RX 6700M'),
('ASUSVivoB', 4, 1, 0, 549.99, 'Intel Iris Plus Graphics');


ALTER TABLE TutorialAppSchema.Computer
ALTER COLUMN ReleaseDate VARCHAR(30); -- Adjust the size as needed


-- Add a new column '[ReleaseDate]' to table '[TableName]' in schema '[dbo]'
ALTER TABLE TutorialAppSchema.Computer
    ADD ReleaseDate DATETIME

Select * from TutorialAppSchema.Computer

GO

Select * from TutorialAppSchema.Computer where 1 = 0;

INSERT INTO TutorialAppSchema.Computer

GO

DELETE FROM TutorialAppSchema.Computer WHERE ComputerId = 9

GO

UPDATE TutorialAppSchema.Computer SET CPUCore = 9 WHERE ComputerId = 10


GO

UPDATE TutorialAppSchema.Computer 
SET ReleaseDate = '2023-01-01';

SELECT * FROM

