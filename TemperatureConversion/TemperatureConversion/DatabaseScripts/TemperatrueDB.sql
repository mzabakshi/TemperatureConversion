USE [master]
GO

/****** Object:  Database [TemperatureDB]    Script Date: 12/6/2021 1:22:21 PM ******/
CREATE DATABASE [TemperatureDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TemperatureDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TemperatureDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TemperatureDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TemperatureDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [TemperatureDB] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TemperatureDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [TemperatureDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [TemperatureDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [TemperatureDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [TemperatureDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [TemperatureDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [TemperatureDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [TemperatureDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [TemperatureDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [TemperatureDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [TemperatureDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [TemperatureDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [TemperatureDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [TemperatureDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [TemperatureDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [TemperatureDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [TemperatureDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [TemperatureDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [TemperatureDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [TemperatureDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [TemperatureDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [TemperatureDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [TemperatureDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [TemperatureDB] SET RECOVERY FULL 
GO

ALTER DATABASE [TemperatureDB] SET  MULTI_USER 
GO

ALTER DATABASE [TemperatureDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [TemperatureDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [TemperatureDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [TemperatureDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [TemperatureDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [TemperatureDB] SET QUERY_STORE = OFF
GO

ALTER DATABASE [TemperatureDB] SET  READ_WRITE 
GO



USE [TemperatureDB]
GO

/****** Object:  Table [dbo].[TemperatureRecords]    Script Date: 12/6/2021 1:22:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TemperatureRecords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fahrenheit] [decimal](18, 0) NULL,
	[Celsius] [decimal](18, 0) NULL,
	[CreatedDate] [nvarchar](50) NULL,
	[UserId] [nvarchar](50) NULL,
 CONSTRAINT [PK_TemperatureRecords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


