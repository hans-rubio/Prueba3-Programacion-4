<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form-Registro_Ingreso.aspx.cs" Inherits="Estacionamiento.Form_Registro_Ingreso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        </style>
    <link href="Estilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="nuevoEstilo1">FORMULARIO REGISTRO INGRESO</span><br />
        <br />
        <table class="nuevoEstilo1">
            <tr>
                <td class="Franja">INGRESE PATENTE</td>
                <td class="Contenido">
                    <asp:TextBox ID="txt_patente" runat="server" Font-Size="XX-Large" Height="54px" Width="215px" CssClass="nuevoEstilo1" MaxLength="6"></asp:TextBox>
                    &nbsp;<br />
                </td>
                </td>
            </tr>
            <tr>
                <td class="Contenido">
                    <asp:Button ID="btn_ingreso" runat="server" Text="Ingreso Vehiculo" Height="85px" Width="218px" CssClass="nuevoEstilo1" />
                </td>
                <td class="Contenido">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_patente" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
    </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Nomina-Registro.aspx">Listado de Patentes</asp:HyperLink>
        </p>
    </form>
    <p class="franja">
    </p>
</body>
</html>
