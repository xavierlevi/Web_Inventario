<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
    <style type="text/css">


        .style1
        {
            width: 94%;
        }
        .style25
        {
            height: 680px;
        }
        .style11
        {
            height: 21px;
        }
        .style18
        {
            height: 15px;
        }
        .style12
        {
            height: 17px;
        }
        .style20
        {
            width: 158px;
            height: 14px;
        }
        .style21
        {
            height: 14px;
            width: 262px;
        }
        .style22
        {
            width: 158px;
            height: 12px;
        }
        .style23
        {
            height: 12px;
            width: 262px;
        }
        .style24
        {
            height: 20px;
        }
        .style26
        {
            height: 23px;
        }
        .style27
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div align="center">
            <table class="style1">
                <tr>
                    <td class="style25">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <table align="center" frame="box" 
                            style="height: 239px; margin-bottom: 0px; width: 430px;">
                            <tr>
                                <td class="style11" colspan="2" style="color: #000000; text-align: center; " 
                                    valign="bottom">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style18" colspan="2" 
                                    style="color: #000000; text-align: center; font-family: 'Segoe UI Light'; font-size: large;" 
                                    valign="bottom">
                                    Iniciar sesión a Inventario</td>
                            </tr>
                            <tr>
                                <td class="style12" colspan="2" style="color: #000000">
                                </td>
                            </tr>
                            <tr>
                                <td class="style20" 
                                    style="color: #000000; text-align: center; font-family: 'Segoe UI Light'; font-size: large;">
                                    &nbsp;&nbsp;&nbsp;Usuario</td>
                                <td class="style21">
                                    <asp:TextBox ID="Usuario" runat="server" Font-Names="Segoe UI Light" 
                                        Font-Size="Large" Width="195px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style22" 
                                    style="color: #000000; text-align: center; font-family: 'Segoe UI Light'; font-size: large;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contraseña</td>
                                <td class="style23">
                                    <asp:TextBox ID="Clave" runat="server" Font-Names="Segoe UI Light" 
                                        Font-Size="Large" TextMode="Password" Width="195px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2" style="text-align: center; ">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style24" colspan="2" style="text-align: center; ">
                                    <asp:Button ID="btnIngresar" runat="server" BackColor="#003366" 
                                        BorderColor="#003366" Font-Names="Tahoma" Font-Size="11pt" ForeColor="White" 
                                        Height="32px" onclick="btnIngresar_Click1" Text="Ingresar" Width="88px" />
                                    &nbsp;<asp:Button ID="btnCancelar" runat="server" BackColor="#003366" 
                                        BorderColor="#003366" Font-Names="Tahoma" Font-Size="11pt" ForeColor="White" 
                                        Height="32px" onclick="btnCancelar_Click" Text="Cancelar" Width="87px" />
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style26" colspan="2" style="text-align: center; ">
                                    </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2" 
                                    
                                    style="text-align: lecf; height: 42px; font-family: 'Segoe UI Light'; font-size: medium; color: #666666;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Ingrese su registro y contraseña</td>
                            </tr>
                        </table>
                        <table class="style27">
                            <tr>
                                <td>
                                    <asp:Label ID="Result" runat="server" Font-Names="Segoe UI Light"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
