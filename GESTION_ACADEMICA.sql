USE [master]
GO
/****** Object:  Database [BDGestionAcademica]    Script Date: 17/12/2021 9:51:57 ******/
CREATE DATABASE [BDGestionAcademica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDGestionAcademica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDGestionAcademica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDGestionAcademica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDGestionAcademica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDGestionAcademica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDGestionAcademica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDGestionAcademica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDGestionAcademica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDGestionAcademica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDGestionAcademica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDGestionAcademica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDGestionAcademica] SET  MULTI_USER 
GO
ALTER DATABASE [BDGestionAcademica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDGestionAcademica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDGestionAcademica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDGestionAcademica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDGestionAcademica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDGestionAcademica] SET QUERY_STORE = OFF
GO
USE [BDGestionAcademica]
GO
/****** Object:  Table [dbo].[CatAsignaturas]    Script Date: 17/12/2021 9:51:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatAsignaturas](
	[IdAsignatura] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[NHoras] [int] NULL,
	[IdCarrera] [int] NULL,
 CONSTRAINT [PK_CatAsignaturas] PRIMARY KEY CLUSTERED 
(
	[IdAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatCarrera]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatCarrera](
	[IdCarrera] [int] IDENTITY(1,1) NOT NULL,
	[Descipcion] [nvarchar](50) NULL,
	[IdPlan] [int] NULL,
 CONSTRAINT [PK_CatCarrera] PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatDocente]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatDocente](
	[IdDocente] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
 CONSTRAINT [PK_CatDocente] PRIMARY KEY CLUSTERED 
(
	[IdDocente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatEstudiante]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatEstudiante](
	[IdEstdiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
 CONSTRAINT [PK_CatEstudiante] PRIMARY KEY CLUSTERED 
(
	[IdEstdiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatPlanes]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatPlanes](
	[IdPlan] [int] IDENTITY(1,1) NOT NULL,
	[NombrePlan] [nvarchar](50) NULL,
	[Descipcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_CatPlanes] PRIMARY KEY CLUSTERED 
(
	[IdPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialNotas]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialNotas](
	[IdNota] [int] IDENTITY(1,1) NOT NULL,
	[IdMatricula] [int] NULL,
	[IdEstudiante] [int] NULL,
	[IdDocente] [int] NULL,
	[IdAsignatura] [int] NULL,
	[Acumulado] [float] NULL,
	[Examen] [float] NULL,
	[NotaFinal] [float] NULL,
 CONSTRAINT [PK_HistorialNotas] PRIMARY KEY CLUSTERED 
(
	[IdNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblGrupos]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblGrupos](
	[IdGrupo] [int] IDENTITY(1,1) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblGrupos] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMatriculas]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMatriculas](
	[IdMatricula] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[IdEstudiante] [int] NULL,
	[IdCarrera] [int] NULL,
	[IdGrupo] [int] NULL,
 CONSTRAINT [PK_TblMatriculas] PRIMARY KEY CLUSTERED 
(
	[IdMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CatCarrera] ON 

INSERT [dbo].[CatCarrera] ([IdCarrera], [Descipcion], [IdPlan]) VALUES (1, N'Ing civil', NULL)
INSERT [dbo].[CatCarrera] ([IdCarrera], [Descipcion], [IdPlan]) VALUES (2, N'Computacion', NULL)
INSERT [dbo].[CatCarrera] ([IdCarrera], [Descipcion], [IdPlan]) VALUES (3, N'Ingles', NULL)
SET IDENTITY_INSERT [dbo].[CatCarrera] OFF
GO
SET IDENTITY_INSERT [dbo].[CatEstudiante] ON 

INSERT [dbo].[CatEstudiante] ([IdEstdiante], [Nombres], [Apellidos]) VALUES (1, N'wilber', N'matus')
SET IDENTITY_INSERT [dbo].[CatEstudiante] OFF
GO
SET IDENTITY_INSERT [dbo].[TblMatriculas] ON 

INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (2, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (3, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (4, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (5, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (6, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (7, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (8, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 2, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (9, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 2, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (10, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 2, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (11, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 2, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (12, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (13, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (14, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (15, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (16, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (17, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (18, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (19, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (20, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (21, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (22, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 2, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (23, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 2, NULL)
INSERT [dbo].[TblMatriculas] ([IdMatricula], [Fecha], [IdEstudiante], [IdCarrera], [IdGrupo]) VALUES (24, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[TblMatriculas] OFF
GO
ALTER TABLE [dbo].[CatCarrera]  WITH CHECK ADD  CONSTRAINT [FK_CatCarrera_CatPlanes] FOREIGN KEY([IdPlan])
REFERENCES [dbo].[CatPlanes] ([IdPlan])
GO
ALTER TABLE [dbo].[CatCarrera] CHECK CONSTRAINT [FK_CatCarrera_CatPlanes]
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD  CONSTRAINT [FK_HistorialNotas_CatAsignaturas] FOREIGN KEY([IdAsignatura])
REFERENCES [dbo].[CatAsignaturas] ([IdAsignatura])
GO
ALTER TABLE [dbo].[HistorialNotas] CHECK CONSTRAINT [FK_HistorialNotas_CatAsignaturas]
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD  CONSTRAINT [FK_HistorialNotas_CatDocente] FOREIGN KEY([IdDocente])
REFERENCES [dbo].[CatDocente] ([IdDocente])
GO
ALTER TABLE [dbo].[HistorialNotas] CHECK CONSTRAINT [FK_HistorialNotas_CatDocente]
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD  CONSTRAINT [FK_HistorialNotas_CatEstudiante] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[CatEstudiante] ([IdEstdiante])
GO
ALTER TABLE [dbo].[HistorialNotas] CHECK CONSTRAINT [FK_HistorialNotas_CatEstudiante]
GO
ALTER TABLE [dbo].[HistorialNotas]  WITH CHECK ADD  CONSTRAINT [FK_HistorialNotas_TblMatriculas] FOREIGN KEY([IdMatricula])
REFERENCES [dbo].[TblMatriculas] ([IdMatricula])
GO
ALTER TABLE [dbo].[HistorialNotas] CHECK CONSTRAINT [FK_HistorialNotas_TblMatriculas]
GO
ALTER TABLE [dbo].[TblMatriculas]  WITH CHECK ADD  CONSTRAINT [FK_TblMatriculas_CatCarrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[CatCarrera] ([IdCarrera])
GO
ALTER TABLE [dbo].[TblMatriculas] CHECK CONSTRAINT [FK_TblMatriculas_CatCarrera]
GO
ALTER TABLE [dbo].[TblMatriculas]  WITH CHECK ADD  CONSTRAINT [FK_TblMatriculas_TblGrupos] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[TblGrupos] ([IdGrupo])
GO
ALTER TABLE [dbo].[TblMatriculas] CHECK CONSTRAINT [FK_TblMatriculas_TblGrupos]
GO
/****** Object:  StoredProcedure [dbo].[usp_informeMatriculas]    Script Date: 17/12/2021 9:51:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_informeMatriculas]   
    @Fecha1 date,   
    @Fecha2 date   
AS   
    SET NOCOUNT ON;  
     SELECT count(TblMatriculas.IdMatricula) as Num, CatCarrera.Descipcion 
	FROM TblMatriculas inner join CatCarrera on CatCarrera.IdCarrera = TblMatriculas.IdCarrera
	Where TblMatriculas.Fecha between @Fecha1 and @Fecha2
	group by TblMatriculas.IdCarrera, CatCarrera.Descipcion 

GO
USE [master]
GO
ALTER DATABASE [BDGestionAcademica] SET  READ_WRITE 
GO
