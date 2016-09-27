<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 151px;
    }
    .style5
    {
        width: 346px;
    }
    .style6
    {
        width: 133px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
    style="font-family: 'Segoe UI Light'; font-size: medium">
    <tr>
        <td align="left" class="style7" 
            style="font-size: large; font-weight: bold; font-family: 'Segoe UI Light'">
            Bienvenido</td>
    </tr>
    <tr>
        <td align="left" class="style7" 
            style="font-size: large; font-weight: bold; font-family: 'Segoe UI Light'">
            <table class="style3">
                <tr>
                    <td style="font-style: oblique; font-weight: normal; font-size: small;">
                        &nbsp;&nbsp;&nbsp; Sistema de control de Inventario</td>
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
                                    <table class="style3">
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel4" runat="server">
                                                    <table class="style3">
                                                        <tr>
                                                            <td class="style4">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel5" runat="server">
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel6" runat="server">
                                                    <table class="style3">
                                                        <tr>
                                                            <td class="style6">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style6">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
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
            <asp:Label ID="lblMensaje" runat="server" Font-Names="Segoe UI Light" 
                Font-Size="Medium"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

