<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="TareaUniversity.Profesores" %>

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
        .auto-style5 {
            height: 212px;
            width: 694px;
            text-align: center;
        }
        .auto-style4 {
            height: 212px;
            text-align: left;
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
                <td class="auto-style2"><strong>Ingreso de Profesores</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="261px" ImageUrl="~/Img/profesor-corrigiendo-examenes-en-aula-juancarlosmejia-flickr-ccbync20-580.jpg" Width="896px" />
                </td>
            </tr>
        </table>
       
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TeacherId" DataSourceID="SqlTeacher" Width="629px">
                        <Columns>
                            <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
                            <asp:BoundField DataField="SchoolId" HeaderText="SchoolId" SortExpression="SchoolId" />
                            <asp:BoundField DataField="TeacherName" HeaderText="TeacherName" SortExpression="TeacherName" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM TEACHER WHERE TeacherId = @teacherId" InsertCommand="INSERT INTO TEACHER (TeacherId, SchoolId, TeacherName, Description) VALUES (@teacherId, @schoolId, @teacherName, @description)" SelectCommand="SELECT * FROM [TEACHER]">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TIdProfesor" Name="teacherId" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TIdProfesor" Name="teacherId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TIDEscuela" Name="schoolId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNombreProfesor" Name="teacherName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDescription" Name="description" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style4">ID Profesor:...................<asp:TextBox ID="TIdProfesor" runat="server" Width="170px"></asp:TextBox>
                    <br />
                    Nombre:........................<asp:TextBox ID="TNombreProfesor" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    ID Escuela:....................<asp:TextBox ID="TIDEscuela" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Descripcion:...................<asp:TextBox ID="TDescription" runat="server" Height="49px" Width="173px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Agregar" />
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
