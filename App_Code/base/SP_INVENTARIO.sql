/*--eliminar una tabla
use db_MovimientoEquipo
go
sp_help Tb_Movimiento
go
alter table dbo.Tb_Movimiento
drop constraint R_14
go
drop table dbo.Tb_Equipo
go
drop database db_MovimientoEquipo

--detener base de datos
sp_detach_db 'db_MomivimientoEquipo'
--recuperar base de datos
sp_attach_db 'db_MomivimientoEquipo','C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_MovimientoEquipo.mdf'

-- vaciar tabla
update tb_cliente
set id_cliente = ''
go */



--PROCEDIMIENTO AGREGAR CLIENTE
CREATE PROCEDURE SP_ADDCLIENTE
@Id_Cliente VARCHAR(10),@NomApe VARCHAR(70),@Cargo varchar(50)
as
BEGIN
 insert into TB_CLIENTE (Id_Cliente,NomApe,Cargo)values (@Id_Cliente,@NomApe,@Cargo)
 END
 GO
--
EXEC SP_ADDCLIENTE 'B13422','LORENA MAYER','Colaborador'
EXEC SP_ADDCLIENTE 'xt5829','JOSE ANTONIO MENDOZA CHOQUE',''
EXEC SP_ADDCLIENTE 'xt6348 ','KATHERINE NIEVES ALVA',''
GO

--=======PROCEDIMIENTO AGREGAR EQUIPO
CREATE PROCEDURE SP_ADDEQUIPO 
@Nombre varchar(25),@Marca varchar(15),@Modelo varchar(20),@Disco varchar(10),
@Memoria varchar(10),@Procesador varchar(10),@Descripcion text
as
declare @CODIGO int 
BEGIN
 set @CODIGO=(select MAX(ID_EQUIPO)from TB_EQUIPO)
 if (@CODIGO is null)
 set @CODIGO=1
 else 
 set @CODIGO = @CODIGO+1
insert into tb_equipo (Id_Equipo,Nombre,Marca,Modelo,Disco,Memoria,Procesador,Descripcion)values(@CODIGO,@Nombre,@Marca,@Modelo,@Disco,@Memoria,@Procesador,@Descripcion)
END
GO
--
EXEC sp_addEquipo 'Pc','Lenovo','M71','500 GB','4 GB','',''
EXEC SP_ADDEQUIPO 'Pc','Hp','8000','500 GB','2 GB','Core 2 Duo',''
EXEC SP_ADDEQUIPO 'Pc','Hp','6300','','','',''
EXEC SP_ADDEQUIPO 'Mouse','Hp','Mofyko','','','',''
EXEC SP_ADDEQUIPO 'Monitor','Hp','VL1911','','','',''
EXEC SP_ADDEQUIPO 'Pc','Lenovo','M72','','','','Equipo ingresa a baja el 2017'

--=========PROCEDIMIENTO AGREGAR personal
CREATE PROCEDURE SP_ADDPERSONAL
@Id_Personal VARCHAR(10),@NomApe VARCHAR(10),@TipoPersonal INT,@Clave VARCHAR(10)
AS
BEGIN
INSERT INTO Tb_Personal(Id_Personal,NomApe,TipoPersonal,Clave) VALUES(@Id_Personal,@NomApe,@TipoPersonal,@Clave)
END
GO
--
SELECT * FROM Tb_PERSONAL
exec SP_ADDPERSONAL 'XT5498','Xavier Paredes','3','12345'
exec SP_ADDPERSONAL 'XT5499','Juan Peña','3','12345'
exec SP_ADDPERSONAL 'XT5488','Luis Morales','3','12345'
GO

--========PROCEDIMIENTO AGREGAR INVENTARIO
CREATE PROCEDURE SP_ADDINVENTARIO
@Fecha_Inventario date,@Id_Cliente varchar(10),@Id_Personal varchar(10),
@Id_Equipo int,@Serie varchar(20),@NomEquipo varchar(30),@Ip varchar(20),
@NroPerfiles int,@Ubicacion varchar(50),@Observacion text
as
declare @CODIGO int 
BEGIN
 set @CODIGO=(select MAX(ID_INVENTARIO)from Tb_Inventario)
 if (@CODIGO is null)
 set @CODIGO=1
 else 
 set @CODIGO = @CODIGO+1
INSERT INTO Tb_INVENTARIO (Id_Inventario,Fecha_Inventario,Id_Cliente,Id_Personal,
Id_Equipo,Serie,NomEquipo,Ip,NroPerfiles,Ubicacion,Observacion) 
VALUES(@CODIGO,@Fecha_Inventario,@Id_Cliente,@Id_Personal,
@Id_Equipo,@Serie,@NomEquipo,@Ip,@NroPerfiles,@Ubicacion,@Observacion)
END
GO
--
EXEC SP_ADDINVENTARIO '01-02-16','B13422','XT5488',1,'Serie','NomEquipo','Ip',5,'Ubicacion','Observacion'
EXEC SP_ADDINVENTARIO '01-03-16','B13422','XT5488',1,'Serie','NomEquipo','Ip',5,'Ubicacion','Observacion'
EXEC SP_ADDINVENTARIO '01-04-16','XT5829','XT5488',2,'Serie','NomEquipo','Ip',5,'Ubicacion','Observacion'
GO


