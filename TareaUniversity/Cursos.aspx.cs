using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TareaUniversity
{
    public partial class Cursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCourses.Insert();
            TDescription.Text = String.Empty;
            TIdCurso.Text = String.Empty;
            TNombreCurso.Text = String.Empty;
            TIdEscuela.Text = String.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCourses.Delete();
            TIdCurso.Text = String.Empty;
        }
    }
}