<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="TareaUniversity.Cursos" %>

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
            width: 836px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Ingreso de Cursos</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="261px" ImageUrl="~/Img/Cursos-online-ES.png" Width="896px" />
                </td>
            </tr>
        </table>
       
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseId" DataSourceID="SqlCourses">
                        <Columns>
                            <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId" />
                            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                            <asp:BoundField DataField="SchoolId" HeaderText="SchoolId" SortExpression="SchoolId" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlCourses" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE COURSE WHERE CourseId = @courseId" InsertCommand="INSERT INTO COURSE (CourseId, CourseName, SchoolId, Description) VALUES (@coursedId, @courseName, @schoolId, @description)" SelectCommand="SELECT * FROM [COURSE]">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TIdCurso" Name="courseId" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TIdCurso" Name="coursedId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNombreCurso" Name="courseName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TIdEscuela" Name="schoolId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDescription" Name="description" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>ID del Curso:...............<asp:TextBox ID="TIdCurso" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Nombre del curso:.......<asp:TextBox ID="TNombreCurso" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    ID de la escuela:..........<asp:TextBox ID="TIdEscuela" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    Descripcion:................<asp:TextBox ID="TDescription" runat="server" Width="171px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Agregar" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Eliminar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
    </form>
</body>
</html>
