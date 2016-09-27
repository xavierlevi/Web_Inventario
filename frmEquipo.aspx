<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmEquipo.aspx.cs" Inherits="frmEquipo" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


.contenidoPagina
{
	padding: 15px;
}

        .style3
    {
        width: 100%;
    }
    .style5
    {
        width: 346px;
    }
    .style7
    {
        width: 393px;
    }
        .style8
        {
    }

    .style10
    {
            width: 162px;
        }

        .style11
        {
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
    style="font-family: 'Segoe UI Light'; font-size: medium">
    <tr>
        <td align="left" class="style7" 
            style="font-size: large; font-weight: bold; font-family: 'Segoe UI Light'">
            Registro de Equipos</td>
    </tr>
    <tr>
        <td align="left" class="style7" 
            style="font-size: large; font-weight: bold; font-family: 'Segoe UI Light'">
            <table class="style3">
                <tr>
                    <td style="font-style: oblique; font-weight: normal; font-size: small;">
                        &nbsp;&nbsp;&nbsp; Registro de Equipo de computo</td>
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
                                    <table class="style3" align="center" width="50%">
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel4" runat="server" Width="69%">
                                                    <table class="style3">
                                                        <tr>
                                                            <td class="style10">
                                                                Equipo</td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlTipoEquipo" runat="server" AutoPostBack="True" 
                                                                    DataSourceID="dsTipo" DataTextField="TipoEquipo" 
                                                                    DataValueField="TipoEquipo" Width="200px" onload="ddlTipoEquipo_Load" 
                                                                    onselectedindexchanged="ddlTipoEquipo_SelectedIndexChanged">
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="dsTipo" runat="server" 
                                                                    ConnectionString="Data Source=.;Initial Catalog=db_MovimientoEquipo;Integrated Security=True" 
                                                                    SelectCommand="SELECT DISTINCT [TipoEquipo] FROM [Tb_TipoEquipo]">
                                                                </asp:SqlDataSource>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style10">
                                                                Marca</td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlMarcaEquipo" runat="server" AutoPostBack="True" 
                                                                    DataSourceID="ddsMarca" DataTextField="Marca" DataValueField="Marca" 
                                                                    Width="200px">
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="ddsMarca" runat="server" 
                                                                    ConnectionString="Data Source=.;Initial Catalog=db_MovimientoEquipo;Integrated Security=True" 
                                                                    
                                                                    SelectCommand="SELECT DISTINCT [Marca] FROM [Tb_TipoEquipo] WHERE ([TipoEquipo] = @TipoEquipo)">
                                                                    <SelectParameters>
                                                                        <asp:ControlParameter ControlID="ddlTipoEquipo" Name="TipoEquipo" 
                                                                            PropertyName="SelectedValue" Type="String" />
                                                                    </SelectParameters>
                                                                </asp:SqlDataSource>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style10">
                                                                Modelo</td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlModeloEquipo" runat="server" AutoPostBack="True" 
                                                                    DataSourceID="dsModelo" DataTextField="Modelo" DataValueField="Modelo" 
                                                                    Width="200px">
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="dsModelo" runat="server" 
                                                                    ConnectionString="Data Source=.;Initial Catalog=db_MovimientoEquipo;Integrated Security=True" 
                                                                    
                                                                    SelectCommand="SELECT DISTINCT [Modelo] FROM [Tb_TipoEquipo] WHERE (([TipoEquipo] = @TipoEquipo) AND ([Marca] = @Marca))">
                                                                    <SelectParameters>
                                                                        <asp:ControlParameter ControlID="ddlTipoEquipo" Name="TipoEquipo" 
                                                                            PropertyName="SelectedValue" Type="String" />
                                                                        <asp:ControlParameter ControlID="ddlMarcaEquipo" Name="Marca" 
                                                                            PropertyName="SelectedValue" Type="String" />
                                                                    </SelectParameters>
                                                                </asp:SqlDataSource>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style10">
                                                                &nbsp;</td>
                                                            <td colspan="2">
                                                                <asp:DropDownList ID="ddlIdTipoEquipo" runat="server" AutoPostBack="True" 
                                                                    DataSourceID="ddlIdTipoE" DataTextField="Id_TipoE" 
                                                                    DataValueField="Id_TipoE" Width="150px" Enabled="False">
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="ddlIdTipoE" runat="server" 
                                                                    ConnectionString="Data Source=.;Initial Catalog=db_MovimientoEquipo;Integrated Security=True" 
                                                                    ProviderName="System.Data.SqlClient" 
                                                                    SelectCommand="SELECT DISTINCT [Id_TipoE] FROM [Tb_TipoEquipo] WHERE (([TipoEquipo] = @TipoEquipo) AND ([Marca] = @Marca) AND ([Modelo] = @Modelo))">
                                                                    <SelectParameters>
                                                                        <asp:ControlParameter ControlID="ddlTipoEquipo" Name="TipoEquipo" 
                                                                            PropertyName="SelectedValue" Type="String" />
                                                                        <asp:ControlParameter ControlID="ddlMarcaEquipo" Name="Marca" 
                                                                            PropertyName="SelectedValue" Type="String" />
                                                                        <asp:ControlParameter ControlID="ddlModeloEquipo" Name="Modelo" 
                                                                            PropertyName="SelectedValue" Type="String" />
                                                                    </SelectParameters>
                                                                </asp:SqlDataSource>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style10">
                                                                Serie</td>
                                                            <td colspan="2">
                                                                <asp:TextBox ID="txtSerie" runat="server" Width="200px"></asp:TextBox>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                                                                    oncheckedchanged="CheckBox1_CheckedChanged" Text="No se visualiza" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style10">
                                                                Numero de Etiqueta</td>
                                                            <td>
                                                                <asp:TextBox ID="txtNroEtiqueta" runat="server" Width="200px"></asp:TextBox>
                                                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
                                                                    oncheckedchanged="CheckBox2_CheckedChanged" Text="No se visualiza" />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style10">
                                                                Codigo de Barra</td>
                                                            <td>
                                                                <asp:TextBox ID="txtCodBarra" runat="server" Width="200px"></asp:TextBox>
                                                                <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" 
                                                                    oncheckedchanged="CheckBox3_CheckedChanged" Text="No se visualiza" />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style10">
                                                                Estado</td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlEstado" runat="server" Width="150px">
                                                                    <asp:ListItem>Seleccionar</asp:ListItem>
                                                                    <asp:ListItem>Operativo</asp:ListItem>
                                                                    <asp:ListItem>Baja</asp:ListItem>
                                                                    <asp:ListItem>Backup</asp:ListItem>
                                                                    <asp:ListItem>Garantia</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" class="style8" colspan="3">
                                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                                    Text="Guardar" style="height: 26px" />
                                                                <asp:Button ID="Button2" runat="server" Text="Nuevo" Width="73px" 
                                                                    onclick="Button2_Click" />
                                                                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
                                                                    onclick="btnActualizar_Click" />
                                                                <asp:Button ID="btnEliminar" runat="server" onclick="btnEliminar_Click" 
                                                                    Text="Eliminar" />
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
                                                    <table class="style3">
                                                        <tr>
                                                            <td>
                                                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                                                                    ForeColor="#333333" GridLines="None" 
                                                                    onpageindexchanging="GridView1_PageIndexChanging" 
                                                                    onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                                                                    onselectedindexchanged="GridView1_SelectedIndexChanged1" PageSize="4" 
                                                                    ToolTip="Seleccionar Actualizar">
                                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                    <Columns>
                                                                        <asp:CommandField ShowSelectButton="True" />
                                                                        <asp:CommandField ShowDeleteButton="True" />
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
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                                                    PostBackUrl="~/frmLlenadoDeGuia.aspx">Ir a Llenar Guia</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
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

