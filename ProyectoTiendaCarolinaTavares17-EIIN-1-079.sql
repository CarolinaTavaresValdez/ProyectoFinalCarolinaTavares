
/*Nombre:Carolina Tavares Valdez Matricula: 17-EIIN-1-079 Seccion: 0541*/



USE [master]
GO
/****** Object:  Database [Tienda de Vegetales]    Script Date: 6/8/18 2:14:40 p. m. ******/
CREATE DATABASE [Tienda de Vegetales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tienda de Vegetales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Tienda de Vegetales.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tienda de Vegetales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Tienda de Vegetales_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Tienda de Vegetales] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tienda de Vegetales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tienda de Vegetales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tienda de Vegetales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tienda de Vegetales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tienda de Vegetales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tienda de Vegetales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tienda de Vegetales] SET  MULTI_USER 
GO
ALTER DATABASE [Tienda de Vegetales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tienda de Vegetales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tienda de Vegetales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tienda de Vegetales] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tienda de Vegetales] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tienda de Vegetales] SET QUERY_STORE = OFF
GO
USE [Tienda de Vegetales]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Tienda de Vegetales]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 6/8/18 2:14:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Dirrecion] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle]    Script Date: 6/8/18 2:14:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle](
	[DetalleID] [int] NOT NULL,
	[VentasID] [int] NULL,
	[Cantidad] [int] NULL,
	[PrecioUnitario] [money] NULL,
	[ProductoID] [int] NULL,
 CONSTRAINT [PK_Detalle] PRIMARY KEY CLUSTERED 
(
	[DetalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 6/8/18 2:14:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoID] [int] NOT NULL,
	[Nombre] [varchar](150) NULL,
	[PrecioUnitario] [money] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 6/8/18 2:14:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentasID] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[ClienteID] [int] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[VentasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (1, N'Maria del Carmen', N'calle v', N'809-770-9483')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (2, N'Jose Garcia', N'calle r', N'809-585-6769')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (3, N'Diana Retes', N'calle 13', N'809-933-9893')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (4, N'Reyna Fernandez', N'calle visitante', N'809-000-7777')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (5, N'Juana Fierro', N'calle 85', N'809-768-3333')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (6, N'Dariel Diaz', N'calle 857', N'809-848-4848')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (7, N'Bety del Rosario', N'calle 34', N'809-377-3837')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (8, N'Carmen del Orbe', N'calle 93', N'809-283-3837')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (9, N'Marta Rodriguez', N'calle393', N'809-838-3837')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Dirrecion], [Telefono]) VALUES (10, N'Delia de los santos', N'calle fg', N'809-844-4949')
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (1, 2, 2, 43.0000, 1)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (2, 1, 47, 56.0000, 2)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (3, 3, 56, 45.0000, 1)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (4, 5, 4848, 45.0000, 8)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (5, 6, 44, 46.0000, 3)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (6, 9, 47, 484.0000, 4)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (7, 7, 595, 43.0000, 1)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (8, 99, 56, 92.0000, 10)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (9, 3, 883, 43.0000, 1)
INSERT [dbo].[Detalle] ([DetalleID], [VentasID], [Cantidad], [PrecioUnitario], [ProductoID]) VALUES (10, 1, 39, 45.0000, 7)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (1, N'Zanahoria', 43.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (2, N'Tayota', 49.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (3, N'Pepino', 39.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (4, N'Remolacha', 83.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (5, N'Lechuga', 24.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (6, N'Espinaca', 48.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (7, N'Rabano', 34.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (8, N'Puerro', 67.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (9, N'Brocoli', 30.0000)
INSERT [dbo].[Producto] ([ProductoID], [Nombre], [PrecioUnitario]) VALUES (10, N'Zucchinni', 56.0000)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (1, CAST(N'2012-02-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (2, CAST(N'2012-01-29T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (3, CAST(N'2015-08-13T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (4, CAST(N'2018-06-13T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (5, CAST(N'2013-12-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (6, CAST(N'2013-12-12T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (7, CAST(N'2017-08-02T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (8, CAST(N'2015-08-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (9, CAST(N'2013-09-07T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (10, CAST(N'2013-03-04T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Ventas] ([VentasID], [Fecha], [ClienteID]) VALUES (11, CAST(N'2018-04-09T00:00:00.000' AS DateTime), 1)
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Cliente]
GO
USE [master]
GO
ALTER DATABASE [Tienda de Vegetales] SET  READ_WRITE 
GO
