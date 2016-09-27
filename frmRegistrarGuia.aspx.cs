using System;

using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Management;
using System.Net;
using Microsoft.VisualBasic;
using System.Diagnostics;
using System.Threading;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;


public partial class frmInventario : System.Web.UI.Page
{
    WebService ws = new WebService();
    String strConect;
    SqlConnection conexion;
    TestIPAddress info = new TestIPAddress();
    private void Conectar()
    {
        strConect = ConfigurationManager.ConnectionStrings["base"].ConnectionString;
        conexion = new SqlConnection(strConect);
    }
    public frmInventario()
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        lblMensaje.ForeColor = System.Drawing.Color.Black;
        lblMensaje.Text = "";

            if (Page.IsPostBack) return;
            {
                try
                {
                   

                    // txtRegistro.Text = Environment.UserName; //Obtener registro del usuario
                    // txtFecha.Text = System.DateTime.Now.ToShortDateString();//Obtiene la fecha
                     

                    //txtFecha.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
                    //txtCargo.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
                    
                    //txtTecnico.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
                    //txtUbicacion.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
                    //txtTecnico.Text = Session["nombre"].ToString();
                }
                catch(Exception)
                {
                }

            }
    }

    //private void addActivo()
    //{
    //    try
    //    {
    //        if (txtRegistro.Text == String.Empty || txtUbicacion.Text == String.Empty)
    //        {
    //            lblMensaje.ForeColor = System.Drawing.Color.Orange;
    //            lblMensaje.Text = "Registro y Ubicacion obligatorio";
    //        }
    //        else
    //        { 
    //            try
    //            {
    //                Conectar();
    //                SqlCommand cmd = new SqlCommand();
    //                cmd.CommandType = CommandType.StoredProcedure;
    //                cmd.Connection = conexion;
    //                cmd.CommandText = "sp_addEquipo";
    //                cmd.Parameters.AddWithValue("@Ubicacion", txtUbicacion.Text);
    //                cmd.Parameters.AddWithValue("@Fecha", txtFecha.Text);
    //                cmd.Parameters.AddWithValue("@RegistroUsuario", txtRegistro.Text);
    //                cmd.Parameters.AddWithValue("@CargoUsuario", txtCargo.Text);
    //                cmd.Parameters.AddWithValue("@RegistroTecnico", Session["clave"].ToString());
         

    //                conexion.Open();
    //                cmd.ExecuteNonQuery();
    //                lblMensaje.ForeColor = System.Drawing.Color.Green;
    //                lblMensaje.Text = "Guardado";
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
        
    //}

    private void getSerie()
    {
        try
        {
            ManagementClass mcSerie = new ManagementClass("Win32_BaseBoard");
            ManagementObjectCollection moc = mcSerie.GetInstances();
            foreach (ManagementObject mo in moc)
            {
               
                mo.Dispose();
            }
        }
        catch (Exception)
        {
        }
    }
    public void getMarca(string marca)
    {
        try
        {
            ManagementClass mc = new ManagementClass("Win32_BaseBoard");
            ManagementObjectCollection moc = mc.GetInstances();
            foreach (ManagementObject mo in moc)
            {
                marca = mo["Manufacturer"].ToString();
                mo.Dispose();
            }
        }
        catch (Exception)
        {
        }
    }
    public void getModelo(string modelo)
    {
        try
        {
            ManagementClass mc = new ManagementClass("Win32_BaseBoard");
            ManagementObjectCollection moc = mc.GetInstances();
            foreach (ManagementObject mo in moc)
            {
                modelo = mo["Model"].ToString();
                mo.Dispose();
            }
        }
        catch (Exception)
        {
        }
    }
   
    private void limpiar()
    {
  
    }

    
    private void getIp()
    {
        try
        {
            IPHostEntry host;
            string localIp = "?";
            host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ip in host.AddressList)
            {
                if (ip.AddressFamily.ToString() == "InterNetwork")
                {
                    localIp = ip.ToString();
                   
                }
            }
        }
        catch (Exception)
        {
            
        }

    }
    public void getProcesador(string procesador)
    {
        try
        {
            {
                ManagementClass mc = new ManagementClass("Win32_Processor");
                ManagementObjectCollection moc = mc.GetInstances();
                foreach (ManagementObject mo in moc)
                {
                    procesador = mo["name"].ToString();
               
                    mo.Dispose();
                }
            }
        }
        catch (Exception)
        {
        }
    }

    

    

    
    public void getDisco(string disco)
    {
        //Referir al namespace \\root\cimv2
        ManagementScope scope = new ManagementScope("\\root\\cimv2");
        //Crear un objeto para consultar una tabla del namespace
        ObjectQuery query = new ObjectQuery("SELECT * FROM Win32_LogicalDisk where drivetype=3");
        //Ejecutar el query
        ManagementObjectSearcher mos = new ManagementObjectSearcher(scope, query);
        //Iterar en los resultados del query
        foreach (ManagementObject item in mos.Get())
        {
            long hddSizeBytes = Int64.Parse(item["Size"].ToString());
            double hddSizeGBytes = hddSizeBytes / 1024 / 1024 / 1024;
            disco = hddSizeGBytes + " GB";
            
        }
    }

    public void getMemoria(string memoria)
    {
        PerformanceCounter ramCounter = new PerformanceCounter("Memory", "Available MBytes");
        memoria = ramCounter.NextValue() + " MB";
       
        Thread.Sleep(1000);
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {

           
        }
        catch (Exception)
        {
        }
    }
    protected void txtAgregar_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
   
   
    
}
