USE [master]
GO
/****** Object:  Database [mytestdb]    Script Date: 5/8/2022 2:14:41 PM ******/
CREATE DATABASE [mytestdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mytestdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mytestdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mytestdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mytestdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [mytestdb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mytestdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mytestdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mytestdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mytestdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mytestdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mytestdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [mytestdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mytestdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mytestdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mytestdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mytestdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mytestdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mytestdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mytestdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mytestdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mytestdb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mytestdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mytestdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mytestdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mytestdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mytestdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mytestdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mytestdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mytestdb] SET RECOVERY FULL 
GO
ALTER DATABASE [mytestdb] SET  MULTI_USER 
GO
ALTER DATABASE [mytestdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mytestdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mytestdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mytestdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mytestdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mytestdb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'mytestdb', N'ON'
GO
ALTER DATABASE [mytestdb] SET QUERY_STORE = OFF
GO
USE [mytestdb]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 5/8/2022 2:14:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeApp_departments]    Script Date: 5/8/2022 2:14:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeApp_departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeApp_employees]    Script Date: 5/8/2022 2:14:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeApp_employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](500) NOT NULL,
	[Department] [nvarchar](500) NOT NULL,
	[DateOfJoining] [date] NOT NULL,
	[PhotoFileName] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 

INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'EmployeeApp', N'0001_initial', CAST(N'2022-05-08T10:35:31.1894490' AS DateTime2))
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeApp_departments] ON 

INSERT [dbo].[EmployeeApp_departments] ([DepartmentId], [DepartmentName]) VALUES (1, N'It')
INSERT [dbo].[EmployeeApp_departments] ([DepartmentId], [DepartmentName]) VALUES (2, N'Support')
INSERT [dbo].[EmployeeApp_departments] ([DepartmentId], [DepartmentName]) VALUES (3, N'Tech')
SET IDENTITY_INSERT [dbo].[EmployeeApp_departments] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeApp_employees] ON 

INSERT [dbo].[EmployeeApp_employees] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (1, N'uu', N'it', CAST(N'2020-05-05' AS Date), N'anonymous.png')
INSERT [dbo].[EmployeeApp_employees] ([EmployeeId], [EmployeeName], [Department], [DateOfJoining], [PhotoFileName]) VALUES (3, N'yy', N'Support', CAST(N'2019-05-02' AS Date), N'anonymous.png')
SET IDENTITY_INSERT [dbo].[EmployeeApp_employees] OFF
GO
USE [master]
GO
ALTER DATABASE [mytestdb] SET  READ_WRITE 
GO
