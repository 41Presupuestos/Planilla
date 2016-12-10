Create Database BDPlanilla
Go

Use BDPlanilla
Go

Create Table T_Distrito(
IdDistrito int Primary Key,
Distrito Varchar (100),
Estado int
);
Go

Create Table T_Empleados(
IdEmpleado int Primary Key,
Nombre Varchar (100),
Apellido Varchar (100),
DNI Varchar (8),
Cargo Varchar (50),
IdDistrito int,
Estado int,
Constraint FK_DisEmp01 Foreign Key (IdDistrito) References T_Distrito
);
Go

/** Procedimientos Almacenados para la Tabla Distrito **/

Create Procedure SP_InsertarDistrito
(
	@IdDistrito int,
	@Distrito Varchar (100),
	@Estado int
)
As
Begin
	Insert Into T_Distrito
	(IdDistrito, Distrito, Estado)
	Values
	(@IdDistrito, @Distrito, @Estado)
End
Go

Create Procedure SP_Modificar_Distrito
(
	@IdDistrito int,
	@Distrito Varchar (100),
	@Estado int
)
As
Begin
	Update T_Distrito Set
		Distrito   = @Distrito,
		Estado     = @Estado
	Where
		IdDistrito = @IdDistrito
End
Go

Create Procedure SP_Eliminar_Distrito
(
	@IdDistrito int
)
As
Begin
	Delete T_Distrito Where IdDistrito = @IdDistrito
End
Go

Create Procedure SP_Listar_Distritos
As
Begin
	Select * From T_Distrito
End
Go

/** Procedimientos Almacenados para la Tabla Empleado **/

Create Procedure SP_Insertar_Empleados
(
	@IdEmpleado int,
	@Nombre Varchar (100),
	@Apellido Varchar (100),
	@DNI Varchar (8),
	@Cargo Varchar (50),
	@IdDistrito int,
	@Estado int
)
As
Begin
	Insert Into T_Empleados
	(IdEmpleado, Nombre, Apellido, DNI, Cargo, IdDistrito, Estado)
	Values
	(@IdEmpleado, @Nombre, @Apellido, @DNI, @Cargo, @IdDistrito, @Estado)
End
Go

Create Procedure SP_Modificar_Empleado
(
	@IdEmpleado int,
	@Nombre Varchar (100),
	@Apellido Varchar (100),
	@DNI Varchar (8),
	@Cargo Varchar (50),
	@IdDistrito int,
	@Estado int
)
As
Begin
	Update T_Empleados Set
		Nombre     = @Nombre,
		Apellido   = @Apellido,
		DNI        = @DNI,
		Cargo      = @Cargo,
		IdDistrito = @IdDistrito,
		Estado     = @Estado
	Where
		IdEmpleado = @IdEmpleado
End
Go

Create Procedure SP_Eliminar_Empleado
(
	@IdEmpleado int
)
As
Begin
	Delete T_Empleados Where IdEmpleado = @IdEmpleado
End
Go

Create Procedure SP_Listar_Empleado
As
Begin
	Select
	T.IdEmpleado, T.Nombre, T.Apellido, T.DNI, T.Cargo, D.Distrito, T.Estado
	From T_Empleados T Inner Join T_Distrito D
	on T.IdDistrito = d.IdDistrito
End
Go

Execute SP_InsertarDistrito 01, 'Ancón', 1
Execute SP_InsertarDistrito 02, 'Santa Rosa', 1
Execute SP_InsertarDistrito 03, 'Ventanilla', 1
Execute SP_InsertarDistrito 04, 'Callao', 1
Execute SP_InsertarDistrito 05, 'La Punta', 1
Execute SP_InsertarDistrito 06, 'Carmen de la Legua - Reynoso', 1
Execute SP_InsertarDistrito 07, 'Bellavista', 1
Execute SP_InsertarDistrito 08, 'La Perla', 1
Execute SP_InsertarDistrito 09, 'Carabayllo', 1
Execute SP_InsertarDistrito 10, 'Puente Piedra', 1
Execute SP_InsertarDistrito 11, 'San Martìn de Porres', 1
Execute SP_InsertarDistrito 12, 'Los Olivos', 1
Execute SP_InsertarDistrito 13, 'Comas', 1
Execute SP_InsertarDistrito 14, 'Independencia', 1
Execute SP_InsertarDistrito 15, 'San Juan de Lurigancho', 1
Execute SP_InsertarDistrito 16, 'Lima', 1
Execute SP_InsertarDistrito 17, 'Breña', 1
Execute SP_InsertarDistrito 18, 'Rimac', 1
Execute SP_InsertarDistrito 19, 'El Agustino', 1
Execute SP_InsertarDistrito 20, 'San Miguel', 1
Execute SP_InsertarDistrito 21, 'Pueblo Libre', 1
Execute SP_InsertarDistrito 22, 'Jesús María', 1
Execute SP_InsertarDistrito 23, 'Magdalena del Mar', 1
Execute SP_InsertarDistrito 24, 'Lince', 1
Execute SP_InsertarDistrito 25, 'La Victoria', 1
Execute SP_InsertarDistrito 26, 'San Luis', 1
Execute SP_InsertarDistrito 27, 'San Isidro', 1
Execute SP_InsertarDistrito 28, 'Miraflores', 1
Execute SP_InsertarDistrito 29, 'Surquillo', 1
Execute SP_InsertarDistrito 30, 'Barranco', 1
Execute SP_InsertarDistrito 31, 'San Borja', 1
Execute SP_InsertarDistrito 32, 'Santiago de Surco', 1
Execute SP_InsertarDistrito 33, 'Chorrillos', 1
Execute SP_InsertarDistrito 34, 'Santa Anita', 1
Execute SP_InsertarDistrito 35, 'Ate', 1
Execute SP_InsertarDistrito 36, 'La Molina', 1
Execute SP_InsertarDistrito 37, 'Lurigancho - Chosica', 1
Execute SP_InsertarDistrito 38, 'Chaclacayo', 1
Execute SP_InsertarDistrito 39, 'Cieneguilla', 1
Execute SP_InsertarDistrito 40, 'Pachacámac', 1
Execute SP_InsertarDistrito 41, 'San Juan de Miraflores', 1
Execute SP_InsertarDistrito 42, 'Villa María del Triunfo', 1
Execute SP_InsertarDistrito 43, 'Villa el Salvador', 1
Execute SP_InsertarDistrito 44, 'Lurin', 1
Execute SP_InsertarDistrito 45, 'Punta Hermosa', 1
Execute SP_InsertarDistrito 46, 'Punta Negra', 1
Execute SP_InsertarDistrito 47, 'San Bartolo', 1
Execute SP_InsertarDistrito 48, 'Santa María del Mar', 1
Execute SP_InsertarDistrito 49, 'Pucusana', 1
Go