USE master

DROP DATABASE IF EXISTS [TransportAtEnterpriseDB]

CREATE DATABASE [TransportAtEnterpriseDB]
GO
USE [TransportAtEnterpriseDB]

-- [User]
DROP TABLE IF EXISTS [User]

CREATE TABLE [User] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[Email] NVARCHAR(320) NOT NULL UNIQUE,
	[Token] NVARCHAR(32) NOT NULL UNIQUE,
)
INSERT INTO [User] ([Email],[Token]) VALUES ('1','ec6c5bca94e93b963b3d18a57ca5cf62')

-- [CarStatus]
DROP TABLE IF EXISTS [CarStatus]

CREATE TABLE [CarStatus] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[Title] NVARCHAR(100) NOT NULL UNIQUE,
)
INSERT INTO [CarStatus] ([Title]) VALUES ('не доступно'), ('cвободно'), ('в ремонте'), ('занято')

-- [DriverStatus]
DROP TABLE IF EXISTS [DriverStatus]

CREATE TABLE [DriverStatus] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[Title] NVARCHAR(100) NOT NULL UNIQUE,
)
INSERT INTO [DriverStatus] ([Title]) VALUES ('не доступен'), ('cвободен'), ('в отпуске'), ('занят')

-- [Car]
DROP TABLE IF EXISTS [Car]

CREATE TABLE [Car] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[Title] NVARCHAR(100) NOT NULL,
	[Model] NVARCHAR(32) NOT NULL,
	[DateOfRelease] DATE,
	[Condition] INT NOT NULL DEFAULT 0,
	[IDStatus] INT NOT NULL DEFAULT 1 REFERENCES [CarStatus] ([ID]),
	[IsDeleted] BIT NOT NULL DEFAULT 0,
)
INSERT INTO [Car] ([Title],[Model],[DateOfRelease],[Condition],[IDStatus]) VALUES
('Автомобиль 1','Модель 1','2000.12.01',10,2),
('Автомобиль 2','Модель 2','2000.12.02',10,2),
('Автомобиль 3','Модель 3','2000.12.03',10,2),
('Автомобиль 4','Модель 4','2000.12.04',10,2),
('Автомобиль 5','Модель 5','2000.12.05',10,2),
('Автомобиль 6','Модель 6','2000.12.06',10,3),
('Автомобиль 7','Модель 7','2000.12.07',10,3),
('Автомобиль 8','Модель 8','2000.12.08',10,3),
('Автомобиль 9','Модель 9','2000.12.09',10,3),
('Автомобиль 10','Модель 10','2000.12.10',10,3),
('Автомобиль 11','Модель 11','2000.12.11',10,1),
('Автомобиль 12','Модель 12','2000.12.12',10,1),
('Автомобиль 13','Модель 13','2000.12.13',10,1),
('Автомобиль 14','Модель 14','2000.12.14',10,1),
('Автомобиль 15','Модель 15','2000.12.15',10,1)

-- [Driver]
DROP TABLE IF EXISTS [Driver]

CREATE TABLE [Driver] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[FirstName] NVARCHAR(100) NOT NULL,
	[LastName] NVARCHAR(100) NOT NULL,
	[Patronymic] NVARCHAR(100),
	[Birthday] DATE NOT NULL,
	[Salary] DECIMAL(10,2) NOT NULL,
	[Phone] NCHAR(20) NOT NULL,
	[DriverLicenseEnd] DATE NOT NULL,
	[NumberDriverLicense] NVARCHAR(100) NOT NULL,
	[IDStatus] INT NOT NULL DEFAULT 1 REFERENCES [DriverStatus] ([ID]),
	[IsDeleted] BIT NOT NULL DEFAULT 0,
)
INSERT INTO [Driver] ([FirstName],[LastName],[Patronymic],[Birthday],[Salary],[Phone],[DriverLicenseEnd],[NumberDriverLicense],[IDStatus]) VALUES 
('Ксения','Корнилова',NULL,'2000.12.01',1000,'89295608601','2024.12.12','10010001',1),
('Анастасия','Корнеева','Николаевна','2000.12.02',1000,'89295608602','2024.12.12','10010002',1),
('Даниил','Овчинников',NULL,'2000.12.03',1000,'89295608603','2024.12.12','10010003',1),
('Иван','Степанов','Максимович','2000.12.04',1000,'89295608604','2024.12.12','10010004',1),
('Гордей','Кожевников',NULL,'2000.12.05',1000,'89295608605','2024.12.12','10010005',1),
('София','Трофимова','Сергеевна','2000.12.06',1000,'89295608606','2024.12.12','10010006',2),
('Роман','Софронов',NULL,'2000.12.07',1000,'89295608607','2024.12.12','10010007',2),
('Мария','Васильева','Александровна','2000.12.08',1000,'89295608608','2024.12.12','10010008',2),
('Марк','Левин',NULL,'2000.12.09',1000,'89295608609','2024.12.12','10010009',2),
('Артём','Воробьев','Артёмович','2000.12.10',1000,'89295608610','2024.12.12','10010010',2),
('Кирилл','Петров',NULL,'2000.12.11',1000,'89295608611','2024.12.12','10010011',3),
('Ульяна','Дмитриева','Дмитриевна','2000.12.12',1000,'89295608612','2024.12.12','10010012',3),
('Даниил','Чистяков',NULL,'2000.12.13',1000,'89295608613','2024.12.12','10010013',3),
('Евгений','Соколов','Олегович','2000.12.14',1000,'89295608614','2024.12.12','10010014',3),
('Ярослав','Мартынов',NULL,'2000.12.15',1000,'89295608615','2024.12.12','10010015',3)

-- [DriverCar]
DROP TABLE IF EXISTS [DriverCar]

CREATE TABLE [DriverCar] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[IDDriver] INT NOT NULL REFERENCES [Driver] ([ID]),
	[IDCar] INT NOT NULL REFERENCES [Car] ([ID]),
	[IsDeleted] BIT NOT NULL DEFAULT 0,
)

-- [Path]
DROP TABLE IF EXISTS [Path]

CREATE TABLE [Path] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[IDDriver] INT NOT NULL REFERENCES [Driver] ([ID]),
	[Address] NVARCHAR(1000) NOT NULL,
	[DateTo] DATETIME NOT NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,
)

SELECT * FROM [User] ORDER BY [ID]
SELECT * FROM [CarStatus] ORDER BY [ID]
SELECT * FROM [Car] ORDER BY [ID]
SELECT * FROM [DriverStatus] ORDER BY [ID]
SELECT * FROM [Driver] ORDER BY [ID]
SELECT * FROM [Path] ORDER BY [ID]
