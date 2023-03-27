using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TareaUniversity
{
    public partial class Profesores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlTeacher.Insert();
            TIDEscuela.Text = string.Empty;
            TIdProfesor.Text = string.Empty;
            TNombreProfesor.Text = string.Empty;
            TDescription.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlTeacher.Delete();
            TIdProfesor.Text = string.Empty;
        }
    }
}