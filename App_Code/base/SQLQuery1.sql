use master
go
drop database db_Inventario2
go
create database db_Inventario2
go
use db_Inventario2
go 
alter table tb_equipo
drop constraint PK__Tb_Equip__4B9119C07F60ED59
go
drop table tb_equipo

CREATE TABLE Tb_Equipo
( 
	Id_Equipo            int  NOT NULL primary key ,
	Ubicacion			 varchar(50)  NOT NULL,
	Fecha				 varchar(15)  NOT NULL,
	RegistroUsuario		 varchar(10)  NOT NULL,
	CargoUsuario		 text		  NULL    ,
	RegistroTecnico		 varchar(10)  NOT NULL,
	Equipo               varchar(25)  NULL ,
	Marca                varchar(15)  NULL ,
	Modelo               varchar(20)  NULL ,
	Serie				 varchar(15)  null,
	Hostname			 varchar(30)  NULL,
	Ip					 varchar(20)  NULL,
	Disco                varchar(10)  NULL ,
	Memoria              varchar(10)  NULL ,
	Procesador           varchar(10)  NULL ,
	NroPerfiles			 int    NULL,
	Observacion          text  NULL 

)
go


CREATE TABLE [dbo].[Tb_Personal](
	[Id_Personal] [varchar](10) NOT NULL primary key,
	[NomApe] [varchar](70) NULL,
	[TipoPersonal] [int] NOT NULL,
	[Clave] [varchar](15) NULL,
	)
	go

drop procedure sp_addEquipo
go


create procedure sp_addEquipo
		   @Ubicacion varchar(50),
           @Fecha varchar(15),
           @RegistroUsuario varchar(10),
           @CargoUsuario text,
           @RegistroTecnico varchar(10),
           @Equipo varchar(25),
           @Marca varchar(15),
           @Modelo varchar(20),
           @Serie	 varchar(30),
           @Hostname varchar(30),
           @Ip     varchar(30),
           @Disco varchar(10),
           @Memoria varchar(10),
           @Procesador text,
           @NroPerfiles int,
           @Observacion text
as
declare @CODIGO INT
set @CODIGO=(select MAX(ID_Equipo)from Tb_Equipo)
 if (@CODIGO is null)
 set @CODIGO=1
 else 
 set @CODIGO = @CODIGO+1
INSERT INTO Tb_Equipo 
           (Id_Equipo
           ,Ubicacion
           ,Fecha
           ,RegistroUsuario
           ,CargoUsuario
           ,RegistroTecnico
           ,Equipo
           ,Marca
           ,Modelo
           ,Serie
           ,Hostname
           ,Ip
           ,Disco
           ,Memoria
           ,Procesador
           ,NroPerfiles
           ,Observacion)
     VALUES
           (@codigo
      ,@Ubicacion
      ,@Fecha
      ,@RegistroUsuario
      ,@CargoUsuario
      ,@RegistroTecnico
      ,@Equipo
      ,@Marca
      ,@Modelo
      ,@Serie
      ,@Hostname
      ,@Ip
      ,@Disco
      ,@Memoria
      ,@Procesador
      ,@NroPerfiles
      ,@Observacion)
      go
--
CREATE TABLE [dbo].[Tb_TipoEquipo](
	[Id_Equipo] [int] NOT NULL primary key,
	[Id_grupo] [int] NOT NULL,
	[Nombre] [ntext] NULL,
	[Marca] [ntext] NULL,
	[Modelo] [ntext] NULL,
	[Descripcion] [text] NULL,
)

CREATE TABLE Tb_Perifericos
(
Id_Periferico int primary key,
Periferico varchar(25),
Marca    varchar(15),
Modelo   varchar(20),
Serie  varchar(30)
)
--======PROCEDIMIENTO
create PROCEDURE sp_addPeriferico
@Periferico varchar(25),
@Marca    varchar(15),
@Modelo   varchar(20),
@Serie  varchar(30)
as
declare @CODIGO int 
BEGIN
 set @CODIGO=(select MAX(id_periferico)from Tb_Perifericos)
 if (@CODIGO is null)
 set @CODIGO=1
 else 
 set @CODIGO = @CODIGO+1
 
insert into Tb_Perifericos (Id_Periferico,Periferico,Marca,Modelo,Serie)values(@CODIGO,@Periferico,@Marca,@Modelo,@Serie)
END

USE [db_Inventario2]
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDEQUIPO]    Script Date: 07/18/2016 15:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_addTipoEquipo] 
@id_Equipo int, @IdGrupo int ,@Nombre varchar(25),@Marca ntext,@Modelo ntext,@NroInventario varchar(10), @Descripcion text
as
 
insert into dbo.Tb_TipoEquipo (Id_Equipo,Id_grupo,Nombre,Marca,Modelo,NroInventario,Descripcion)values(@id_Equipo,@IdGrupo,@Nombre,@Marca,@Modelo,@NroInventario,@Descripcion)
go


create table Tb_EquipoPeriferico
(
Id_Equipo int,
Id_Periferico int
)

exec sp_addPeriferico 'Monitor','Hp','Lp972','jm245345'
exec sp_addPeriferico 'Periferico','Marca','Modelo','Serie'


select Id_Equipo,Ubicacion,Fecha from dbo.Tb_Equipo
where Fecha= ''

exec sp_addEquipo 'Ubicacion','Fecha','RegistroUsuario','CargoUsuario','RegistroTecnico',
'Equipo','Marca','Modelo','Serie','Hostname','Ip','Disco','Memoria','Procesador',0,'Observacion'


exec sp_addTipoEquipo '1','2','Pc','Lenovo','M71e','',
exec sp_addTipoEquipo '1','2','Pc','Lenovo','M72','',
exec sp_addTipoEquipo '1','3','Pc','Hp','6300','',
exec sp_addTipoEquipo '1','3','Pc','Hp','8000','',
exec sp_addTipoEquipo '2','4','Monitor','Lenovo','M71e','',
exec sp_addTipoEquipo '2','4','Monitor','Lenovo','M71e','',


create table grupoEquipo
(
codigo int,
codgrupo int,
Descripcion ntext
)
go
insert into grupoEquipo values (11,00,'Tipo')
insert into grupoEquipo values (1,1,'Pc')
insert into grupoEquipo values (1,2,'Monitor')
insert into grupoEquipo values (1,3,'Impresora')
insert into grupoEquipo values (1,4,'Pinpad')
insert into grupoEquipo values (1,5,'Embozadora')
insert into grupoEquipo values (22,00,'Marca')
insert into grupoEquipo values (2,6,'Hp')
insert into grupoEquipo values (2,7,'Lenovo')
insert into grupoEquipo values (2,8,'Segres')
insert into grupoEquipo values (33,00,'Modelo')
insert into grupoEquipo values (3,9,'8000')
insert into grupoEquipo values (3,10,'6000')
insert into grupoEquipo values (3,11,'6300')
insert into grupoEquipo values (3,12,'8000')

select * from grupoEquipo
select Descripcion as Marcas from grupoEquipo
where codigo = 3 and codgrupo = 10