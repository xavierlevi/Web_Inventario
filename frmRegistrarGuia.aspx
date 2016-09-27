<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmRegistrarGuia.aspx.cs" Inherits="frmInventario" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style29
        {
            width: 100%;
            height: 42px;
        }
        .style3
        {
            width: 90%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
    style="font-family: 'Segoe UI Light'; font-size: medium">
        <tr>
            <td align="left" class="style7" 
            style="font-size: large; font-weight: bold; font-family: 'Segoe UI Light'">
                Inventareo de Equipos</td>
        </tr>
        <tr>
            <td align="left" class="style7" 
            style="font-size: large; font-weight: bold; font-family: 'Segoe UI Light'">
                <table class="style3">
                    <tr>
                        <td style="font-style: oblique; font-weight: normal; font-size: small;">
                        &nbsp;&nbsp;&nbsp; Inventareo de Equipo&nbsp; de Equipos de computos de alta o baja</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <table style="text-align: left; height: 47px; font-size: large; width: 844px;">
                    <tr>
                        <td align="left" class="style39">
                            <table class="style3">
                                <tr>
                                    <td align="left" class="style5" 
                                    style="font-style: oblique; font-family: 'Segoe UI Light'; font-size: small">
                                    &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="style3" align="center">
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="Panel4" runat="server" Width="91%">
                                                        <table class="style3">
                                                            <tr>
                                                                <td class="style10">
                                                                    Guia</td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style10">
                                                                    Ubicacion Inicial</td>
                                                                <td colspan="2">
                                                                    <asp:DropDownList ID="ddlMarcaEquipo" runat="server" AutoPostBack="True" 
                                                                        DataTextField="Marca" DataValueField="Marca" 
                                                                    Width="200px">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style10">
                                                                    Ubicacion Final</td>
                                                                <td colspan="2">
                                                                    <asp:DropDownList ID="ddlModeloEquipo" runat="server" AutoPostBack="True" 
                                                                        DataTextField="Modelo" DataValueField="Modelo" 
                                                                    Width="200px">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style10">
                                                                    Fecha de Emitida</td>
                                                                <td colspan="2">
                                                                    <asp:DropDownList ID="ddlIdTipoEquipo" runat="server" AutoPostBack="True" DataTextField="Id_TipoE" 
                                                                    DataValueField="Id_TipoE" Width="150px" Enabled="False">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style10">
                                                                    Fecha de Salida</td>
                                                                <td colspan="2">
                                                                    <asp:TextBox ID="txtSerie" runat="server" Width="200px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style10">
                                                                    Fecha de Entrga</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtNroEtiqueta" runat="server" Width="200px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style10">
                                                                    Registro</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtCodBarra" runat="server" Width="200px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style10">
                                                                    Observacion</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtObservacion" runat="server" TextMode="MultiLine" 
                                                                    Width="200px"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="style8" colspan="3">
                                                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                                    Text="Guardar" />
                                                                    <asp:Button ID="Button2" runat="server" Text="Cancelar" Width="73px" 
                                                                    onclick="Button2_Click" />
                                                                    <asp:Button ID="Button3" runat="server" Text="Actualizar" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="style8" colspan="3">
                                                                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Segoe UI Light" 
                                                                    Font-Size="Medium"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <asp:Panel ID="Panel7" runat="server">
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

