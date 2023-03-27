<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="TareaUniversity.Estudiantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 212px;
            text-align: left;
        }
        .auto-style5 {
            height: 212px;
            width: 694px;
            text-align: center;
        }
        .auto-style6 {
            width: 694px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Ingreso de Estudiantes</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="261px" ImageUrl="~/Img/habitos-de-estudio-universitario.jpg" Width="896px" />
                </td>
            </tr>
        </table>
       
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlEstudiantes" Height="187px" Width="680px">
                        <Columns>
                            <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
                            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                            <asp:BoundField DataField="StudentNumber" HeaderText="StudentNumber" SortExpression="StudentNumber" />
                            <asp:BoundField DataField="TotalGrade" HeaderText="TotalGrade" SortExpression="TotalGrade" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlEstudiantes" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE STUDENT WHERE StudentId = @studentId" InsertCommand="INSERT INTO STUDENT (StudentId, StudentName, StudentNumber, ClassId,TotalGrade, Address, Phone, EMail) VALUES (@studentId, @studentName, @studentNumber, @classId,@totalGrade, @address, @phone, @eMail)" SelectCommand="SELECT * FROM [STUDENT]">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TIDEstudiante" Name="studentId" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TIDEstudiante" Name="studentId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNombreEstudiante" Name="studentName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNumeroEstudiante" Name="studentNumber" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNotaTotal" Name="totalGrade" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDireccion" Name="address" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TTelefono" Name="phone" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TCorreo" Name="eMail" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TIdClase" Name="classId" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style4">ID Estudiante:...............<asp:TextBox ID="TIDEstudiante" runat="server" OnTextChanged="TextBox1_TextChanged" Width="171px"></asp:TextBox>
                    <br />
                    Nombre:.......................<asp:TextBox ID="TNombreEstudiante" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Numero de Estudiante:..<asp:TextBox ID="TNumeroEstudiante" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    ID Clase.......................<asp:TextBox ID="TIdClase" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Nota Total:...................<asp:TextBox ID="TNotaTotal" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Direccion:.....................<asp:TextBox ID="TDireccion" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Telefono:......................<asp:TextBox ID="TTelefono" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Correo Electronico:......<asp:TextBox ID="TCorreo" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" style="height: 26px" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Eliminar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
    </form>
</body>
</html>
