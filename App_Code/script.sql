USE [master]
GO
/****** Object:  Database [db_MovimientoEquipo]    Script Date: 09/26/2016 16:12:22 ******/
CREATE DATABASE [db_MovimientoEquipo] ON  PRIMARY 
( NAME = N'db_MovimientoEquipo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_MovimientoEquipo.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_MovimientoEquipo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_MovimientoEquipo_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_MovimientoEquipo] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_MovimientoEquipo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_MovimientoEquipo] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET ARITHABORT OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_MovimientoEquipo] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_MovimientoEquipo] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_MovimientoEquipo] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET  ENABLE_BROKER
GO
ALTER DATABASE [db_MovimientoEquipo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_MovimientoEquipo] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_MovimientoEquipo] SET  READ_WRITE
GO
ALTER DATABASE [db_MovimientoEquipo] SET RECOVERY FULL
GO
ALTER DATABASE [db_MovimientoEquipo] SET  MULTI_USER
GO
ALTER DATABASE [db_MovimientoEquipo] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_MovimientoEquipo] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_MovimientoEquipo', N'ON'
GO
USE [db_MovimientoEquipo]
GO
/****** Object:  Table [dbo].[Tb_TipoEquipo]    Script Date: 09/26/2016 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_TipoEquipo](
	[Id_TipoE] [varchar](6) NOT NULL,
	[TipoEquipo] [varchar](25) NULL,
	[Marca] [varchar](15) NULL,
	[Modelo] [varchar](20) NULL,
	[Descripcion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_TipoE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Personal]    Script Date: 09/26/2016 16:12:22 ******/
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
	[nivel] [int] NULL,
 CONSTRAINT [XPKUsuario] PRIMARY KEY CLUSTERED 
(
	[Id_Personal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Inventario]    Script Date: 09/26/2016 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Inventario](
	[Serie] [varchar](30) NOT NULL,
	[Tienda] [varchar](50) NULL,
	[Fecha] [varchar](20) NULL,
	[Registro] [varchar](10) NULL,
	[Cargo] [varchar](30) NULL,
	[Tecnico] [varchar](10) NULL,
	[Marca] [varchar](30) NULL,
	[Modelo] [varchar](30) NULL,
	[Hostname] [varchar](30) NULL,
	[Ip] [varchar](16) NULL,
	[Procesador] [varchar](50) NULL,
	[Memoria] [varchar](50) NULL,
	[DiscoDuro] [varchar](50) NULL,
	[NroPerfiles] [int] NULL,
	[SistemaO] [varchar](50) NULL,
	[M_Marca] [varchar](20) NULL,
	[M_Modelo] [varchar](20) NULL,
	[M_Serie] [varchar](20) NULL,
	[I_Marca] [varchar](20) NULL,
	[I_Modelo] [varchar](20) NULL,
	[I_Serie] [varchar](20) NULL,
	[P_Marca] [varchar](20) NULL,
	[P_Modelo] [varchar](20) NULL,
	[P_Serie] [varchar](20) NULL,
	[B_Marca] [varchar](20) NULL,
	[B_Modelo] [varchar](20) NULL,
	[B_Serie] [varchar](20) NULL,
	[L_Marca] [varchar](20) NULL,
	[L_Modelo] [varchar](20) NULL,
	[L_Serie] [varchar](20) NULL,
	[Observacion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Serie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Equipo]    Script Date: 09/26/2016 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Equipo](
	[Id_Equipo] [int] IDENTITY(0,1) NOT NULL,
	[Id_TipoE] [varchar](6) NULL,
	[Serie] [varchar](25) NULL,
	[NroEtiqueta] [varchar](15) NULL,
	[CodigoBarra] [varchar](20) NULL,
	[Observacion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Equipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_TipoEquipo]    Script Date: 09/26/2016 16:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TipoEquipo]
@TipoEquipo varchar(25),@Marca varchar(15),@Modelo varchar(20)
as
Select Id_TipoE from tb_tipoEquipo2
where tipoEquipo = @tipoEquipo and Marca=@Marca and Modelo= @Modelo
GO
/****** Object:  View [dbo].[View_1]    Script Date: 09/26/2016 16:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.Tb_Area.Area, dbo.Tb_Sede.Sede, dbo.Tb_Sede.TipoSede, dbo.Tb_Movimiento.Fecha_Movimiento, dbo.Tb_Movimiento.Ticket, dbo.Tb_Movimiento.Observacion, 
                      dbo.Tb_Movimiento.Condicion, dbo.Tb_Movimiento.Aprobacion1, dbo.Tb_Movimiento.Aprobacion2, dbo.Tb_Personal.NomApe, dbo.Tb_Cliente.NomApe AS Expr1, 
                      dbo.Tb_Area.Sala
FROM         dbo.Tb_Area INNER JOIN
                      dbo.Tb_Movimiento ON dbo.Tb_Area.Id_Area = dbo.Tb_Movimiento.Id_Area INNER JOIN
                      dbo.Tb_Personal ON dbo.Tb_Movimiento.Id_Personal = dbo.Tb_Personal.Id_Personal INNER JOIN
                      dbo.Tb_Sede ON dbo.Tb_Movimiento.Id_Sede = dbo.Tb_Sede.Id_Sede CROSS JOIN
                      dbo.Tb_Cliente
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[11] 2[12] 3) )"
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
               Bottom = 110
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
         Begin Table = "Tb_Movimiento"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "Tb_Personal"
            Begin Extent = 
               Top = 6
               Left = 650
               Bottom = 125
               Right = 810
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tb_Sede"
            Begin Extent = 
               Top = 96
               Left = 236
               Bottom = 200
               Right = 396
            End
            DisplayFlags = 280
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Table = 1170
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Object:  StoredProcedure [dbo].[sp_logueo]    Script Date: 09/26/2016 16:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_logueo] @usuario varchar(10),@clave varchar(10),@nivel int
as
select id_personal,clave,nivel from tb_personal
where id_personal=@usuario and clave=@clave and nivel = @nivel
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarEquipo]    Script Date: 09/26/2016 16:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_EliminarEquipo] 
@Id_Equipo int
as
delete Tb_Equipo
where Id_Equipo=@Id_Equipo
GO
/****** Object:  StoredProcedure [dbo].[sp_buscarEquipo]    Script Date: 09/26/2016 16:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_buscarEquipo] 
@parametro varchar(20)
as
begin
Select * from Tb_Equipo
where Serie like @parametro +'%' or 
      NroEtiqueta like @parametro +'%' or
      CodigoBarra like @parametro +'%'
order by Id_Equipo desc
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDPERSONAL]    Script Date: 09/26/2016 16:12:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ADDINVENTARIO]    Script Date: 09/26/2016 16:12:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ADDEQUIPO]    Script Date: 09/26/2016 16:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDEQUIPO]
@Id_TipoE varchar(6),@Serie varchar(25),@NroEtiqueta varchar(15),@CodigoBarra varchar (20),@Observacion text
as
INSERT INTO Tb_Equipo 
(Id_TipoE,Serie,NroEtiqueta,CodigoBarra,Observacion)
VALUES
(@Id_TipoE,@Serie,@NroEtiqueta,@CodigoBarra,@Observacion)
GO
/****** Object:  StoredProcedure [dbo].[SP_VEREQUIPOS]    Script Date: 09/26/2016 16:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VEREQUIPOS]
AS
SELECT * FROM TB_EQUIPO         
WHERE Id_Equipo NOT LIKE ''
ORDER BY Id_Equipo DESC
GO
