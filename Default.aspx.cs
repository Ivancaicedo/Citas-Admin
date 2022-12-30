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


namespace Citas_Admin
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSesion_Click(object sender, EventArgs e)
        {
            ValidaUsuario();
        }

        public void ValidaUsuario()
        {
            if(TxtNombreUsuario.Text != "" && TxtContraseña.Text !="") { 
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlServer"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "SP_ADM_ValidarUsuario";
                    cmd.Parameters.Add("@Usuario", SqlDbType.VarChar).Value = TxtNombreUsuario.Text;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = TxtContraseña.Text;
                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        
                        Session["usuariologueado"] = TxtNombreUsuario.Text;
                        Response.Redirect(@"~\Paginas\Principal.aspx");
                    }
                    else
                    {
                        TxtNombreUsuario.Text = "";
                        TxtContraseña.Text = "";
                        lblError.Text = "Usuario y/o Contraseña incorrectos";
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            }
            else if(TxtNombreUsuario.Text =="")
            {
                TxtNombreUsuario.Text = "";
                TxtContraseña.Text = "";
                lblError.Text = "Por favor ingrese el usuario";
            }
            else if(TxtContraseña.Text == "")
            {
                TxtNombreUsuario.Text = "";
                TxtContraseña.Text = "";
                lblError.Text = "Por favor ingrese el contraseña";
            }
        }
        }
}