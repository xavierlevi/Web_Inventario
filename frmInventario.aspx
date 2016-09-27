<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmInventario.aspx.cs" Inherits="frmInventario" %>

<!DOCTYPE html>
<html lang="es">
    <head>
    <meta charset="utf-8">
        <title>Formulario de Registro</title>
        <link rel=stylesheet href="estilos.css">
        <script src="validar.js"></script>
    </head>
    <body>
    <h1>Formulario de Registro</h1>
        <form runat="server" class="form-register" action="registrar.php" method="post" onsubmit="return validar();">
            <h2 class="form-titulo">CREA UNA CUENTA</h2>
            <div class="contenedor-inputs">
            <input type="text" id="nombre" name="nombre" placeholder="Fecha" class="input-48">
            <input type="text" id="apellido" name="apellido" placeholder="Tienda" class="input-48">
            <asp:TextBox ID="txtFecha" placeholder="Fecha" class="input-100" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtRegistro" placeholder="Registro" class="input-100" runat="server"></asp:TextBox>
            <input type="text" id="usuario" name="usuario" placeholder="Cargo" class="input-48">
            <input type="password" id="clave" name="clave" placeholder="Tecnico" class="input-48" >
            <input type="text" id="telefono" name="telefono" placeholder="Marca" class="input-100">
            
            <asp:TextBox ID="txtHostname" name="nombre" placeholder="HostName" class="input-48" runat="server"></asp:TextBox> 
            <input type="text"  id="Text2" name="apellido" placeholder="Apellido" class="input-48">
            <input type="email" id="email" name="email" placeholder="Email" class="input-100">
            <input type="text" id="Text3" name="usuario" placeholder="Usuario" class="input-48">
            <input type="password" id="Password1" name="clave" placeholder="Clave" class="input-48" >
            <input type="text" id="Text4" name="telefono" placeholder="Teléfono" class="input-100">
            
                <input type="submit" id="Registrar" name="Registrar" value="Registrar" class="btn-enviar" required>
                <p class="form-link">¿Ya tiene una Cuenta? <a href="#">Ingresar aqui</a></p>
            
            </div>
        </form>
    </body>
    
    
</html>