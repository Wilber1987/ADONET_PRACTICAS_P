USE [master]
GO
/****** Object:  Database [INCLUSIVE_BD]    Script Date: 17/12/2021 9:56:13 ******/
CREATE DATABASE [INCLUSIVE_BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'INCLUSIVE_BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\INCLUSIVE_BD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'INCLUSIVE_BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\INCLUSIVE_BD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [INCLUSIVE_BD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [INCLUSIVE_BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [INCLUSIVE_BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [INCLUSIVE_BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [INCLUSIVE_BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [INCLUSIVE_BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [INCLUSIVE_BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET RECOVERY FULL 
GO
ALTER DATABASE [INCLUSIVE_BD] SET  MULTI_USER 
GO
ALTER DATABASE [INCLUSIVE_BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [INCLUSIVE_BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [INCLUSIVE_BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [INCLUSIVE_BD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [INCLUSIVE_BD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [INCLUSIVE_BD] SET QUERY_STORE = OFF
GO
USE [INCLUSIVE_BD]
GO
/****** Object:  Table [dbo].[CatTypeQuestion]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatTypeQuestion](
	[IdType] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_CatTypeQuestion] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatTypeSection]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatTypeSection](
	[IdType] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_CatTypeSection] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolPermission]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolPermission](
	[IdPermission] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[Date] [date] NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_RolPermission] PRIMARY KEY CLUSTERED 
(
	[IdPermission] ASC,
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblForm]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblForm](
	[IdForm] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblForm] PRIMARY KEY CLUSTERED 
(
	[IdForm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblModulos]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblModulos](
	[IdModules] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[State] [nvarchar](50) NULL,
	[IdUserCreator] [int] NULL,
	[image] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblModulos] PRIMARY KEY CLUSTERED 
(
	[IdModules] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMyModules]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMyModules](
	[IdUser] [int] NOT NULL,
	[IdModules] [int] NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_TblMyModules] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC,
	[IdModules] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblNotifications]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNotifications](
	[IdNotification] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IdUser] [int] NULL,
	[Date] [datetime] NULL,
	[state] [int] NULL,
 CONSTRAINT [PK_TblNotifications] PRIMARY KEY CLUSTERED 
(
	[IdNotification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPermission]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPermission](
	[IdPermission] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblPermission] PRIMARY KEY CLUSTERED 
(
	[IdPermission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblQuestion]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblQuestion](
	[IdQuestion] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[IdType] [int] NULL,
	[IdForm] [int] NULL,
 CONSTRAINT [PK_TblQuestion] PRIMARY KEY CLUSTERED 
(
	[IdQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblQuestionOptions]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblQuestionOptions](
	[IdQuestionOption] [int] IDENTITY(1,1) NOT NULL,
	[IdQuestion] [int] NULL,
	[Value] [nvarchar](50) NULL,
	[OptionDesc] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblQuestionOptions] PRIMARY KEY CLUSTERED 
(
	[IdQuestionOption] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRol]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblRol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSections]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSections](
	[IdSection] [int] IDENTITY(1,1) NOT NULL,
	[IdModules] [int] NULL,
	[Descripcion] [nvarchar](500) NULL,
	[Title] [nvarchar](50) NULL,
	[UrlContent] [nvarchar](max) NULL,
	[IdType] [int] NULL,
 CONSTRAINT [PK_TblSections] PRIMARY KEY CLUSTERED 
(
	[IdSection] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsers]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsers](
	[IdUsers] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_TblUsers] PRIMARY KEY CLUSTERED 
(
	[IdUsers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsersRol]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsersRol](
	[IdUser] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[Date] [date] NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblUsersRol] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC,
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersResponse]    Script Date: 17/12/2021 9:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersResponse](
	[IdUser] [int] NOT NULL,
	[IdQuestionOptions] [int] NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_UsersResponse] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC,
	[IdQuestionOptions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CatTypeQuestion] ON 

INSERT [dbo].[CatTypeQuestion] ([IdType], [Description], [State]) VALUES (1, N'number', N'act')
INSERT [dbo].[CatTypeQuestion] ([IdType], [Description], [State]) VALUES (2, N'text', N'act')
INSERT [dbo].[CatTypeQuestion] ([IdType], [Description], [State]) VALUES (3, N'checkbox', N'act')
INSERT [dbo].[CatTypeQuestion] ([IdType], [Description], [State]) VALUES (4, N'radio', N'act')
SET IDENTITY_INSERT [dbo].[CatTypeQuestion] OFF
GO
SET IDENTITY_INSERT [dbo].[CatTypeSection] ON 

INSERT [dbo].[CatTypeSection] ([IdType], [Description], [State]) VALUES (1, N'pdf', N'act')
INSERT [dbo].[CatTypeSection] ([IdType], [Description], [State]) VALUES (2, N'img', N'act')
INSERT [dbo].[CatTypeSection] ([IdType], [Description], [State]) VALUES (3, N'video', N'act')
INSERT [dbo].[CatTypeSection] ([IdType], [Description], [State]) VALUES (4, N'game', N'act')
INSERT [dbo].[CatTypeSection] ([IdType], [Description], [State]) VALUES (5, N'test', N'act')
INSERT [dbo].[CatTypeSection] ([IdType], [Description], [State]) VALUES (6, N'texto', N'act')
INSERT [dbo].[CatTypeSection] ([IdType], [Description], [State]) VALUES (7, N'googleForm', N'act')
SET IDENTITY_INSERT [dbo].[CatTypeSection] OFF
GO
SET IDENTITY_INSERT [dbo].[TblForm] ON 

INSERT [dbo].[TblForm] ([IdForm], [Title], [Description], [State]) VALUES (1, N'Form de Prueba', N'Prueba', N'act')
SET IDENTITY_INSERT [dbo].[TblForm] OFF
GO
SET IDENTITY_INSERT [dbo].[TblModulos] ON 

INSERT [dbo].[TblModulos] ([IdModules], [Title], [Description], [State], [IdUserCreator], [image]) VALUES (1, N'Guía de Buenas Prácticas
en Educación Inclusiva', N'Esta publicación ha sido realizada con el apoyo !nanciero de la Agencia Española de Cooperación Internacional para el Desarrollo (AECID), con cargo al Convenio “Promoción de la atención integral de los niños y las niñas de 5 a 12 años en el ámbito educativo y comunitario”. El contenido de dicha publicación es responsabilidad exclusiva de Save the Children y no re"eja necesariamente la opinión de la AECID.', N'act', 1, N'./Media/img/modulo1.jpg')
INSERT [dbo].[TblModulos] ([IdModules], [Title], [Description], [State], [IdUserCreator], [image]) VALUES (2, N'Diabetes Millitus', N'desc.....', N'act', 1, N'./Media/img/modulo2.jpg')
INSERT [dbo].[TblModulos] ([IdModules], [Title], [Description], [State], [IdUserCreator], [image]) VALUES (3, N'Algoritmos y Estructuras de Datos', N'desc....', N'act', 1, N'./Media/img/modulo3.jpg')
SET IDENTITY_INSERT [dbo].[TblModulos] OFF
GO
INSERT [dbo].[TblMyModules] ([IdUser], [IdModules], [Date]) VALUES (1, 1, NULL)
INSERT [dbo].[TblMyModules] ([IdUser], [IdModules], [Date]) VALUES (1, 2, NULL)
INSERT [dbo].[TblMyModules] ([IdUser], [IdModules], [Date]) VALUES (1, 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[TblNotifications] ON 

INSERT [dbo].[TblNotifications] ([IdNotification], [Description], [IdUser], [Date], [state]) VALUES (1, N'Notificacion de prueba', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TblNotifications] ([IdNotification], [Description], [IdUser], [Date], [state]) VALUES (2, N'Notificacion de prueba', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TblNotifications] ([IdNotification], [Description], [IdUser], [Date], [state]) VALUES (3, N'Notificacion de prueba', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TblNotifications] ([IdNotification], [Description], [IdUser], [Date], [state]) VALUES (4, N'Notificacion de prueba', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TblNotifications] ([IdNotification], [Description], [IdUser], [Date], [state]) VALUES (5, N'Notificacion de prueba', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TblNotifications] ([IdNotification], [Description], [IdUser], [Date], [state]) VALUES (6, N'Notificacion de prueba', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TblNotifications] ([IdNotification], [Description], [IdUser], [Date], [state]) VALUES (7, N'Notificacion de prueba', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[TblNotifications] OFF
GO
SET IDENTITY_INSERT [dbo].[TblQuestion] ON 

INSERT [dbo].[TblQuestion] ([IdQuestion], [Description], [IdType], [IdForm]) VALUES (1, N'Describe esto.....', 1, 1)
INSERT [dbo].[TblQuestion] ([IdQuestion], [Description], [IdType], [IdForm]) VALUES (2, N'Describe esto otro', 1, 1)
INSERT [dbo].[TblQuestion] ([IdQuestion], [Description], [IdType], [IdForm]) VALUES (3, N'Select...', 3, 1)
INSERT [dbo].[TblQuestion] ([IdQuestion], [Description], [IdType], [IdForm]) VALUES (4, N'Select2..', 4, 1)
SET IDENTITY_INSERT [dbo].[TblQuestion] OFF
GO
SET IDENTITY_INSERT [dbo].[TblQuestionOptions] ON 

INSERT [dbo].[TblQuestionOptions] ([IdQuestionOption], [IdQuestion], [Value], [OptionDesc]) VALUES (1, 1, NULL, N'desc')
INSERT [dbo].[TblQuestionOptions] ([IdQuestionOption], [IdQuestion], [Value], [OptionDesc]) VALUES (2, 2, NULL, N'desc')
INSERT [dbo].[TblQuestionOptions] ([IdQuestionOption], [IdQuestion], [Value], [OptionDesc]) VALUES (4, 3, N'1', N'nada')
INSERT [dbo].[TblQuestionOptions] ([IdQuestionOption], [IdQuestion], [Value], [OptionDesc]) VALUES (5, 3, N'2', N'medio')
INSERT [dbo].[TblQuestionOptions] ([IdQuestionOption], [IdQuestion], [Value], [OptionDesc]) VALUES (6, 3, N'3', N'mucho')
INSERT [dbo].[TblQuestionOptions] ([IdQuestionOption], [IdQuestion], [Value], [OptionDesc]) VALUES (7, 4, N'1', N'si')
INSERT [dbo].[TblQuestionOptions] ([IdQuestionOption], [IdQuestion], [Value], [OptionDesc]) VALUES (8, 4, N'0', N'no')
SET IDENTITY_INSERT [dbo].[TblQuestionOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSections] ON 

INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (1, 1, N' LA EDUCACIÓN INCLUSIVA', N'1. INTRODUCCION', N'https://www.youtube.com/embed/5Vl8KTV9T2A', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (2, 1, N'2. INTRODUCCION', N'2. LA EDUCACIÓN INCLUSIVA', N'El derecho a la educación es mundialmente reconocido desde que en 1948 se proclama la Declaración Universal de Derechos Humanos.
Además, la Convención sobre derechos del niño (rati!cada por 193 estados), reconoce este derecho a todos los niños y las niñas. En el año 2000, un informe de la UNESCO establece que la inclusión de la infancia con necesidades especiales o pertenecientes a minorías étnicas desfavorecidas, poblaciones migrantes, comunidades remotas y aisladas o barrios urbanos marginales, así como de otros excluidos de la educación, deberá ser parte integrante de las estrategias para lograr la educación para todos antes del 2015. En 2008, con motivo de la 48ª Conferencia Internacional de Educación de la UNESCO, los Ministros de Educación y Jefes de Delegación de 153 Estados miembro a!rman que una educación inclusiva y de calidad es fundamental para alcanzar el desarrollo humano, social y económico.
Actualmente, existe entre la comunidad internacional una voluntad unánime de fomentar un modelo de educación de calidad, intercultural e inclusivo. Los argumentos que avalan este modelo pueden encontrarse en distintas investigaciones e informes. La OCDE (2007), por ejemplo, a!rmaba en su informe No More Failures: Ten steps to Equity in Education que el excluir a ciertas personas de una educación de calidad, tiene altos costes sociales y conómicos. Los autores de la investigación Actuaciones de Éxito en Escuelas Europeas, publicada por el Ministerio de Educación (2011), sostienen que el éxito en educación está relacionado con la inclusión social y con el acceso a todos los ámbitos sociales y los recursos (empleo, vivienda, salud, política, etc.); y que la inclusión social permite la contribución de un mayor número de personas al desarrollo de una economía del conocimiento competitiva y dinámica, y una mayor cohesión social.
', 6)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (3, 1, N'Section 3', N'3. HISTORIA DE VIDA - SANDRA', N'https://www.youtube.com/embed/czLniFi69aM', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (4, 1, N'Section 4', N'4. HISTORIA DE VIDA - ROBERTO', N'https://www.youtube.com/embed/Na-aM8F1WrI', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (5, 1, N'Section 5', N'5. HISTORIA DE VIDA - IRANIA', N'https://www.youtube.com/embed/UmF7wXV7sMY', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (6, 1, N'Section 6', N'6. HISTORIA DE VIDA - FREDDY REYES', N'https://www.youtube.com/embed/zGE06p1dq8E', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (7, 1, N'Section 1', N'7. FORMULARIO', N'https://docs.google.com/forms/d/e/1FAIpQLSdqIGWNOhS7mZVDnXnGP6AVqX0vjHpLVdcHaFerr1_-TH_gGg/viewform?embedded=true', 7)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (8, 1, N'Section 2', N'8. TEST', N'1', 5)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (9, 2, N'Section 3', N'Diabetes', N'La diabetes mellitus (DM) es un conjunto de trastornos metabólicos, cuya característica común principal es la presencia de concentraciones elevadas de glucosa en la sangre de manera persistente o crónica, debido ya sea a un defecto en la producción de insulina, a una resistencia a la acción de ella para utilizar la glucosa, a un aumento en la producción de glucosa o a una combinación de estas causas. También se acompaña de anormalidades en el metabolismo de los lípidos, proteínas, sales minerales y electrolitos. 2​3​4​5​6​7​

La diabetes se asocia con la aparición de complicaciones en muchos sistemas orgánicos, siendo los más evidentes la pérdida de la visión (retinopatía diabética) que puede llegar a la ceguera, el compromiso de los riñones (nefropatía diabética) con deterioro funcional progresivo, requiriendo diálisis y trasplante, el compromiso de vasos sanguíneos que pueden significar la pérdida de extremidades inferiores (amputaciones) (véase vasculopatía diabética), el compromiso del corazón con enfermedad coronaria e infarto agudo de miocardio, el compromiso cerebral y de la irrigación intestinal; sin embargo, las complicaciones más prevalentes afectan al sistema nervioso periférico y autónomo. Todo esto significa una carga muy pesada para el paciente que la padece y para todo el sistema de salud pública.2​4​7​

Los síntomas principales de la diabetes mellitus son la emisión excesiva de orina (poliuria), el aumento anormal de la necesidad de comer (polifagia), el incremento de la sed (polidipsia) y la pérdida de peso sin razón aparente.8​ En ocasiones se toma como referencia estos tres síntomas (poliuria, polifagia y polidipsia o regla de las 3 P) para poder sospechar diabetes mellitus tipo 2 o insulinorresistente ya que son los más comunes en la población.

Una revisión de 2018 concluye que uno de los principales factores de riesgo para desarrollar tanto la diabetes tipo 1 como la diabetes tipo 2 es el consumo de gluten y que la dieta sin gluten durante el embarazo reduce el riesgo de que el bebé desarrolle diabetes tipo', 6)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (10, 2, N'Section 4', N'Etimología', N'Actualmente existen dos clasificaciones principales. La primera, correspondiente a la Organización Mundial de la Salud, en la que reconoce tres formas de diabetes mellitus: tipo 1, tipo 2 y diabetes gestacional (ocurre durante el embarazo), cada una con diferentes causas y con distinta incidencia25 y la segunda, propuesta por el comité de expertos de la Asociación Americana de Diabetes (ADA) en 1997. Según la ADA, los diferentes tipos de DM se clasifican en cuatro grupos: 
La diabetes mellitus tipo 1, en la que existe una destrucción total (mayor al 90 %) de las células β, lo que conlleva una deficiencia absoluta de insulina. Representa entre un 5 a un 10 % de las DM.
La diabetes mellitus tipo 2, generada como consecuencia de un defecto progresivo en la secreción de insulina, de un aumento de la resistencia periférica a la misma y de un aumento de la producción de glucosa. Representa entre un 90 a un 95 % de las DM.
La diabetes gestacional, que es diagnosticada durante el segundo o tercer trimestre del embarazo, donde muchas veces es transitoria y la propia cura es el parto.
Diabetes producida por otras causas:
Defectos genéticos de la función de las células β (por ejemplo, distintos tipos de diabetes monogénica o diabetes tipo MODY, diabetes neonatal).
Defectos genéticos en la acción de insulina.
Enfermedades del páncreas exocrino (por ejemplo, fibrosis quística).
Endocrinopatías (por ejemplo, acromegalia, síndrome de Cushing).
Inducida por fármacos o químicos (por ejemplo, pentamidina, ácido nicotínico, glucocorticoides).
Infecciones.
Causas poco comunes mediadas por mecanismos inmunes.
Otros síndromes genéticos asociados con diabetes.
', 6)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (11, 2, N'Section 5', N'Definición', N'https://www.youtube.com/embed/I0M3_-OP5KA', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (12, 2, N'Section 6', N'Sintomatología', N'https://www.youtube.com/embed/JBm3OrR1eaU', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (13, 2, N'Section 6', N'Medidas y Recomendaciones', N'https://www.youtube.com/embed/PBbgOTKVTak', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (14, 2, N'Section 6', N'Medidas con el COVID-19', N'https://www.youtube.com/embed/TlrHaNbX7rg', 3)
INSERT [dbo].[TblSections] ([IdSection], [IdModules], [Descripcion], [Title], [UrlContent], [IdType]) VALUES (15, 2, N'Section 6', N'Mitos', N'https://www.youtube.com/embed/IL4Gfs_Srt0', 3)
SET IDENTITY_INSERT [dbo].[TblSections] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUsers] ON 

INSERT [dbo].[TblUsers] ([IdUsers], [Name], [Username], [Password], [State], [Mail], [LastName], [Photo]) VALUES (1, N'Wilber', N'Wilber', N'zaxscd', N'act', NULL, NULL, NULL)
INSERT [dbo].[TblUsers] ([IdUsers], [Name], [Username], [Password], [State], [Mail], [LastName], [Photo]) VALUES (2, N'wilber', N'Seyfer', N'zaxscd', NULL, N'zaxscd', NULL, NULL)
INSERT [dbo].[TblUsers] ([IdUsers], [Name], [Username], [Password], [State], [Mail], [LastName], [Photo]) VALUES (3, N'ert', N'sers', N'erseserse', NULL, N'er', NULL, NULL)
INSERT [dbo].[TblUsers] ([IdUsers], [Name], [Username], [Password], [State], [Mail], [LastName], [Photo]) VALUES (4, N'Maria', N'Mary', N'zaxscd', N'act', N'mary@unan.edu.ni', N'Mashdkj', NULL)
INSERT [dbo].[TblUsers] ([IdUsers], [Name], [Username], [Password], [State], [Mail], [LastName], [Photo]) VALUES (5, N'vbcvbxc', N'cvxcvxcvx', N'zaxscd', N'act', N'<asdasdasd', N'vbxx', N'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')
SET IDENTITY_INSERT [dbo].[TblUsers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TblUsers]    Script Date: 17/12/2021 9:56:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TblUsers] ON [dbo].[TblUsers]
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RolPermission]  WITH CHECK ADD  CONSTRAINT [FK_RolPermission_TblPermission] FOREIGN KEY([IdPermission])
REFERENCES [dbo].[TblPermission] ([IdPermission])
GO
ALTER TABLE [dbo].[RolPermission] CHECK CONSTRAINT [FK_RolPermission_TblPermission]
GO
ALTER TABLE [dbo].[RolPermission]  WITH CHECK ADD  CONSTRAINT [FK_RolPermission_TblRol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[TblRol] ([IdRol])
GO
ALTER TABLE [dbo].[RolPermission] CHECK CONSTRAINT [FK_RolPermission_TblRol]
GO
ALTER TABLE [dbo].[TblModulos]  WITH CHECK ADD  CONSTRAINT [FK_TblModulos_TblUsers] FOREIGN KEY([IdUserCreator])
REFERENCES [dbo].[TblUsers] ([IdUsers])
GO
ALTER TABLE [dbo].[TblModulos] CHECK CONSTRAINT [FK_TblModulos_TblUsers]
GO
ALTER TABLE [dbo].[TblMyModules]  WITH CHECK ADD  CONSTRAINT [FK_TblMyModules_TblModulos] FOREIGN KEY([IdModules])
REFERENCES [dbo].[TblModulos] ([IdModules])
GO
ALTER TABLE [dbo].[TblMyModules] CHECK CONSTRAINT [FK_TblMyModules_TblModulos]
GO
ALTER TABLE [dbo].[TblMyModules]  WITH CHECK ADD  CONSTRAINT [FK_TblMyModules_TblUsers] FOREIGN KEY([IdUser])
REFERENCES [dbo].[TblUsers] ([IdUsers])
GO
ALTER TABLE [dbo].[TblMyModules] CHECK CONSTRAINT [FK_TblMyModules_TblUsers]
GO
ALTER TABLE [dbo].[TblNotifications]  WITH CHECK ADD  CONSTRAINT [FK_TblNotifications_TblUsers] FOREIGN KEY([IdUser])
REFERENCES [dbo].[TblUsers] ([IdUsers])
GO
ALTER TABLE [dbo].[TblNotifications] CHECK CONSTRAINT [FK_TblNotifications_TblUsers]
GO
ALTER TABLE [dbo].[TblQuestion]  WITH CHECK ADD  CONSTRAINT [FK_TblQuestion_CatTypeQuestion] FOREIGN KEY([IdType])
REFERENCES [dbo].[CatTypeQuestion] ([IdType])
GO
ALTER TABLE [dbo].[TblQuestion] CHECK CONSTRAINT [FK_TblQuestion_CatTypeQuestion]
GO
ALTER TABLE [dbo].[TblQuestion]  WITH CHECK ADD  CONSTRAINT [FK_TblQuestion_TblForm] FOREIGN KEY([IdForm])
REFERENCES [dbo].[TblForm] ([IdForm])
GO
ALTER TABLE [dbo].[TblQuestion] CHECK CONSTRAINT [FK_TblQuestion_TblForm]
GO
ALTER TABLE [dbo].[TblQuestionOptions]  WITH CHECK ADD  CONSTRAINT [FK_TblQuestionOptions_TblQuestion] FOREIGN KEY([IdQuestion])
REFERENCES [dbo].[TblQuestion] ([IdQuestion])
GO
ALTER TABLE [dbo].[TblQuestionOptions] CHECK CONSTRAINT [FK_TblQuestionOptions_TblQuestion]
GO
ALTER TABLE [dbo].[TblSections]  WITH CHECK ADD  CONSTRAINT [FK_TblSections_CatTypeSection] FOREIGN KEY([IdType])
REFERENCES [dbo].[CatTypeSection] ([IdType])
GO
ALTER TABLE [dbo].[TblSections] CHECK CONSTRAINT [FK_TblSections_CatTypeSection]
GO
ALTER TABLE [dbo].[TblSections]  WITH CHECK ADD  CONSTRAINT [FK_TblSections_TblModulos] FOREIGN KEY([IdModules])
REFERENCES [dbo].[TblModulos] ([IdModules])
GO
ALTER TABLE [dbo].[TblSections] CHECK CONSTRAINT [FK_TblSections_TblModulos]
GO
ALTER TABLE [dbo].[TblUsersRol]  WITH CHECK ADD  CONSTRAINT [FK_TblUsersRol_TblRol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[TblRol] ([IdRol])
GO
ALTER TABLE [dbo].[TblUsersRol] CHECK CONSTRAINT [FK_TblUsersRol_TblRol]
GO
ALTER TABLE [dbo].[TblUsersRol]  WITH CHECK ADD  CONSTRAINT [FK_TblUsersRol_TblUsers] FOREIGN KEY([IdUser])
REFERENCES [dbo].[TblUsers] ([IdUsers])
GO
ALTER TABLE [dbo].[TblUsersRol] CHECK CONSTRAINT [FK_TblUsersRol_TblUsers]
GO
ALTER TABLE [dbo].[UsersResponse]  WITH CHECK ADD  CONSTRAINT [FK_UsersResponse_TblQuestionOptions] FOREIGN KEY([IdQuestionOptions])
REFERENCES [dbo].[TblQuestionOptions] ([IdQuestionOption])
GO
ALTER TABLE [dbo].[UsersResponse] CHECK CONSTRAINT [FK_UsersResponse_TblQuestionOptions]
GO
ALTER TABLE [dbo].[UsersResponse]  WITH CHECK ADD  CONSTRAINT [FK_UsersResponse_TblUsers] FOREIGN KEY([IdUser])
REFERENCES [dbo].[TblUsers] ([IdUsers])
GO
ALTER TABLE [dbo].[UsersResponse] CHECK CONSTRAINT [FK_UsersResponse_TblUsers]
GO
USE [master]
GO
ALTER DATABASE [INCLUSIVE_BD] SET  READ_WRITE 
GO
