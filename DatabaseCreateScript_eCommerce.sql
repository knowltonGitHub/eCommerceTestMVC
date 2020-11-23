USE [master]
GO

/****** Object:  Database [eCommerceCarRentals]    Script Date: 11/23/2020 9:30:44 AM ******/
CREATE DATABASE [eCommerceCarRentals]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eCommerceCarRentals', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eCommerceCarRentals.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eCommerceCarRentals_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eCommerceCarRentals_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eCommerceCarRentals].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [eCommerceCarRentals] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET ARITHABORT OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [eCommerceCarRentals] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [eCommerceCarRentals] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET  DISABLE_BROKER 
GO

ALTER DATABASE [eCommerceCarRentals] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [eCommerceCarRentals] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [eCommerceCarRentals] SET  MULTI_USER 
GO

ALTER DATABASE [eCommerceCarRentals] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [eCommerceCarRentals] SET DB_CHAINING OFF 
GO

ALTER DATABASE [eCommerceCarRentals] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [eCommerceCarRentals] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [eCommerceCarRentals] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [eCommerceCarRentals] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [eCommerceCarRentals] SET QUERY_STORE = OFF
GO

ALTER DATABASE [eCommerceCarRentals] SET  READ_WRITE 
GO

USE [eCommerceCarRentals]
GO

/****** Object:  Table [dbo].[CarImages]    Script Date: 11/23/2020 9:32:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CarImages](
	[ID] [uniqueidentifier] NOT NULL,
	[ImageTag] [nvarchar](50) NOT NULL,
	[CarImage] [image] NULL,
	[ParentCarID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [eCommerceCarRentals]
GO

/****** Object:  Table [dbo].[CarType]    Script Date: 11/23/2020 9:33:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CarType](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

USE [eCommerceCarRentals]
GO

/****** Object:  Table [dbo].[RentalCar]    Script Date: 11/23/2020 9:34:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RentalCar](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CarType] [int] NOT NULL,
	[ImageID] [int] NOT NULL
) ON [PRIMARY]
GO

USE [eCommerceCarRentals]
GO

/****** Object:  Table [dbo].[UsersTable]    Script Date: 11/23/2020 9:34:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UsersTable](
	[ID] [uniqueidentifier] NOT NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CanRentCar] [bit] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[UsersTable] ADD  CONSTRAINT [DF_Users_CanRentCar]  DEFAULT ((0)) FOR [CanRentCar]
GO





