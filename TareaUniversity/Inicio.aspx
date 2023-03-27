 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TareaUniversity.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        UNIVERSITY
    </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
            color: #08032C;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>Ingreso de Información</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="261px" ImageUrl="~/Img/design-concept-word-university-website-banner-design-concept-word-university-website-banner-137801111.jpg" Width="896px" />
                </td>
            </tr>
        </table>
        <div class="auto-style2">
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Agregar Cursos" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Agregar Estudiante" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Agregar Profesor" OnClick="Button3_Click" />
        </div>
    </form>
</body>
</html>
