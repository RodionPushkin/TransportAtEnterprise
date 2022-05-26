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
INSERT INTO [User] ([Email],[Token]) VALUES ('1','c4ca4238a0b923820dcc509a6f75849b')

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
	[Title] NVARCHAR(100) NOT NULL UNIQUE,
	[Model] NVARCHAR(32) NOT NULL UNIQUE,
	[DateOfRelease] DATE,
	[Condition] INT NOT NULL DEFAULT 0,
	[IDStatus] INT NOT NULL DEFAULT 1 REFERENCES [CarStatus] ([ID]),
)

-- [Driver]
DROP TABLE IF EXISTS [Driver]

CREATE TABLE [Driver] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[FirstName] NVARCHAR(100) NOT NULL,
	[LastName] NVARCHAR(100) NOT NULL,
	[Patrinymic] NVARCHAR(100),
	[Birthday] DATE,
	[Salary] DECIMAL(10,2),
	[Phone] NCHAR(20),
	[DriverLicenseEnd] DATE NOT NULL,
	[IDDriverLicense] NVARCHAR(100) NOT NULL,
	[IDStatus] INT NOT NULL DEFAULT 1 REFERENCES [DriverStatus] ([ID]),
)
SELECT * FROM [User] ORDER BY [ID]
SELECT * FROM [CarStatus] ORDER BY [ID]
SELECT * FROM [Car] ORDER BY [ID]
SELECT * FROM [DriverStatus] ORDER BY [ID]
SELECT * FROM [Driver] ORDER BY [ID]
