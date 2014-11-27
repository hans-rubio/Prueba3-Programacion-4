<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form-Registro_Salida.aspx.cs" Inherits="Estacionamiento.Form_Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <link href="Estilo.css" rel="stylesheet" type="text/css" />
    <link href="Estilo.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="nuevoEstilo1">FORMULARIO REGISTRO SALIDA<br />
        </span>
        <br />
        <asp:HiddenField ID="hdn_id" runat="server" />
        <br />
        <table class="nuevoEstilo1">
            <tr>
                <td class="Franja">HORA ENTRADA</td>
                <td class="Contenido">
                    <asp:TextBox ID="txt_hora_entrada" runat="server" Font-Size="XX-Large" Height="62px" Width="163px" CssClass="nuevoEstilo1" Enabled="False"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_estado" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Franja">ESTADO</td>
                <td class="Contenido">
                    <asp:TextBox ID="txt_estado" runat="server" Font-Size="XX-Large" Height="63px" Width="165px" CssClass="nuevoEstilo1" Enabled="False">SALIR</asp:TextBox>
                    &nbsp;
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_estado" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Franja">
                    MONTO A PAGAR</td>
                <td class="Contenido">
                    <asp:TextBox ID="txt_monto_pagar" runat="server" Font-Size="XX-Large" Height="68px" Width="166px" CssClass="nuevoEstilo1"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_monto_pagar" ErrorMessage="Ingrese Monto"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_monto_pagar" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Franja">
                    TIEMPO</td>
                <td class="Contenido">
                    <asp:TextBox ID="txt_tiempo" runat="server" Font-Size="XX-Large" Height="65px" Width="170px" CssClass="nuevoEstilo1"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_tiempo" ErrorMessage="Ingrese Tiempo" ValidationExpression="^(0[1-9]|1\d|2[0-3]):([0-5]\d):([0-5]\d)$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_tiempo" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
    </div>
        <p>
                    &nbsp;
                </p>
        <p>
                    <asp:Button ID="btn_ingreso" runat="server" Text="INGRESAR" Height="84px" Width="188px" OnClick="btn_ingreso_Click" CssClass="nuevoEstilo1" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_cancelar" runat="server" OnClick="btn_cancelar_Click" Text="CANCELAR" />
                </p>
    </form>
</body>
</html>
