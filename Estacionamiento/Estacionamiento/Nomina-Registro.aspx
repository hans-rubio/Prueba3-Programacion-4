<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nomina-Registro.aspx.cs" Inherits="Estacionamiento.Nomina_Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            visibility: collapse;
            overflow: scroll;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Nomina de Registro<br />
        <br />
        <asp:DataGrid ID="dg_Nomina_Registro" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingItemStyle BackColor="White" />
            <Columns>
                <asp:HyperLinkColumn DataNavigateUrlField="Id" Text="SALIDA" DataNavigateUrlFormatString="Form-Registro_Salida.aspx?e_registro={0}" Target="_self"></asp:HyperLinkColumn>
            </Columns>
            <EditItemStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataGrid>
    
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Form-Registro_Ingreso.aspx">Ingreso Patente</asp:HyperLink>
    </form>
</body>
</html>
