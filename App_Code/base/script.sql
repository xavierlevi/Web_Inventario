USE [master]
GO
/****** Object:  Database [db_Inventario]    Script Date: 07/06/2016 19:03:05 ******/
CREATE DATABASE [db_Inventario] ON  PRIMARY 
( NAME = N'db_Inventario', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_Inventario.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_Inventario_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_Inventario_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_Inventario] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Inventario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Inventario] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_Inventario] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_Inventario] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_Inventario] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_Inventario] SET ARITHABORT OFF
GO
ALTER DATABASE [db_Inventario] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [db_Inventario] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_Inventario] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_Inventario] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_Inventario] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_Inventario] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_Inventario] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_Inventario] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_Inventario] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_Inventario] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_Inventario] SET  ENABLE_BROKER
GO
ALTER DATABASE [db_Inventario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_Inventario] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_Inventario] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_Inventario] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_Inventario] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_Inventario] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_Inventario] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_Inventario] SET  READ_WRITE
GO
ALTER DATABASE [db_Inventario] SET RECOVERY FULL
GO
ALTER DATABASE [db_Inventario] SET  MULTI_USER
GO
ALTER DATABASE [db_Inventario] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_Inventario] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_Inventario', N'ON'
GO
USE [db_Inventario]
GO
/****** Object:  Table [dbo].[Tb_Sede]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Sede](
	[Id_Sede] [int] NOT NULL,
	[Sede] [varchar](30) NULL,
	[TipoSede] [varchar](40) NULL,
 CONSTRAINT [XPKTb_Ubicacion] PRIMARY KEY CLUSTERED 
(
	[Id_Sede] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Personal]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Personal](
	[Id_Personal] [varchar](10) NOT NULL,
	[NomApe] [varchar](50) NULL,
	[TipoPersonal] [int] NULL,
	[Clave] [varchar](10) NULL,
 CONSTRAINT [XPKUsuario] PRIMARY KEY CLUSTERED 
(
	[Id_Personal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Equipo]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Equipo](
	[Id_Equipo] [int] NOT NULL,
	[Nombre] [varchar](25) NULL,
	[Marca] [varchar](15) NULL,
	[Modelo] [varchar](20) NULL,
	[Inalambrico] [int] NULL,
 CONSTRAINT [XPKTb_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id_Equipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Cliente]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Cliente](
	[Id_Cliente] [varchar](10) NOT NULL,
	[NomApe] [varchar](70) NULL,
 CONSTRAINT [XPKTb_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Area]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Area](
	[Id_Area] [int] NOT NULL,
	[Area] [varchar](30) NULL,
 CONSTRAINT [XPKArea] PRIMARY KEY CLUSTERED 
(
	[Id_Area] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_logueo]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_logueo] @clave char(5),@nombre varchar(50),@nivel int
as
select id_personal,NomApe,clave from tb_personal
where id_personal=@nombre and clave=@clave
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDSEDE]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDSEDE]
@ID_SEDE INT,@Sede VARCHAR(30),@TipoSede varchar(40)
AS
INSERT INTO Tb_SEDE (Id_Sede,Sede,TipoSede) VALUES(@ID_SEDE,@Sede,@TipoSede)
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDPERSONAL]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDPERSONAL]
@Id_Personal VARCHAR(10),@NomApe VARCHAR(10),@TipoPersonal INT,@Clave VARCHAR(10)
AS
BEGIN
INSERT INTO Tb_Personal(Id_Personal,NomApe,TipoPersonal,Clave) VALUES(@Id_Personal,@NomApe,@TipoPersonal,@Clave)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDEQUIPO]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDEQUIPO]
@Nombre varchar(25),@Marca varchar(15),@Modelo varchar(20),@Inalambrico int
as
declare @CODIGO int 
BEGIN
 set @CODIGO=(select MAX(ID_EQUIPO)from TB_EQUIPO)
 if (@CODIGO is null)
 set @CODIGO=1
 else 
 set @CODIGO = @CODIGO+1
insert into tb_equipo (Id_Equipo,Nombre,Marca,Modelo,Inalambrico)values(@CODIGO,@Nombre,@Marca,@Modelo,@Inalambrico)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDCLIENTE]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDCLIENTE]
@Id_Cliente VARCHAR(10),@NomApe VARCHAR(70)
as
BEGIN
 insert into TB_CLIENTE (Id_Cliente,NomApe)values (@Id_Cliente,@NomApe)
 print 'Cliente Registrado'
 END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDAREA]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDAREA]
@Area VARCHAR(30)
as
declare @CODIGO int 
BEGIN
 set @CODIGO=(select MAX(ID_AREA)from TB_AREA)
 if (@CODIGO is null)
 set @CODIGO=1
 else 
 set @CODIGO = @CODIGO+1
 insert into TB_AREA (id_area,Area)values (@codigo,@Area)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_VEREQUIPOS]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VEREQUIPOS]
AS
SELECT DISTINCT * FROM TB_EQUIPO         
WHERE NOMBRE NOT LIKE ''
GO
/****** Object:  StoredProcedure [dbo].[SP_VERAREA]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VERAREA]
AS
SELECT DISTINCT ID_AREA, AREA FROM TB_AREA
WHERE AREA NOT LIKE ''
GO
/****** Object:  Table [dbo].[Tb_Inventario]    Script Date: 07/06/2016 19:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Inventario](
	[id_Inventario] [int] NOT NULL,
	[Id_Equipo] [int] NOT NULL,
	[Serie] [varchar](20) NULL,
	[NroEtiqueta] [varchar](8) NULL,
	[NomEquipo] [varchar](30) NULL,
	[Computrace] [int] NULL,
 CONSTRAINT [XPKTb_Activo] PRIMARY KEY CLUSTERED 
(
	[id_Inventario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [XIF1Tb_Activo] ON [dbo].[Tb_Inventario] 
(
	[Id_Equipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_SELTODOEQUIPO]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_SELTODOEQUIPO]
AS
SELECT DISTINCT * FROM TB_EQUIPO         
WHERE NOMBRE NOT LIKE ''
GO
/****** Object:  View [dbo].[VW_EQUIPO]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_EQUIPO]
AS
SELECT        Id_Equipo, Marca, Nombre, Modelo, Inalambrico
FROM            dbo.Tb_Equipo
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tb_Equipo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_EQUIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_EQUIPO'
GO
/****** Object:  StoredProcedure [dbo].[SP_VERSEDES]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VERSEDES]
AS
BEGIN 
select distinct ID_SEDE,SEDE from TB_SEDE
where ID_SEDE not like '' 
END
GO
/****** Object:  Table [dbo].[Tb_Movimiento]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Movimiento](
	[Id_Movimiento] [int] NOT NULL,
	[Fecha_Movimiento] [datetime] NULL,
	[Id_Sede] [int] NOT NULL,
	[Id_Area] [int] NOT NULL,
	[Piso] [int] NULL,
	[Id_Cliente] [varchar](10) NOT NULL,
	[id_Inventario] [int] NOT NULL,
	[Id_Personal] [varchar](10) NOT NULL,
	[Ticket] [varchar](7) NULL,
	[Observacion] [text] NULL,
	[Condicion] [varchar](15) NULL,
	[Aprobacion1] [text] NULL,
	[Aprobacion2] [text] NULL,
	[AreaCompartida] [varchar](30) NULL,
 CONSTRAINT [XPKTb_Inventario] PRIMARY KEY CLUSTERED 
(
	[Id_Movimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [XIF1Tb_Inventario] ON [dbo].[Tb_Movimiento] 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [XIF2Tb_Inventario] ON [dbo].[Tb_Movimiento] 
(
	[id_Inventario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [XIF3Tb_Inventario] ON [dbo].[Tb_Movimiento] 
(
	[Id_Personal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [XIF4Tb_Inventario] ON [dbo].[Tb_Movimiento] 
(
	[Id_Sede] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [XIF5Tb_Inventario] ON [dbo].[Tb_Movimiento] 
(
	[Id_Area] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_VERINVENTARIO]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VERINVENTARIO]
AS
SELECT DISTINCT * FROM TB_INVENTARIO
ORDER BY ID_INVENTARIO DESC
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDINVENTARIO]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDINVENTARIO]
@Id_Equipo INT,@Serie VARCHAR(20),@NroEtiqueta VARCHAR(8),@NomEquipo VARCHAR(30),@Computrace INT
as
declare @CODIGO int 
BEGIN
 set @CODIGO=(select MAX(ID_INVENTARIO)from Tb_Inventario)
 if (@CODIGO is null)
 set @CODIGO=1
 else 
 set @CODIGO = @CODIGO+1
INSERT INTO Tb_INVENTARIO (ID_INVENTARIO,Id_Equipo,Serie,NroEtiqueta,NomEquipo,Computrace) VALUES(@CODIGO,@Id_Equipo,@Serie,@NroEtiqueta,@NomEquipo,@Computrace)
END
GO
/****** Object:  View [dbo].[vw_DetalleMovimiento]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DetalleMovimiento]
AS
SELECT     dbo.Tb_Equipo.Nombre, dbo.Tb_Equipo.Marca, dbo.Tb_Equipo.Modelo, dbo.Tb_Inventario.Serie, dbo.Tb_Inventario.NroEtiqueta, dbo.Tb_Inventario.NomEquipo, 
                      dbo.Tb_Inventario.Computrace
FROM         dbo.Tb_Cliente INNER JOIN
                      dbo.Tb_Area INNER JOIN
                      dbo.Tb_Inventario INNER JOIN
                      dbo.Tb_Equipo ON dbo.Tb_Inventario.Id_Equipo = dbo.Tb_Equipo.Id_Equipo INNER JOIN
                      dbo.Tb_Movimiento ON dbo.Tb_Inventario.id_Inventario = dbo.Tb_Movimiento.id_Inventario ON dbo.Tb_Area.Id_Area = dbo.Tb_Movimiento.Id_Area ON 
                      dbo.Tb_Cliente.Id_Cliente = dbo.Tb_Movimiento.Id_Cliente INNER JOIN
                      dbo.Tb_Personal ON dbo.Tb_Movimiento.Id_Personal = dbo.Tb_Personal.Id_Personal INNER JOIN
                      dbo.Tb_Sede ON dbo.Tb_Movimiento.Id_Sede = dbo.Tb_Sede.Id_Sede
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tb_Area"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tb_Cliente"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 95
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tb_Equipo"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Tb_Inventario"
            Begin Extent = 
               Top = 96
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Tb_Movimiento"
            Begin Extent = 
               Top = 96
               Left = 236
               Bottom = 215
               Right = 414
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Tb_Personal"
            Begin Extent = 
               Top = 126
               Left = 452
               Bottom = 245
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tb_Sede"
            Begin Extent = 
               Top = 216
               Left = 38
               Bottom = 320
               Right = 198
            End
            Disp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_DetalleMovimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'layFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_DetalleMovimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_DetalleMovimiento'
GO
/****** Object:  View [dbo].[View_Movimiento]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Movimiento]
AS
SELECT     dbo.Tb_Movimiento.Fecha_Movimiento, dbo.Tb_Sede.TipoSede, dbo.Tb_Sede.Id_Sede, dbo.Tb_Sede.Sede, dbo.Tb_Movimiento.Piso, dbo.Tb_Area.Area, 
                      dbo.Tb_Cliente.Id_Cliente, dbo.Tb_Cliente.NomApe, dbo.Tb_Movimiento.AreaCompartida, dbo.Tb_Equipo.Nombre, dbo.Tb_Equipo.Marca, dbo.Tb_Equipo.Modelo, 
                      dbo.Tb_Inventario.Serie, dbo.Tb_Inventario.NomEquipo, dbo.Tb_Inventario.NroEtiqueta, dbo.Tb_Inventario.Computrace, dbo.Tb_Personal.NomApe AS Expr1, 
                      dbo.Tb_Movimiento.Ticket, dbo.Tb_Movimiento.Observacion, dbo.Tb_Movimiento.Condicion
FROM         dbo.Tb_Cliente INNER JOIN
                      dbo.Tb_Area INNER JOIN
                      dbo.Tb_Inventario INNER JOIN
                      dbo.Tb_Equipo ON dbo.Tb_Inventario.Id_Equipo = dbo.Tb_Equipo.Id_Equipo INNER JOIN
                      dbo.Tb_Movimiento ON dbo.Tb_Inventario.id_Inventario = dbo.Tb_Movimiento.id_Inventario ON dbo.Tb_Area.Id_Area = dbo.Tb_Movimiento.Id_Area ON 
                      dbo.Tb_Cliente.Id_Cliente = dbo.Tb_Movimiento.Id_Cliente INNER JOIN
                      dbo.Tb_Personal ON dbo.Tb_Movimiento.Id_Personal = dbo.Tb_Personal.Id_Personal INNER JOIN
                      dbo.Tb_Sede ON dbo.Tb_Movimiento.Id_Sede = dbo.Tb_Sede.Id_Sede
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[20] 4[9] 2[39] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tb_Area"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tb_Cliente"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 95
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tb_Equipo"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Tb_Inventario"
            Begin Extent = 
               Top = 96
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Tb_Movimiento"
            Begin Extent = 
               Top = 96
               Left = 236
               Bottom = 215
               Right = 414
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "Tb_Personal"
            Begin Extent = 
               Top = 216
               Left = 38
               Bottom = 335
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tb_Sede"
            Begin Extent = 
               Top = 216
               Left = 236
               Bottom = 320
               Right = 396
            End
            Dis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Movimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'playFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 795
         Width = 1500
         Width = 480
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Movimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Movimiento'
GO
/****** Object:  StoredProcedure [dbo].[SP_ULTIMOVIMIENTO]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_ULTIMOVIMIENTO]
AS
DECLARE @dt datetimeoffset = switchoffset (CONVERT(datetimeoffset, GETDATE()), '-04:00')
SELECT      dbo.Tb_Equipo.Nombre, dbo.Tb_Equipo.Marca, dbo.Tb_Equipo.Modelo, dbo.Tb_Inventario.Serie, dbo.Tb_Inventario.NroEtiqueta, dbo.Tb_Inventario.NomEquipo, 
                      dbo.Tb_Inventario.Computrace
FROM         dbo.Tb_Cliente INNER JOIN
                      dbo.Tb_Area INNER JOIN
                      dbo.Tb_Inventario INNER JOIN
                      dbo.Tb_Equipo ON dbo.Tb_Inventario.Id_Equipo = dbo.Tb_Equipo.Id_Equipo INNER JOIN
                      dbo.Tb_Movimiento ON dbo.Tb_Inventario.id_Inventario = dbo.Tb_Movimiento.id_Inventario ON dbo.Tb_Area.Id_Area = dbo.Tb_Movimiento.Id_Area ON 
                      dbo.Tb_Cliente.Id_Cliente = dbo.Tb_Movimiento.Id_Cliente INNER JOIN
                      dbo.Tb_Personal ON dbo.Tb_Movimiento.Id_Personal = dbo.Tb_Personal.Id_Personal INNER JOIN
                      dbo.Tb_Sede ON dbo.Tb_Movimiento.Id_Sede = dbo.Tb_Sede.Id_Sede
WHERE Fecha_Movimiento >= @dt OPTION (RECOMPILE)
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDMOVIMIENTO]    Script Date: 07/06/2016 19:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDMOVIMIENTO]
@Fecha_Movimiento DATETIME ,@Id_Sede INT,@Id_Area INT,@Piso INT,@Id_Cliente VARCHAR(10),
@id_Inventario INT,@Id_Personal VARCHAR(10),@Ticket VARCHAR(7),@Observacion text,
@Condicion VARCHAR(15),@Aprobacion1 VARCHAR(30),@Aprobacion2 varchar(30),@AreaCompartida varchar(30)
AS 
DECLARE @CODIGO INT
BEGIN
SET @CODIGO=(SELECT MAX(Id_Movimiento)FROM  Tb_Movimiento)
IF (@CODIGO IS NULL)
SET @CODIGO=1
ELSE 
SET @CODIGO=@CODIGO+1 
INSERT INTO dbo.Tb_Movimiento (Id_Movimiento,Fecha_Movimiento,Id_Sede,Id_Area,Piso,Id_Cliente,
id_Inventario,Id_Personal,Ticket,Observacion,Condicion,Aprobacion1,Aprobacion2,areacompartida)
VALUES (@CODIGO,@Fecha_Movimiento,@Id_Sede,@Id_Area,@Piso,@Id_Cliente,
@id_Inventario,@Id_Personal,@Ticket,@Observacion,@Condicion,@Aprobacion1,@Aprobacion2,@AreaCompartida)
END
GO
/****** Object:  ForeignKey [R_21]    Script Date: 07/06/2016 19:03:06 ******/
ALTER TABLE [dbo].[Tb_Inventario]  WITH CHECK ADD  CONSTRAINT [R_21] FOREIGN KEY([Id_Equipo])
REFERENCES [dbo].[Tb_Equipo] ([Id_Equipo])
GO
ALTER TABLE [dbo].[Tb_Inventario] CHECK CONSTRAINT [R_21]
GO
/****** Object:  ForeignKey [R_13]    Script Date: 07/06/2016 19:03:07 ******/
ALTER TABLE [dbo].[Tb_Movimiento]  WITH CHECK ADD  CONSTRAINT [R_13] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Tb_Cliente] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Tb_Movimiento] CHECK CONSTRAINT [R_13]
GO
/****** Object:  ForeignKey [R_14]    Script Date: 07/06/2016 19:03:07 ******/
ALTER TABLE [dbo].[Tb_Movimiento]  WITH CHECK ADD  CONSTRAINT [R_14] FOREIGN KEY([id_Inventario])
REFERENCES [dbo].[Tb_Inventario] ([id_Inventario])
GO
ALTER TABLE [dbo].[Tb_Movimiento] CHECK CONSTRAINT [R_14]
GO
/****** Object:  ForeignKey [R_18]    Script Date: 07/06/2016 19:03:07 ******/
ALTER TABLE [dbo].[Tb_Movimiento]  WITH CHECK ADD  CONSTRAINT [R_18] FOREIGN KEY([Id_Personal])
REFERENCES [dbo].[Tb_Personal] ([Id_Personal])
GO
ALTER TABLE [dbo].[Tb_Movimiento] CHECK CONSTRAINT [R_18]
GO
/****** Object:  ForeignKey [R_20]    Script Date: 07/06/2016 19:03:07 ******/
ALTER TABLE [dbo].[Tb_Movimiento]  WITH CHECK ADD  CONSTRAINT [R_20] FOREIGN KEY([Id_Sede])
REFERENCES [dbo].[Tb_Sede] ([Id_Sede])
GO
ALTER TABLE [dbo].[Tb_Movimiento] CHECK CONSTRAINT [R_20]
GO
/****** Object:  ForeignKey [R_26]    Script Date: 07/06/2016 19:03:07 ******/
ALTER TABLE [dbo].[Tb_Movimiento]  WITH CHECK ADD  CONSTRAINT [R_26] FOREIGN KEY([Id_Area])
REFERENCES [dbo].[Tb_Area] ([Id_Area])
GO
ALTER TABLE [dbo].[Tb_Movimiento] CHECK CONSTRAINT [R_26]
GO
