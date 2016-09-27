using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlCommand cmm= new SqlCommand();
    SqlConnection conectar;
    Conexion cadena = new Conexion();
    SqlDataReader dr;
    public Login()
    {
        conectar = new SqlConnection(cadena.db_Inventario());
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void loguearse()
    {
        int activo = 0;
        try
        {
            cmm.Connection = conectar;
            conectar.Open();
            cmm.CommandType = CommandType.StoredProcedure;
            cmm.CommandText = "sp_logueo";
            cmm.Parameters.Add("@usuario", Usuario.Text);
            cmm.Parameters.Add("@clave", Clave.Text);
            cmm.Parameters.Add("@nivel", 1);
            dr = cmm.ExecuteReader();
            while (dr.Read())
            {
                Session["clave"] = dr.GetString(0);
                Session["nombre"] = dr.GetString(1);
                Session["nivel"] = dr.GetInt32(2);
                activo = 1;
            }

            dr.Close();
            dr.Dispose();
            if (activo == 1)
            {
                try
                {
                    Response.Redirect("Inicio.aspx");
                }
                catch (SqlException ex)
                {
                    Result.Text = ex.Message;
                }
            }
            else
            {
                Result.ForeColor = System.Drawing.Color.Orange;
                Result.Text = "Usuario o contraseña inconrrecto";

            }

        }
        catch (Exception ex)
        {
            Result.ForeColor = System.Drawing.Color.Orange;
            Result.Text = "Se perdio la comunicacion con el servidor";
            Result.Text = ex.Message;
        }
        finally
        {
            conectar.Close();
            conectar.Dispose();
        }
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        cancelar();
    }
    private void cancelar()
    {
        Usuario.Focus();
        Usuario.Text = "";
        Clave.Text = "";
        Result.Text = "";
        Result.ForeColor = System.Drawing.Color.White;
    }

    protected void btnIngresar_Click1(object sender, EventArgs e)
    {
        loguearse();
    }
}
