USE [master]
GO
/****** Object:  Database [ProcheshtaDB]    Script Date: 7/19/2021 1:04:20 PM ******/
CREATE DATABASE [ProcheshtaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProcheshtaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProcheshtaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProcheshtaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProcheshtaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProcheshtaDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProcheshtaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProcheshtaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProcheshtaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProcheshtaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProcheshtaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProcheshtaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProcheshtaDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProcheshtaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProcheshtaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProcheshtaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProcheshtaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProcheshtaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProcheshtaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProcheshtaDB', N'ON'
GO
ALTER DATABASE [ProcheshtaDB] SET QUERY_STORE = OFF
GO
USE [ProcheshtaDB]
GO
/****** Object:  Table [dbo].[BloodGroups]    Script Date: 7/19/2021 1:04:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodGroups](
	[bloodGroupId] [int] IDENTITY(1,1) NOT NULL,
	[bloodGroup] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bloodGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BloodRequest]    Script Date: 7/19/2021 1:04:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodRequest](
	[requestID] [int] IDENTITY(1,1) NOT NULL,
	[patientID] [int] NOT NULL,
	[bloodGroupId] [int] NOT NULL,
	[caseDate] [datetime] NOT NULL,
	[reasonForBlood] [nvarchar](250) NOT NULL,
	[contactNo] [nvarchar](20) NOT NULL,
	[hospitalID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[requestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donors]    Script Date: 7/19/2021 1:04:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donors](
	[donorId] [int] IDENTITY(1,1) NOT NULL,
	[donorName] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[weight] [int] NOT NULL,
	[gender] [nvarchar](20) NOT NULL,
	[bloodGroup] [nvarchar](10) NOT NULL,
	[contactNo] [nvarchar](20) NOT NULL,
	[email] [nvarchar](150) NULL,
	[donorAddress] [nvarchar](250) NOT NULL,
	[lastDonationDate] [datetime] NULL,
	[donorImage] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[donorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 7/19/2021 1:04:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[genderId] [int] IDENTITY(1,1) NOT NULL,
	[gender] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[genderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 7/19/2021 1:04:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[hospitalId] [int] IDENTITY(1,1) NOT NULL,
	[hospitalName] [nvarchar](150) NOT NULL,
	[hospitalAddress] [nvarchar](200) NULL,
	[contactNo] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[hospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 7/19/2021 1:04:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[patientID] [int] IDENTITY(1,1) NOT NULL,
	[patientName] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [nvarchar](20) NOT NULL,
	[bloodGroup] [nvarchar](10) NOT NULL,
	[contactNo] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[patientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BloodGroups] ON 

INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (1, N'A+')
INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (2, N'A-')
INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (3, N'B+')
INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (4, N'B-')
INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (5, N'O+')
INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (6, N'O-')
INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (7, N'AB+')
INSERT [dbo].[BloodGroups] ([bloodGroupId], [bloodGroup]) VALUES (8, N'AB-')
SET IDENTITY_INSERT [dbo].[BloodGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[BloodRequest] ON 

INSERT [dbo].[BloodRequest] ([requestID], [patientID], [bloodGroupId], [caseDate], [reasonForBlood], [contactNo], [hospitalID]) VALUES (2, 3, 2, CAST(N'2021-06-30T00:00:00.000' AS DateTime), N'Operation', N'+880 1789076789', 4)
INSERT [dbo].[BloodRequest] ([requestID], [patientID], [bloodGroupId], [caseDate], [reasonForBlood], [contactNo], [hospitalID]) VALUES (10, 5, 3, CAST(N'2021-07-04T00:00:00.000' AS DateTime), N'Operation', N'01819171615', 3)
INSERT [dbo].[BloodRequest] ([requestID], [patientID], [bloodGroupId], [caseDate], [reasonForBlood], [contactNo], [hospitalID]) VALUES (11, 8, 4, CAST(N'2021-07-05T00:00:00.000' AS DateTime), N'Operation', N'01819171615', 5)
INSERT [dbo].[BloodRequest] ([requestID], [patientID], [bloodGroupId], [caseDate], [reasonForBlood], [contactNo], [hospitalID]) VALUES (16, 25, 1, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'Operation', N'01918171615', 5)
SET IDENTITY_INSERT [dbo].[BloodRequest] OFF
GO
SET IDENTITY_INSERT [dbo].[Donors] ON 

INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (4, N'Borna', 29, 49, N'Female', N'A+', N'018171615144', N'sb@gmail.com', N'Sukrabad, Dhaka', CAST(N'2021-05-31T00:00:00.000' AS DateTime), N'avatar-14.png')
INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (5, N'Labonno', 20, 55, N'Female', N'A-', N'018171615144', N'labonno@gmail.com', N'Joypara', CAST(N'2021-05-30T00:00:00.000' AS DateTime), N'avatar-17.png')
INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (6, N'Arafat Rahman', 38, 78, N'Male', N'B+', N'01819171615', N'arafat@gmail.com', N'Comilla', CAST(N'2021-04-26T00:00:00.000' AS DateTime), N'avatar-13.png')
INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (13, N'Hasib', 25, 55, N'Male', N'AB+', N'01817161514', N'hasib@gmail.com', N'Demra', CAST(N'2021-05-30T00:00:00.000' AS DateTime), N'avatar-12.png')
INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (30, N'Jabin', 32, 58, N'Female', N'O+', N'01918171615', N'jabin@gmail.com', N'South Joypara', CAST(N'2021-06-27T00:00:00.000' AS DateTime), N'avatar-15.png')
INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (31, N'Arikh Rahman', 20, 50, N'Male', N'B-', N'01918171615', N'arikh@gmail.com', N'Joypara Kharakanda', CAST(N'2021-05-31T00:00:00.000' AS DateTime), N'avatar-10.png')
INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (32, N'Shanta', 37, 48, N'Female', N'O-', N'01718191817', N'shanta@gmail.com', N'Nababgonj', CAST(N'2021-05-30T00:00:00.000' AS DateTime), N'avatar-16.png')
INSERT [dbo].[Donors] ([donorId], [donorName], [age], [weight], [gender], [bloodGroup], [contactNo], [email], [donorAddress], [lastDonationDate], [donorImage]) VALUES (44, N'Shanto', 26, 50, N'Male', N'AB-', N'01918171615', N'shanto@gmail.com', N'Khulna', CAST(N'2021-06-28T00:00:00.000' AS DateTime), N'avatar-11.png')
SET IDENTITY_INSERT [dbo].[Donors] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([genderId], [gender]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([genderId], [gender]) VALUES (2, N'Female')
INSERT [dbo].[Gender] ([genderId], [gender]) VALUES (3, N'Others')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Hospital] ON 

INSERT [dbo].[Hospital] ([hospitalId], [hospitalName], [hospitalAddress], [contactNo]) VALUES (1, N'Ad-din Medical Callage Hospital', N'Boro Maghbazar, Dhaka-1217', N'+88 02 9353389')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalName], [hospitalAddress], [contactNo]) VALUES (2, N'United Hospital Gulshan 1', N'Road 71, Gulshan, Dhaka-1212', N'+88 02 8836797')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalName], [hospitalAddress], [contactNo]) VALUES (3, N'Bangladesh Specialized Hospital', N'21 Shyamoli, Mirpur Road, Dhaka-1207', N'+880 9666700187')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalName], [hospitalAddress], [contactNo]) VALUES (4, N'Lab-aid Cardiac and Specialized Hospital', N'House- 06, Road-04, Dhanmondi', N'+88 02 9615497')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalName], [hospitalAddress], [contactNo]) VALUES (5, N'Popular Diagnostic Center', N'House #16, Road # 2, Dhanmondi R/A', N'+880 9613787801')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalName], [hospitalAddress], [contactNo]) VALUES (6, N'Ibn-Sina Medical College & Hospital', N'Plot: 81 Block: E, Dhaka 1229', N'+88 02 9126625-9')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalName], [hospitalAddress], [contactNo]) VALUES (23, N'Central Hospital', N'Dhanmondi', N'+88 02 56768798')
SET IDENTITY_INSERT [dbo].[Hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[Patients] ON 

INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (3, N'Kabirul Bashar', 48, N'Male', N'O-', N'01789076789', N'Savar, Dhaka')
INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (5, N'Mafijul', 33, N'Male', N'B+', N'01718191817', N'Matijhil')
INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (8, N'Sajib', 35, N'Male', N'B-', N'018171615144', N'Dohar')
INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (25, N'Runa', 32, N'Female', N'A+', N'01918171615', N'Ctg')
INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (26, N'Hashim', 55, N'Male', N'A-', N'018171615145', N'Dohar')
INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (27, N'Kashim', 56, N'Male', N'O+', N' 01917161514', N'Khulna')
INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (28, N'Shetu', 32, N'Female', N'AB+', N'01819171615', N'CTG')
INSERT [dbo].[Patients] ([patientID], [patientName], [age], [gender], [bloodGroup], [contactNo], [Address]) VALUES (29, N'Moni', 34, N'Female', N'AB-', N' 01917161514', N'Savar')
SET IDENTITY_INSERT [dbo].[Patients] OFF
GO
ALTER TABLE [dbo].[BloodRequest]  WITH CHECK ADD FOREIGN KEY([bloodGroupId])
REFERENCES [dbo].[BloodGroups] ([bloodGroupId])
GO
ALTER TABLE [dbo].[BloodRequest]  WITH CHECK ADD FOREIGN KEY([hospitalID])
REFERENCES [dbo].[Hospital] ([hospitalId])
GO
ALTER TABLE [dbo].[BloodRequest]  WITH CHECK ADD FOREIGN KEY([patientID])
REFERENCES [dbo].[Patients] ([patientID])
GO
USE [master]
GO
ALTER DATABASE [ProcheshtaDB] SET  READ_WRITE 
GO
