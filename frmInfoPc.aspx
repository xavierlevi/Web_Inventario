<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmInfoPc.aspx.cs" Inherits="frmInfoPc" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 627px;
        height: 141px;
        margin-top: 1px;
    }
        .style4
        {
        }
        .style10
    {
        width: 621px;
    }
    .style12
    {
        height: 24px;
    }
    .style18
    {
        width: 84%;
    }
    .style19
    {
        width: 101%;
    }
    .style20
    {
        width: 87%;
    }
    .style21
    {
        height: 18px;
    }
    .style22
    {
        height: 22px;
    }
    .style25
    {
        height: 21px;
    }
        .style26
        {
            height: 13px;
        }
        .style27
        {
            width: 108px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style29" align="left" __designer:mapid="1f4" 
    style="font-family: 'Segoe UI Light'; font-size: large; width: 718px;">
    <tr __designer:mapid="284">
        <td class="style26" __designer:mapid="285" 
            align="center">
            </td>
    </tr>
    <tr __designer:mapid="288">
        <td class="style41" __designer:mapid="289">
            <table __designer:mapid="28b" class="style3" align="center">
                <tr __designer:mapid="28c">
                    <td __designer:mapid="28d">
                        <asp:Panel ID="Panel4" runat="server" Width="625px">
                            <table class="style3" align="center">
                                <tr>
                                    <td class="style8" colspan="4" 
                                        style="background-color: #009999; color: #FFFFFF; font-family: 'Segoe UI'; font-size: large;">
                                        Datos&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                        Tienda</td>
                                    <td>
                                        <asp:TextBox ID="txtUbicacion" runat="server" Width="180px">Tienda
                                        </asp:TextBox>
                                    </td>
                                    <td>
                                        Fecha</td>
                                    <td>
                                        <asp:TextBox ID="txtFecha" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        Cargo
                                    </td>
                                    <td class="style12">
                                        <asp:TextBox ID="txtCargo" runat="server" Width="176px"></asp:TextBox>
                                    </td>
                                    <td class="style12">
                                        Registro</td>
                                    <td class="style12">
                                        <asp:TextBox ID="txtRegistro" runat="server"></asp:TextBox>
                                        <asp:Label ID="txtTecnico" runat="server" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr __designer:mapid="280">
        <td 
            __designer:mapid="281">
                                                                <asp:Panel ID="Panel5" runat="server">
                                                                    <table class="style18" align="center">
                                                                        <tr>
                                                                            <td>
                                                                                <table align="left" class="style10">
                                                                                    <tr>
                                                                                        <td class="style19" colspan="4" 
                                                                                            style="background-color: #009999; color: #FFFFFF; font-family: 'Segoe UI Light'; font-size: large;">
                                                                                            Pc</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="style12">
                                                                                            Marca</td>
                                                                                        <td class="style12">
                                                                                            <asp:TextBox ID="txtMarca" runat="server" Width="156px"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="style12">
                                                                                            Procesador</td>
                                                                                        <td class="style12">
                                                                                            <asp:TextBox ID="txtProcesador" runat="server" Width="153px"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="style25">
                                                                                            Modelo</td>
                                                                                        <td class="style25">
                                                                                            <asp:TextBox ID="txtModelo" runat="server" Width="154px"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="style25">
                                                                                            Memoria</td>
                                                                                        <td class="style25">
                                                                                            <asp:TextBox ID="txtMemoria" runat="server" Width="155px"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="style21">
                                                                                            Serie</td>
                                                                                        <td class="style21">
                                                                                            <asp:TextBox ID="txtSerie" runat="server" Width="154px"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="style21">
                                                                                            Disco Duro</td>
                                                                                        <td class="style21">
                                                                                            <asp:TextBox ID="txtDisco" runat="server" Width="152px"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="style25">
                                                                                            HostName</td>
                                                                                        <td class="style25">
                                                                                            <asp:TextBox ID="txtHostname" runat="server" placeholder="Hostname" 
                                                                                                Width="158px"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="style25">
                                                                                            Nro de perfiles</td>
                                                                                        <td class="style25">
                                                                                            <asp:TextBox ID="txtNroPerfiles" runat="server"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="style22">
                                                                                            Ip</td>
                                                                                        <td class="style22">
                                                                                            <asp:TextBox ID="txtIp" runat="server" Width="152px"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="style22">
                                                                                            Sistema Operativo</td>
                                                                                        <td class="style22">
                                                                                            <asp:TextBox ID="txtSO" runat="server"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
        </td>
    </tr>
    <tr __designer:mapid="280">
        <td 
            __designer:mapid="281">
                                                                <asp:Panel ID="Panel6" runat="server">
                                                                    <table class="style18" align="center">
                                                                        <tr>
                                                                            <td>
                                                                                <table class="style20">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="style19">
                                                                                                <tr>
                                                                                                    <td colspan="5" 
                                                                                                        style="background-color: #009999; color: #FFFFFF; font-family: 'Segoe UI'; font-size: large;">
                                                                                                        Periferico</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td class="style21">
                                                                                                        Monitor</td>
                                                                                                    <td class="style21">
                                                                                                        Impresora</td>
                                                                                                    <td class="style21">
                                                                                                        Pinpad</td>
                                                                                                    <td class="style21">
                                                                                                        Biometrico</td>
                                                                                                    <td class="style21">
                                                                                                        Lector</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlMonitor" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI Light" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlMonitor_SelectedIndexChanged" 
                                                                                                            DataSourceID="dsMarcaM" DataTextField="Marca" DataValueField="Marca">
                                                                                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                        <asp:SqlDataSource ID="dsMarcaM" runat="server" 
                                                                                                            ConnectionString="<%$ ConnectionStrings:db_MovimientoEquipoConnectionString %>" 
                                                                                                            SelectCommand="SELECT DISTINCT [Marca] FROM [Tb_TipoEquipo] WHERE ([TipoEquipo] = @TipoEquipo)">
                                                                                                            <SelectParameters>
                                                                                                                <asp:Parameter DefaultValue="Monitor" Name="TipoEquipo" Type="String" />
                                                                                                            </SelectParameters>
                                                                                                        </asp:SqlDataSource>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlImpresora" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI Light" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlImpresora_SelectedIndexChanged">
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlPinpad" runat="server" AutoPostBack="True" 
                                                                                                            onselectedindexchanged="ddlPinpad_SelectedIndexChanged" 
                                                                                                            Font-Names="Segoe UI Light" Font-Size="Medium">
                                                                                                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                                                            <asp:ListItem>Uic</asp:ListItem>
                                                                                                            <asp:ListItem>Xac</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlBiometrico" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlBiometrico_SelectedIndexChanged">
                                                                                                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                                                            <asp:ListItem>Sagem</asp:ListItem>
                                                                                                            <asp:ListItem>Morphon</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlLector" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlLector_SelectedIndexChanged">
                                                                                                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                                                            <asp:ListItem>Motorola</asp:ListItem>
                                                                                                            <asp:ListItem>Symbol</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlMonitor0" runat="server" AutoPostBack="True" 
                                                                                                            DataSourceID="dsModelM" DataTextField="Modelo" DataValueField="Modelo" 
                                                                                                            Font-Names="Segoe UI Light" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlMonitor_SelectedIndexChanged">
                                                                                                        </asp:DropDownList>
                                                                                                        <asp:SqlDataSource ID="dsModelM" runat="server" 
                                                                                                            ConnectionString="<%$ ConnectionStrings:db_MovimientoEquipoConnectionString %>" 
                                                                                                            SelectCommand="SELECT DISTINCT [Modelo] FROM [Tb_TipoEquipo] WHERE (([Marca] = @Marca) AND ([TipoEquipo] = @TipoEquipo))">
                                                                                                            <SelectParameters>
                                                                                                                <asp:ControlParameter ControlID="ddlMonitor" Name="Marca" 
                                                                                                                    PropertyName="SelectedValue" Type="String" />
                                                                                                                <asp:Parameter DefaultValue="Monitor" Name="TipoEquipo" Type="String" />
                                                                                                            </SelectParameters>
                                                                                                        </asp:SqlDataSource>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlImpresora0" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI Light" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlImpresora_SelectedIndexChanged">
                                                                                                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                                                            <asp:ListItem>Epson</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlPinpad0" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI Light" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlPinpad_SelectedIndexChanged">
                                                                                                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                                                            <asp:ListItem>Uic</asp:ListItem>
                                                                                                            <asp:ListItem>Xac</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlBiometrico0" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlBiometrico_SelectedIndexChanged">
                                                                                                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                                                            <asp:ListItem>Sagem</asp:ListItem>
                                                                                                            <asp:ListItem>Morphon</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:DropDownList ID="ddlLector0" runat="server" AutoPostBack="True" 
                                                                                                            Font-Names="Segoe UI" Font-Size="Medium" 
                                                                                                            onselectedindexchanged="ddlLector_SelectedIndexChanged">
                                                                                                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                                                            <asp:ListItem>Motorola</asp:ListItem>
                                                                                                            <asp:ListItem>Symbol</asp:ListItem>
                                                                                                        </asp:DropDownList>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="txtMonitor" runat="server" Width="117px"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="txtImpresora" runat="server" Width="117px"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="txtPinpad" runat="server" Width="117px"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="txtBiometrico" runat="server" Width="117px"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="txtLectora" runat="server" Width="117px"></asp:TextBox>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
        </td>
    </tr>
    <tr __designer:mapid="280">
        <td 
            __designer:mapid="281">
                                                                <asp:Panel ID="Panel7" runat="server">
                                                                    <table class="style20" align="center">
                                                                        <tr>
                                                                            <td class="style27" style="background-color: #CC0000; color: #FFFFFF">
                                                                                &nbsp; Observación</td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtObservacion" runat="server" Height="34px" 
                                            TextMode="MultiLine" Width="492px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
        </td>
    </tr>
    <tr __designer:mapid="256">
        <td class="style41" align="center" __designer:mapid="257">
            <asp:Label ID="lblMensaje" runat="server" Font-Names="Segoe UI Light" 
                                                                    Font-Size="Medium"></asp:Label>
        </td>
    </tr>
    <tr __designer:mapid="256">
        <td class="style41" align="center" __designer:mapid="257">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
                                                                        
                onclick="btnGuardar_Click" Height="40px" Width="100px" BackColor="#00CC99" 
                BorderColor="#00CC99" Font-Names="Segoe UI" Font-Size="Medium" 
                ForeColor="White" />
        </td>
    </tr>
    </table>
</asp:Content>

