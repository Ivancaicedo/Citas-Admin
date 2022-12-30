using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;

namespace Citas_Admin.Paginas
{
    public partial class Principal : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologueado"] != null){
                string usuariologueado = Session["usuariologueado"].ToString();
                loginViewUsuario.Text= usuariologueado;
            }
            ValidaPerfil();
        }

        protected void CerrarSesion_Click(object sender, EventArgs e)
        {
            CerrarSesion();
        }

        public void CerrarSesion()
        {
            Response.Redirect(@"~\Default.aspx");
        }

        public void ValidaPerfil()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlServer"].ConnectionString))
                {
                    con.Open();
                    
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}