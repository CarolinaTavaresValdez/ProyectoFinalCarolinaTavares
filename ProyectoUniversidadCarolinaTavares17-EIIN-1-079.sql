
/*Nombre:CarolinaTavaresValdez Matrciula:17-EIIN-1-079 Seccion:0541*/


USE [master]
GO
/****** Object:  Database [Universidad del sur]    Script Date: 6/8/18 2:27:32 p. m. ******/
CREATE DATABASE [Universidad del sur]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Univerdad del Sur', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Univerdad del Sur.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Univerdad del Sur_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Univerdad del Sur_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Universidad del sur] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Universidad del sur].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Universidad del sur] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Universidad del sur] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Universidad del sur] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Universidad del sur] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Universidad del sur] SET ARITHABORT OFF 
GO
ALTER DATABASE [Universidad del sur] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Universidad del sur] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Universidad del sur] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Universidad del sur] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Universidad del sur] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Universidad del sur] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Universidad del sur] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Universidad del sur] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Universidad del sur] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Universidad del sur] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Universidad del sur] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Universidad del sur] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Universidad del sur] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Universidad del sur] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Universidad del sur] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Universidad del sur] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Universidad del sur] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Universidad del sur] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Universidad del sur] SET  MULTI_USER 
GO
ALTER DATABASE [Universidad del sur] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Universidad del sur] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Universidad del sur] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Universidad del sur] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Universidad del sur] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Universidad del sur] SET QUERY_STORE = OFF
GO
USE [Universidad del sur]
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
USE [Universidad del sur]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 6/8/18 2:27:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[CalificacionID] [int] NOT NULL,
	[MateriaID] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[ProfesorID] [int] NULL,
	[EstudianteID] [int] NULL,
	[Calificacion1] [float] NULL,
	[Calificacion2] [float] NULL,
	[Calificacion3] [float] NULL,
	[Promedio] [float] NULL,
	[Examen Final] [float] NULL,
	[Calficacionfinal] [float] NULL,
 CONSTRAINT [PK_Calificacion] PRIMARY KEY CLUSTERED 
