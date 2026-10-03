IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'SellerPortalDB')
BEGIN
CREATE DATABASE [SellerPortalDB];
END
GO
USE [SellerPortalDB]
GO
