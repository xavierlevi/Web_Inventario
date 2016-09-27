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


public partial class frmRegistrarInventario : System.Web.UI.Page 
{
    
    Conexion cnx = new Conexion();
    SqlConnection sqlconn;
    SqlCommand cmm = new SqlCommand();
    ListItemCollection lista = new ListItemCollection ();
    WebService ws = new WebService();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsPostBack) return;
            {
              
                verEquipo();
            }
        }
        catch(Exception)
        {
        }
    }

    private void conectar()
    {
        sqlconn = new SqlConnection(cnx.db_Inventario());
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

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            

        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message.ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
      
        GridView2.DataSource = lista;
        GridView2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
    }
    protected void TextBox1_Load(object sender, EventArgs e)
    {
        buscar();
    }
    private void buscar()
    {
        try
        {
            GridView1.DataSource = ws.buscarE(TextBox1.Text);
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            lblMensaje.Text = ex.Message.ToString();
        }
    }
}
