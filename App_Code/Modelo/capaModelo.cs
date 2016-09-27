using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public class capaModelo
{
    
    String strConect;
    SqlConnection conexion;
    capaLogica capal = new capaLogica();
    SqlCommand cmm = new SqlCommand();
    WebService ws = new WebService();


    public capaModelo()
    {
    }

    private void Conectar()
    {
        strConect = ConfigurationManager.ConnectionStrings["base"].ConnectionString;
        conexion = new SqlConnection(strConect);
    }

  
	
    // private string addActivo(capaLogica id)
    //{
    //    string codigo = "";
    //    try
    //    {
    //        {
    //            Conectar();
    //            SqlCommand cmd = new SqlCommand();
    //            cmd.CommandType = CommandType.StoredProcedure;
    //            cmd.CommandText = "SP_ADDINVENTARIO";
    //            cmd.Parameters.Add("@Id_Cliente", id._codcli);
    //            cmd.Parameters.AddWithValue("@Fecha_Inventario",id._codcli).Value.ToString();
    //            cmd.Parameters.Add("@Id_Personal", SqlDbType.VarChar, 10).Value = Convert.ToInt32(Session["Clave"].ToString());
    //            cmd.Parameters.Add("@Id_Equipo", SqlDbType.Int).Value = txtObservacion;
    //            cmd.Parameters.Add("@Serie", SqlDbType.VarChar, 20).Value = txtSerie.Text;
    //            cmd.Parameters.Add("@NomEquipo", SqlDbType.VarChar, 30).Value = txtHostname.Text;
    //            cmd.Parameters.Add("@Ip", SqlDbType.VarChar, 20).Value = txtIp.Text;
    //            cmd.Parameters.Add("@NroPerfiles", SqlDbType.Int).Value = 0;
    //            cmd.Parameters.Add("@Ubicacion", SqlDbType.VarChar, 50).Value = txtUbicacion.Text;
    //            cmd.Parameters.Add("@Observacion", SqlDbType.Text).Value = txtObservacion.Text;
    //            //
    //            try
    //            {
    //                cmd.ExecuteNonQuery();
    //                lblMensaje.ForeColor = System.Drawing.Color.Green;
    //                lblMensaje.Text = "Agregado";
    //                conexion.Open();
    //                cmd.Connection = conexion;

    //            }
    //            catch (Exception ex)
    //            {
    //                lblMensaje.Text = ex.Message.ToString();
    //            }
    //            finally
    //            {
    //                conexion.Close();
    //                conexion.Dispose();
    //            }

    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        lblMensaje.Text = ex.Message.ToString();
    //    }
    //    return codigo;
    //private void cargarInformacion()
    //{
    //    Conectar();
    //    SqlCommand cmd = new SqlCommand();
    //    SqlDataReader reader;
    //    cmd.Connection = conexion;
    //    cmd.CommandType = CommandType.Text;
    //    cmd.CommandText = "select Titulo,ParrafoCuerpo from Noticias where idNoticia = @idNoticia";
    //    cmd.Parameters.Add("@idNoticia", SqlDbType.Int).Value = Convert.ToInt32(ddlActivo.SelectedValue);

    //    try
    //    {
    //        conexion.Open();
    //        reader = cmd.ExecuteReader();

    //        while (reader.Read())
    //        {
    //            txtUbicacion.Text = reader.GetString(0);
    //            txtCargo.Text = reader.GetString(1);
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        lblMensaje.ForeColor = System.Drawing.Color.Red;
    //        lblMensaje.Text = ex.ToString();
    //    }
    //    finally
    //    {
    //        conexion.Close();
    //        conexion.Dispose();
    //    }
    //}

    //protected void comboEntradas_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    cargarInformacion();
    //    lblMensaje.Text = String.Empty;
    //}
    //    try
    //    {
    //        /* Evitar postback con ENTER en textbox */
    //        TextBox1.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        TextBox2.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        TextBox3.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        TextBox4.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        TextBox5.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        TextBox5.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        TextBox6.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        TextBox7.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
    //        if (!IsPostBack)
    //        {
    //            //cargarComboUsuarios();
    //            //cargarComboUsuariosCambio();
    //            //TextBox1.Text = DateTime.Today.Date.ToString().Substring(0, 10);
    //            //comboUsuario.SelectedIndex = 0;
    //            //cargarInformacion();

    //            //if (Session["TipoUsuario"].ToString() != "860")
    //            //{
    //            //    for (int i = 0; i < comboUsuarioCambio.Items.Count; i++)
    //            //    {
    //            //        comboUsuarioCambio.SelectedIndex = i;

    //            //        if (comboUsuarioCambio.SelectedValue == Session["idUsuario"].ToString())
    //            //        {
    //            //            i = comboUsuarioCambio.Items.Count + 1;
    //            //            comboUsuarioCambio.Enabled = false;
    //            //        }
    //            //    }
    //            //    cargarInformacion();
    //            //}
    //        }
    //        //else
    //        //{
    //        //    cargarInformacion();
    //        //}
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Redirect("/Inicio.aspx");
    //    }
    //}
    //private void verificar()
    //{
    //    comboUsuario.Items.Clear();

    //    try
    //    {
    //        Conectar();
    //        conexion.Open();
    //        SqlCommand cmd = new SqlCommand();
    //        SqlDataReader reader;
    //        cmd.Connection = conexion;
    //        cmd.CommandText = "select idUsuario,NomApe from Usuario where Activo = 1 and idGrupo1 in (810,813) order by NomApe";
    //        reader = cmd.ExecuteReader();

    //        while (reader.Read())
    //        {
    //            ListItem item1 = new ListItem();
    //            item1.Value = Convert.ToString(reader.GetInt32(0));
    //            item1.Text = Convert.ToString(reader.GetString(1));
    //            comboUsuario.Items.Add(item1);
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        lbl1.Text = ex.Message;
    //    }
    //    finally
    //    {
    //        conexion.Close();
    //        conexion.Dispose();
    //    }


    //private void cargarComboUsuario_v2()
    //{
    //    //DropDownList1.Items.Clear();

    //    try
    //    {
    //        Conectar();
    //        conexion.Open();
    //        SqlCommand cmd = new SqlCommand();
    //        SqlDataReader reader;
    //        cmd.Connection = conexion;
    //        cmd.CommandText = "select id_Equipo,Nombre from tb_tipoEquipo order by Nombre";
    //        //where Activo = 1 and idGrupo1 in (811,814)
    //        reader = cmd.ExecuteReader();

    //        while (reader.Read())
    //        {
    //            ListItem item1 = new ListItem();
    //            item1.Value = Convert.ToString(reader.GetInt32(0));
    //            item1.Text = Convert.ToString(reader.GetString(1));
    //            //DropDownList1.Items.Add(item1);
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        //lbl1.Text = ex.Message;
    //    }
    //    finally
    //    {
    //        conexion.Close();
    //        conexion.Dispose();
    //    }
    //}
    public DataTable getIdTipoEquipo(eEquipo entidad)
    {
        DataSet dts = new DataSet();
        try
        {
            cmm.Connection = conexion;
            cmm.CommandType = CommandType.StoredProcedure;
            cmm.CommandText = "sp_TipoEquipo";
            cmm.Parameters.AddWithValue("@TipoEquipo",entidad._idTipoE);
            cmm.Parameters.AddWithValue("@Marca",entidad._marca);
            cmm.Parameters.AddWithValue("@Modelo",entidad._modelo);
            SqlDataAdapter miada;
            Conectar();
            miada = new SqlDataAdapter(cmm);
            miada.Fill(dts, "Tb_TipoEquipo");
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            cmm.Parameters.Clear();
        }
        return (dts.Tables["Tb_TipoEquipo"]);
    }
    public void buscarE(capaModelo entidad)
    {
        try
        {
            string texto = string.Empty;
            SqlDataReader dr;
            cmm.Connection = conexion;
            cmm.CommandType = CommandType.StoredProcedure;
            cmm.CommandText = "sp_verEquipo";
            cmm.Parameters.AddWithValue("@id_tipoe",entidad);
            conexion.Open();
            dr = cmm.ExecuteReader();

            while (dr.Read())
            {
                ListItem item1 = new ListItem();

            }

        }
        catch (Exception)
        {
        }
    }
 
    public void ddlActivar(DropDownList ddl, TextBox txt) 
    {
        try
        {
            if (ddl.SelectedValue != "Seleccione")
            {
                txt.Enabled = true;
                txt.Focus();
                
            }
            else
            {
                txt.Enabled = false;
            }
        }
        catch ( Exception ex)
        {
            throw new Exception(ex.Message);
        }
     
    }
}
