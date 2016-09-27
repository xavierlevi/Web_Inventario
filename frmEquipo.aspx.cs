using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Media;


public partial class frmEquipo : System.Web.UI.Page
{
    WebService ws = new WebService();
    String strConect;
    SqlConnection conexion;
    TestIPAddress info = new TestIPAddress();
    SqlCommand cmm = new SqlCommand();
    Controller control = new Controller();
    capaModelo objEquipo = new capaModelo();
    DataTable DT_midatatable = new DataTable();
    string fila;
    SoundPlayer player;

    private void Conectar()
    {
        try
        {
            strConect = ConfigurationManager.ConnectionStrings["base"].ConnectionString;
            conexion = new SqlConnection(strConect);
        }
        catch (Exception ex)
        {
            lblMensaje.Text = "No se encontro el servidor, o este no esta accesible";
            throw;
        }

       
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true) return;
        {
            try
            {
                
                verEquipo();
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message.ToString();
            }
        }

    }

    public void verEquipo()
    {
        try
        {
            GridView1.DataSource = ws.verEquipo();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message.ToString();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        verEquipo();
        
        //TextBox1.Text = GridView1.Rows[7].Cells[7].Text;
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        try
        {
            verEquipo();
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message.ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtSerie.Text == String.Empty || txtNroEtiqueta.Text == String.Empty || txtCodBarra.Text == String.Empty)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Orange;
                lblMensaje.Text = "Llenen los campos correctamente";
            }

            else
            {
                try
                {
                    Conectar();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = conexion;
                    cmd.CommandText = "SP_ADDEQUIPO";

                    cmd.Parameters.AddWithValue("@Id_TipoE", ddlIdTipoEquipo.SelectedValue);
                    cmd.Parameters.AddWithValue("@Serie", txtSerie.Text);
                    cmd.Parameters.AddWithValue("@NroEtiqueta", txtNroEtiqueta.Text);
                    cmd.Parameters.AddWithValue("@CodigoBarra", txtCodBarra.Text);
                    cmd.Parameters.AddWithValue("@Observacion", ddlEstado.SelectedValue);

                    conexion.Open();
                    cmd.ExecuteNonQuery();
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    lblMensaje.Text = "Guardado";
                    limpiar();
                    verEquipo();
                    sonido();

                }
                catch (Exception ex)
                {
                    lblMensaje.Text = ex.Message.ToString();
                }
                finally
                {
                    conexion.Close();
                    conexion.Dispose();
                }
            }
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message.ToString();
        }
    }

    private void sonido()
    {
        player = new SoundPlayer(@"C:\Users\xt5498\Documents\Visual Studio 2008\Projects\Edward\Web_InventarioE\App_Code\musica\beep-04.wav");
        player.Play();
        
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        verEquipo();

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //fila = txtIdEquipo.Text;
        //fila = GridView1.Rows[Convert.ToInt32(GridView1.SelectedIndex.ToString())].Cells[2].Text.ToString();
        
    }

    public void bloquear()
    {
        try
        {

        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message.ToString();
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            txtSerie.Enabled = false; txtSerie.Text = "No se visualiza";
        }
        else
        {
            txtSerie.Enabled = true; txtSerie.Text = string.Empty;
        }
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
        {
            txtNroEtiqueta.Enabled = false; txtNroEtiqueta.Text = "No se visualiza";
        }
        else
        {
            txtNroEtiqueta.Enabled = true; txtNroEtiqueta.Text = string.Empty;
        }
    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox3.Checked == true)
        {
            txtCodBarra.Enabled = false; txtCodBarra.Text = "No se visualiza";
        }
        else
        {
            txtCodBarra.Enabled = true; txtCodBarra.Text = string.Empty;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        limpiar();
        lblMensaje.ForeColor = System.Drawing.Color.Black; lblMensaje.Text = "";
    }

    private void limpiar()
    {
        txtSerie.Text = ""; txtSerie.Enabled = true;
        txtNroEtiqueta.Text = ""; txtNroEtiqueta.Enabled = true;
        txtCodBarra.Text = ""; txtCodBarra.Enabled = true;
        txtSerie.Focus();
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
    }

    protected void TextBox1_Load(object sender, EventArgs e)
    {
          //try
        //{
        //    string salida_datos="";
        //    string [] palabra_busqueda = TextBox1.Text.Split(' ') ;
        //    foreach(string palabra in palabra_busqueda)
        //    {
        //        salida_datos = "select ";
        //    }
        //}
        //catch(Exception)
        //{
        //}
    }
 

    protected void btnActualizar_Click(object sender, EventArgs e)
    {

    }
    private void Seleccionar()
    {
        try
        {

        }
        catch (Exception)
        {
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //try
        //{
        //     short indicefila;
        //        indicefila = Convert.ToInt16(e.CommandArgument);
        //        //string strcod;
        //        if (indicefila >= 0 & indicefila < GridView1.Rows.Count)
        //        {
        //            TextBox1.Text= GridView1.Rows[indicefila].Cells[2].Text;
        //            //if (e.CommandName == "Actualizar")
        //            //{
        //            //    Session["CodigoCliente"] = strcod;
        //            //    Response.Redirect("~/InsertarActualizarClientes.aspx");  
        //        }
        //}
        //catch(Exception ex)
        //{
        //    lblMensaje.Text = ex.Message.ToString();
        //}
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
             //TableCell celda = GridView1.Rows[e.RowIndex].Cells[2];
             //if (celda.Text == "Behavior")
             //{
             //    e.Cancel = true;
             //    lblMensaje.Text = "No desea Eliniar";
             //}
             //else
             //{
             //    lblMensaje.Text = "";
             //}
        }
        catch (Exception ex)
        {
            lblMensaje.Text = "No se elimino";
        }
    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        try
        {

            foreach (DataRow dr_Fila in DT_midatatable.Rows)
            {
                if (fila == dr_Fila["Id_Equipo"].ToString())
                {
                    dr_Fila.Delete();
                    GridView1.DataSource = DT_midatatable;
                    GridView1.DataBind();
                }
            }
        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message.ToString();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlTipoEquipo_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlIdTipoEquipo.Items.Add("Selected");
    }

    protected void ddlTipoEquipo_Load(object sender, EventArgs e)
    {
        
    }
}

