using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TareaUniversity
{
    public partial class Estudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlEstudiantes.Insert();
            TCorreo.Text = string.Empty;
            TIDEstudiante.Text = string.Empty;
            TNombreEstudiante.Text = string.Empty;
            TNumeroEstudiante.Text = string.Empty;
            TTelefono.Text = string.Empty;
            TDireccion.Text = string.Empty;
            TNotaTotal.Text = string.Empty;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlEstudiantes.Delete();
        }
    }
}