(
	[CalificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 6/8/18 2:27:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[CarreraID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Tanda] [varchar](10) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[CarreraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 6/8/18 2:27:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[EstudianteID] [int] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[Matricula] [varchar](15) NULL,
	[CarreraID] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 6/8/18 2:27:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[MateriaID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[CarreraID] [int] NULL,
	[ProfesorID] [int] NULL,
	[Horario] [nchar](10) NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[MateriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 6/8/18 2:27:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[ProfesorID] [int] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[MateriaID] [int] NULL,
	[Sexo] [char](1) NULL,
	[Dirreccion] [varchar](100) NULL,
	[Telefono] [varchar](13) NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (1, 1, N'Matematica', 1, 1, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (2, 2, N'Quimica', 3, 3, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (3, 3, N'Letras', 3, 4, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (4, 4, N'Dibujp', 5, 1, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (5, 5, N'Contabilidad', 1, 5, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (6, 6, N'Diseno', 7, 1, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (7, 7, N'ventas', 2, 1, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (8, 8, N'Laboratoriofisica', 1, 1, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (9, 9, N'fisca', 1, 1, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Calificacion] ([CalificacionID], [MateriaID], [Nombre], [ProfesorID], [EstudianteID], [Calificacion1], [Calificacion2], [Calificacion3], [Promedio], [Examen Final], [Calficacionfinal]) VALUES (10, 10, N'Laboratorioquimica', 1, 1, 20, 20, 20, 60, 40, 100)
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (1, N'Ingenieria industrial', N'Vespertina')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (2, N'Arquitetura', N'Vespertina')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (3, N'Derecho', N'Vespertina')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (4, N'Informatica', N'Nocturna')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (5, N'Mercadeo', N'Nocturna')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (6, N'Publicidad', N'Vespertina')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (7, N'Quimica', N'Vespertina')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (8, N'Diseno', N'Nocturna')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (9, N'Medicina', N'Vespertina')
INSERT [dbo].[Carrera] ([CarreraID], [Nombre], [Tanda]) VALUES (10, N'Letras', N'Nocturna')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (1, N'Fernando batista', N'1720', 1, CAST(N'1992-02-01T00:00:00.000' AS DateTime), N'm')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (2, N'Laura Bertre', N'1721', 1, CAST(N'1993-03-01T00:00:00.000' AS DateTime), N'f')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (3, N'Marcia Diaz', N'1722', 2, CAST(N'1989-04-06T00:00:00.000' AS DateTime), N'f')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (4, N'Juan Perez', N'1733', 2, CAST(N'1988-06-01T00:00:00.000' AS DateTime), N'm')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (5, N'Jone Polanco', N'1834', 4, CAST(N'1996-12-19T00:00:00.000' AS DateTime), N'm')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (6, N'Maria Polanco', N'1292', 7, CAST(N'1994-09-08T00:00:00.000' AS DateTime), N'f')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (7, N'Cristofer Perez', N'1234', 3, CAST(N'1998-08-02T00:00:00.000' AS DateTime), N'm')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (8, N'Miguel Mercedes', N'1287', 6, CAST(N'1992-04-03T00:00:00.000' AS DateTime), N'm')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (9, N'Dariel Valdes', N'1289', 10, CAST(N'1993-04-04T00:00:00.000' AS DateTime), N'm')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CarreraID], [FechaNacimiento], [Sexo]) VALUES (10, N'Laura Perez', N'1020', 8, CAST(N'1993-04-09T00:00:00.000' AS DateTime), N'f')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (1, N'Matematica', 1, 1, N'Vespertina')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (2, N'Quimica', 3, 2, N'Vespertina')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (3, N'Letras', 2, 5, N'Nocturna  ')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (4, N'Dibujo', 1, 2, N'Vespertina')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (5, N'Contabilidad', 2, 4, N'Nocturna  ')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (6, N'Diseno', 4, 4, N'Vespertina')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (7, N'Ventas', 2, 1, N'Nocturna  ')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (8, N'fisica', 7, 6, N'Vespertina')
INSERT [dbo].[Materia] ([MateriaID], [Nombre], [CarreraID], [ProfesorID], [Horario]) VALUES (9, N'laboratoriofisica', 1, 1, N'Nocturna  ')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (1, N'Juan gonzalez', 1, N'm', N'calle lola', N'949329329285', N'juan@hotmail.com')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (2, N'Maria Gomez', 1, N'f', N'calle c', N'238988383995', N'maria@gmail.com')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (3, N'Dilcia Baez', 3, N'f', N'calle f', N'238984428884', N'dilcia@gmail')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (4, N'Pedro Mozo', 4, N'm', N'calle v', N'283838484025', N'pedro@gmail.com')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (5, N'Alfredo Mejia', 3, N'm', N'calle 20', N'239048348882', N'alfredo@gmail.com')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (6, N'Laura Rodriguez', 6, N'f', N'calle 06', N'293849002834', N'laura@gmail.com')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (7, N'Leiydi Pena', 4, N'f', N'calle 34', N'235376588995', N'leidy@gmailcom')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (8, N'Denzel Garcia', 5, N'm', N'calle 560', N'595869869065', N'denzel@hotmail.com')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [MateriaID], [Sexo], [Dirreccion], [Telefono], [Email]) VALUES (9, N'Eric Gil', 6, N'm', N'calle 23', N'289384789345', N'eric@gmail.com')
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Estudiante] FOREIGN KEY([CalificacionID])
REFERENCES [dbo].[Estudiante] ([EstudianteID])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Estudiante]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Carrera] FOREIGN KEY([CarreraID])
REFERENCES [dbo].[Carrera] ([CarreraID])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Carrera]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([CarreraID])
REFERENCES [dbo].[Carrera] ([CarreraID])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Profesor] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesor] ([ProfesorID])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Profesor]
GO
USE [master]
GO
ALTER DATABASE [Universidad del sur] SET  READ_WRITE 
GO
