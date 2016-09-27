<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRegistrarEquipo.aspx.cs" Inherits="frmRegistrarEquipo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
        * {
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td>
                <table align="center" class="style1" 
    style="font-family: 'Segoe UI Light'; font-size: medium">
    <tr>
        <td align="center">
                                    <table class="style3">
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel7" runat="server">
                                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                        GridLines="None">
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
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Guia, Tiket, </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                                    Text="Guardar" />
                                                                <asp:Button ID="Button2" runat="server" Text="Editar" />
                                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                                                        GridLines="None">
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
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
