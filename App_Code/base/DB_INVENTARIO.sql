use master
go 


create database db_Inventario
go
use db_Inventario
go

CREATE TABLE Tb_Cliente
( 
	Id_Cliente           varchar(10)  NOT NULL ,
	NomApe               varchar(70)  NULL ,
	Cargo                varchar(50)  NULL 
)
go



ALTER TABLE Tb_Cliente
	ADD CONSTRAINT XPKTb_Usuario PRIMARY KEY (Id_Cliente)
go



CREATE TABLE Tb_Equipo
( 
	Id_Equipo           int  NOT NULL ,
	Nombre               varchar(25)  NULL ,
	Marca                varchar(15)  NULL ,
	Modelo               varchar(20)  NULL ,
	Disco                varchar(10)  NULL ,
	Memoria              varchar(10)  NULL ,
	Procesador           varchar(10)  NULL ,
	Descripcion          text  NULL 
)
go



ALTER TABLE Tb_Equipo
	ADD CONSTRAINT XPKTb_Equipo PRIMARY KEY (Id_Equipo)
go



CREATE TABLE Tb_Inventario
( 
	Id_Inventario        int  NOT NULL ,
	Fecha_Inventario     date  NULL ,
	Id_Cliente           varchar(10)  NOT NULL ,
	Id_Personal          varchar(10)  NOT NULL ,
	Id_Equipo            int  NOT NULL ,
	Serie                varchar(20)  NULL ,
	NomEquipo            varchar(30)  NULL ,
	Ip                   varchar(20)  NULL ,
	NroPerfiles          int  NULL ,
	Ubicacion            varchar(50)  NULL ,
	Observacion          text  NULL 
)
go



ALTER TABLE Tb_Inventario
	ADD CONSTRAINT XPKTb_Inventario PRIMARY KEY (Id_Inventario)
go



CREATE TABLE Tb_Personal
( 
	Id_Personal          varchar(10)  NOT NULL ,
	NomApe               varchar(70)  NULL ,
	TipoPersonal         INT  NULL ,
	Clave                varchar(15)  NULL 
)
go



ALTER TABLE Tb_Personal
	ADD CONSTRAINT XPKTb_Colaborador PRIMARY KEY (Id_Personal)
go




ALTER TABLE Tb_Inventario
	ADD CONSTRAINT R_1 FOREIGN KEY (Id_Equipo) REFERENCES Tb_Equipo(Id_Equipo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Tb_Inventario
	ADD CONSTRAINT R_3 FOREIGN KEY (Id_Personal) REFERENCES Tb_Personal(Id_Personal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Tb_Inventario
	ADD CONSTRAINT R_2 FOREIGN KEY (Id_Cliente) REFERENCES Tb_Cliente(Id_Cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


