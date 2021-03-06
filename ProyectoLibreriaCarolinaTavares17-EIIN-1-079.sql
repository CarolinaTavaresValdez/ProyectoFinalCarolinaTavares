
/*Nombre: Carolina Tavares Valdez Matricula: 17-EIIN-1-079 Seccion: 0541*/




USE [master]
GO
/****** Object:  Database [Libreria Shakepeare]    Script Date: 6/8/18 2:12:57 p. m. ******/
CREATE DATABASE [Libreria Shakepeare]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital Salud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Hospital Salud.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospital Salud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Hospital Salud_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Libreria Shakepeare] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Libreria Shakepeare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Libreria Shakepeare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET ARITHABORT OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Libreria Shakepeare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Libreria Shakepeare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Libreria Shakepeare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Libreria Shakepeare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Libreria Shakepeare] SET  MULTI_USER 
GO
ALTER DATABASE [Libreria Shakepeare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Libreria Shakepeare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Libreria Shakepeare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Libreria Shakepeare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Libreria Shakepeare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Libreria Shakepeare] SET QUERY_STORE = OFF
GO
USE [Libreria Shakepeare]
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
USE [Libreria Shakepeare]
GO
/****** Object:  Table [dbo].[Editorial]    Script Date: 6/8/18 2:12:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editorial](
	[EditorialID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Editorial] PRIMARY KEY CLUSTERED 
(
	[EditorialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 6/8/18 2:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[LibroID] [int] NOT NULL,
	[NombreLibro] [varchar](100) NULL,
	[TipolibroID] [int] NULL,
	[EditorialID] [int] NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[LibroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipodelibro]    Script Date: 6/8/18 2:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipodelibro](
	[TipodelibroID] [int] NOT NULL,
	[Genero] [varchar](50) NULL,
 CONSTRAINT [PK_Tipodelibro] PRIMARY KEY CLUSTERED 
(
	[TipodelibroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (1, N'El sol')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (2, N'La Monarca')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (3, N'La libertad')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (4, N'La epopeya')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (5, N'La Gaviota')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (6, N'La Ventana')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (7, N'Renacer')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (8, N'Sol poniente')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (9, N'La Escalera')
INSERT [dbo].[Editorial] ([EditorialID], [Nombre]) VALUES (10, N'Montana')
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (1, N'Salvador Gaviota', 1, 1)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (2, N'La Travesia', 3, 4)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (3, N'La Ciguapa', 4, 5)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (4, N'El amor y otros demonios', 1, 6)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (5, N'El Coronel', 4, 4)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (6, N'Don Quijote', 6, 8)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (7, N'El lazarillo', 1, 7)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (8, N'Once Minutos', 5, 10)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (9, N'El Alquimista', 5, 10)
INSERT [dbo].[Libro] ([LibroID], [NombreLibro], [TipolibroID], [EditorialID]) VALUES (10, N'Ser como el rio', 5, 10)
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (1, N'Novela')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (2, N'Drama')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (3, N'Cuento')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (4, N'Leyenda')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (5, N'Tragedia')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (6, N'Novela')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (7, N'Melodrama')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (8, N'Drama')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (9, N'Tragedia')
INSERT [dbo].[Tipodelibro] ([TipodelibroID], [Genero]) VALUES (10, N'Novela')
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [FK_Libro_Editorial] FOREIGN KEY([EditorialID])
REFERENCES [dbo].[Editorial] ([EditorialID])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [FK_Libro_Editorial]
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [FK_Libro_Tipodelibro] FOREIGN KEY([TipolibroID])
REFERENCES [dbo].[Tipodelibro] ([TipodelibroID])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [FK_Libro_Tipodelibro]
GO
USE [master]
GO
ALTER DATABASE [Libreria Shakepeare] SET  READ_WRITE 
GO
