<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmLlenadoDeGuia.aspx.cs" Inherits="frmRegistrarInventario" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 671px;
        }
        .style7
        {
            width: 77px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
    style="font-family: 'Segoe UI Light'; font-size: medium">
        <tr>
            <td align="left" class="style7" 
            style="font-size: large; font-weight: bold; font-family: 'Segoe UI Light'">
                Llenado de Guia</td>
        </tr>
        <tr>
            <td align="center">
                <table style="text-align: left; height: 47px; font-size: large; width: 844px;">
                    <tr>
                        <td align="left" class="style39">
                            <table class="style3" width="100%">
                                <tr>
                                    <td>
                                        <table class="style3">
                                            <tr>
                                                <td class="style30">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style30">
                                                <asp:Panel ID="Panel7" runat="server">
                                                    <table class="style3">
                                                        <tr>
                                                            <td>
                                                                Ingrese el Numero de Guia</td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style12" colspan="2">
                                                                Buscar por: (Serie, Nro de Etiqueta, Codigo de Barra)<asp:TextBox ID="TextBox1" 
                                                                    runat="server" AutoPostBack="True" onload="TextBox1_Load" 
                                                                    ToolTip="Buscar por Serie, Etiqueta, CodBarra" Width="215px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                                                                    ForeColor="#333333" GridLines="None" 
                                                                    onpageindexchanging="GridView1_PageIndexChanging" 
                                                                    onselectedindexchanged="GridView1_SelectedIndexChanged1" PageSize="4">
                                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                    <Columns>
                                                                        <asp:CommandField ShowSelectButton="True" />
                                                                    </Columns>
                                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                    <EditRowStyle BackColor="#999999" />
                                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                </asp:GridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                Doble clic para agregar a la tabla de abajo</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                                                                    GridLines="None" AutoGenerateColumns="False">
                                                                    <RowStyle BackColor="#E3EAEB" />
                                                                    <Columns>
                                                                        <asp:BoundField HeaderText="Item" />
                                                                        <asp:BoundField HeaderText="Equipo" />
                                                                        <asp:BoundField HeaderText="Marca" />
                                                                        <asp:BoundField HeaderText="Modelo" />
                                                                        <asp:BoundField HeaderText="Serie" />
                                                                    </Columns>
                                                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                    <EditRowStyle BackColor="#7C6F57" />
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                </asp:GridView>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style30">
                                                    <asp:Panel ID="Panel6" runat="server">
                                                        <asp:Button ID="Button3" 
    runat="server" Height="26px" onclick="Button3_Click" 
                                                        Text="Guardar" />
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

