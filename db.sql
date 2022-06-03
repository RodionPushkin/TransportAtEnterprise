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
INSERT INTO [CarStatus] ([Title]) VALUES ('�� ��������'), ('c�������'), ('� �������'), ('������')

-- [DriverStatus]
DROP TABLE IF EXISTS [DriverStatus]

CREATE TABLE [DriverStatus] (
	[ID] INT NOT NULL identity(1,1) PRIMARY KEY,
	[Title] NVARCHAR(100) NOT NULL UNIQUE,
)
INSERT INTO [DriverStatus] ([Title]) VALUES ('�� ��������'), ('c�������'), ('� �������'), ('�����')

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
('���������� 1','������ 1','2000-12-01',10,2),
('���������� 2','������ 2','2000-12-02',10,2),
('���������� 3','������ 3','2000-12-03',10,2),
('���������� 4','������ 4','2000-12-04',10,2),
('���������� 5','������ 5','2000-12-05',10,2),
('���������� 6','������ 6','2000-12-06',10,3),
('���������� 7','������ 7','2000-12-07',10,3),
('���������� 8','������ 8','2000-12-08',10,3),
('���������� 9','������ 9','2000-12-09',10,3),
('���������� 10','������ 10','2000-12-10',10,3),
('���������� 11','������ 11','2000-12-11',10,1),
('���������� 12','������ 12','2000-12-12',10,1),
('���������� 13','������ 13','2000-12-13',10,1),
('���������� 14','������ 14','2000-12-14',10,1),
('���������� 15','������ 15','2000-12-15',10,1)

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
	[DriverLicenseFinish] DATE NOT NULL,
	[DriverLicense] NVARCHAR(100) NOT NULL,
	[IDStatus] INT NOT NULL DEFAULT 1 REFERENCES [DriverStatus] ([ID]),
	[IsDeleted] BIT NOT NULL DEFAULT 0,
)
INSERT INTO [Driver] ([FirstName],[LastName],[Patronymic],[Birthday],[Salary],[Phone],[DriverLicenseFinish],[DriverLicense],[IDStatus]) VALUES 
('������','���������',NULL,'2000-12-01',1000,'89295608601','2024-12-01','10010001',1),
('���������','��������','����������','2000-12-02',1000,'89295608602','2024-12-02','10010002',1),
('������','����������',NULL,'2000-12-03',1000,'89295608603','2024-12-03','10010003',1),
('����','��������','����������','2000-12-04',1000,'89295608604','2024-12-04','10010004',1),
('������','����������',NULL,'2000-12-05',1000,'89295608605','2024-12-05','10010005',1),
('�����','���������','���������','2000-12-06',1000,'89295608606','2024-12-06','10010006',2),
('�����','��������',NULL,'2000-12-07',1000,'89295608607','2024-12-07','10010007',2),
('�����','���������','�������������','2000-12-08',1000,'89295608608','2024-12-08','10010008',2),
('����','�����',NULL,'2000-12-09',1000,'89295608609','2024-12-09','10010009',2),
('����','��������','��������','2000-12-10',1000,'89295608610','2024-12-10','10010010',2),
('������','������',NULL,'2000-12-11',1000,'89295608611','2024-12-11','10010011',3),
('������','���������','����������','2000-12-12',1000,'89295608612','2024-12-12','10010012',3),
('������','��������',NULL,'2000-12-13',1000,'89295608613','2024-12-13','10010013',3),
('�������','�������','��������','2000-12-14',1000,'89295608614','2024-12-14','10010014',3),
('�������','��������',NULL,'2000-12-15',1000,'89295608615','2024-12-15','10010015',3)

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
