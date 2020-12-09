USE [master]
GO
/****** Object:  Database [Miredmedica]    Script Date: 10/11/2020 10:06:17 p. m. ******/
CREATE DATABASE [Miredmedica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Miredmedica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Miredmedica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Miredmedica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Miredmedica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Miredmedica] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Miredmedica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Miredmedica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Miredmedica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Miredmedica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Miredmedica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Miredmedica] SET ARITHABORT OFF 
GO
ALTER DATABASE [Miredmedica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Miredmedica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Miredmedica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Miredmedica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Miredmedica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Miredmedica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Miredmedica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Miredmedica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Miredmedica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Miredmedica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Miredmedica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Miredmedica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Miredmedica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Miredmedica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Miredmedica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Miredmedica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Miredmedica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Miredmedica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Miredmedica] SET  MULTI_USER 
GO
ALTER DATABASE [Miredmedica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Miredmedica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Miredmedica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Miredmedica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Miredmedica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Miredmedica] SET QUERY_STORE = OFF
GO
USE [Miredmedica]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 10/11/2020 10:06:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[idempleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[paterno] [varchar](50) NOT NULL,
	[materno] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[idempresa] [int] NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[idempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 10/11/2020 10:06:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[idempresa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_empresa] PRIMARY KEY CLUSTERED 
(
	[idempresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empleado] ON 
GO
INSERT [dbo].[empleado] ([idempleado], [nombre], [paterno], [materno], [telefono], [correo], [idempresa]) VALUES (1, N'Gerardo', N'Hernandez', N'Ramirez', N'57450136', NULL, 1)
GO
INSERT [dbo].[empleado] ([idempleado], [nombre], [paterno], [materno], [telefono], [correo], [idempresa]) VALUES (2, N'Avi', N'Lopez', N'Contreras', N'574523', NULL, 3)
GO
INSERT [dbo].[empleado] ([idempleado], [nombre], [paterno], [materno], [telefono], [correo], [idempresa]) VALUES (11, N'Gerardo', N'Pere', N'Camilo', N'5745021', NULL, 1)
GO
INSERT [dbo].[empleado] ([idempleado], [nombre], [paterno], [materno], [telefono], [correo], [idempresa]) VALUES (15, N'Raul', N'Arellano', N'Gonzalez', N'5693125', N'Raul@hotmail.com', 1)
GO
SET IDENTITY_INSERT [dbo].[empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[empresa] ON 
GO
INSERT [dbo].[empresa] ([idempresa], [nombre]) VALUES (1, N'Miredmedica')
GO
INSERT [dbo].[empresa] ([idempresa], [nombre]) VALUES (2, N'Indra')
GO
INSERT [dbo].[empresa] ([idempresa], [nombre]) VALUES (3, N'Ingressio')
GO
SET IDENTITY_INSERT [dbo].[empresa] OFF
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_empresa] FOREIGN KEY([idempresa])
REFERENCES [dbo].[empresa] ([idempresa])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_empresa]
GO
USE [master]
GO
ALTER DATABASE [Miredmedica] SET  READ_WRITE 
GO
