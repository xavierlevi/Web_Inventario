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

using System.Net;
using Microsoft.VisualBasic;
using System.Diagnostics;
using System.Threading;
using System.Data.SqlClient;
using System.Management;

public partial class frmInfoPc : System.Web.UI.Page
{
    WebService ws = new WebService();
    String strConect;
    SqlConnection conexion;
    TestIPAddress info = new TestIPAddress();
    capaModelo objmodelo = new capaModelo();
    private void Conectar()
    {
        try
        {
            strConect = ConfigurationManager.ConnectionStrings["base"].ConnectionString;
            conexion = new SqlConnection(strConect);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        lblMensaje.ForeColor = System.Drawing.Color.Black;
        lblMensaje.Text = "";

        if (Page.IsPostBack) return;
        {
            try
            {
                
                desactivar();   
                getProcesador(txtProcesador.Text);
                getIp();
                getMemoria(txtMemoria.Text);
                getSerie();
                txtHostname.Text = Environment.MachineName.ToString();//registro
                txtRegistro.Text = Environment.UserName; //Obtener registro del usuario
                txtSO.Text = Environment.OSVersion.ToString();
                txtFecha.Text = System.DateTime.Now.ToShortDateString();//Obtiene la fecha
                txtTecnico.Text = Session["nombre"].ToString();
            }
            catch (Exception)
            {
            }
        }
    }

    private void addEquipo()
    {
        try
        {
            if (txtRegistro.Text == String.Empty || txtUbicacion.Text == String.Empty || txtCargo.Text == String.Empty         )
                //if(mar== String.Empty)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Tomato;
                lblMensaje.Text = "No se admiten campos vacios";
            }
            else
            {
                try
                {
                    Conectar();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = conexion;
                    cmd.CommandText = "sp_addEquipo";
                    //Datos
                    cmd.Parameters.AddWithValue("@Serie", txtUbicacion.Text);
                    cmd.Parameters.AddWithValue("@Tienda", txtFecha.Text);
                    cmd.Parameters.AddWithValue("@Fecha", txtRegistro.Text);
                    cmd.Parameters.AddWithValue("@Registro", txtCargo.Text);
                    cmd.Parameters.AddWithValue("@Cargo", txtCargo);
                    //
                    cmd.Parameters.AddWithValue("@Tecnico", Session["usuario"].ToString());
                    cmd.Parameters.AddWithValue("@Marca", txtMarca.Text);
                    cmd.Parameters.AddWithValue("@Modelo", txtModelo.Text);
                    cmd.Parameters.AddWithValue("@Hostname", txtHostname.Text);
                    cmd.Parameters.AddWithValue("@Ip", txtIp.Text);
                    cmd.Parameters.AddWithValue("@Procesador",txtProcesador.Text);
                    cmd.Parameters.AddWithValue("@Disco", txtDisco.Text);
                    cmd.Parameters.AddWithValue("@NroPerfiles", txtNroPerfiles.Text);
                    cmd.Parameters.AddWithValue("@SistemaO", txtSO.Text);

                    cmd.Parameters.AddWithValue("@M_Marca", ddlMonitor.SelectedValue);
                    cmd.Parameters.AddWithValue("@M_Modelo", ddlMonitor0.SelectedValue);
                    cmd.Parameters.AddWithValue("@M_Serie",txtMonitor.Text);

                    cmd.Parameters.AddWithValue("@I_Marca", ddlImpresora.SelectedValue);
                    cmd.Parameters.AddWithValue("@I_Modelo", ddlImpresora0.SelectedValue);
                    cmd.Parameters.AddWithValue("@I_Serie", txtImpresora.Text);

                    cmd.Parameters.AddWithValue("@P_Marca", ddlPinpad.SelectedValue);
                    cmd.Parameters.AddWithValue("@P_Modelo", ddlPinpad0.SelectedValue);
                    
                    //Perifericos

                    //
                    cmd.Parameters.AddWithValue("@Observacion", txtObservacion.Text);

                    conexion.Open();
                    cmd.ExecuteNonQuery();
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    lblMensaje.Text = "Guardado";
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

    private void getSerie()
    {
        try
        {
            ManagementClass mcSerie = new ManagementClass("Win32_BaseBoard");
            ManagementObjectCollection moc = mcSerie.GetInstances();
            foreach (ManagementObject mo in moc)
            {
                txtSerie.Text = mo["SerialNumber"].ToString();
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
        txtDisco.Text = "";
        txtFecha.Text = "";
        txtHostname.Text = "";
        txtIp.Text = "";
        txtMemoria.Text = "";
        txtProcesador.Text = "";
        txtSerie.Text = "";
        txtUbicacion.Text = "";
        txtRegistro.Focus();
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
                    txtIp.Text = localIp;
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
                    txtProcesador.Text = procesador;
                    mo.Dispose();
                }
            }
        }
        catch (Exception)
        {
        }
    }

    private void extraer()
    {
        try
        {
            string archivo1 = txtHostname.Text;
            string[] Arraysplit = archivo1.Split(new char[] { 'T' }, StringSplitOptions.RemoveEmptyEntries); // me traera un arreglo de string delimitado por _ (guion bajo)
            string valor1 = Arraysplit[2]; // me traera numero de tienda
            //luego puedes ir separando por ejemplo:
            string año = valor1.Substring(0, 4);
            string mes = valor1.Substring(4, 2);
            string dia = valor1.Substring(6, 2);
            //OOO puedes hacerle un substring

            string substr = valor1.Substring(0, valor1.Length - 2); //listo
            txtObservacion.Text = mes;
        }
        catch(Exception)
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
            txtDisco.Text = disco;
        }
    }

    public void getMemoria(string memoria)
    {
        PerformanceCounter ramCounter = new PerformanceCounter("Memory", "Available MBytes");
        memoria = ramCounter.NextValue() + " MB";
        txtMemoria.Text = memoria;
        Thread.Sleep(1000);
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        addEquipo();

    }
    protected void txtAddPc_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>window.open('frmRegistrarEquipo.aspx','','width=385,height=540,top=200,left=470');</script>");
    }

    private void desactivar()
    {
        txtMonitor.Enabled = false;
        txtImpresora.Enabled = false;
        txtPinpad.Enabled = false;
        txtLectora.Enabled = false;
        txtBiometrico.Enabled = false;
    }

 
   

    protected void ddlImpresora_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlImpresora.SelectedValue != "0")
        {
            txtImpresora.Enabled = true;
            txtImpresora.Focus();
        }
        else 
        {
            txtImpresora.Enabled = false;
        }
    }

    protected void ddlMonitor_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlMonitor.SelectedValue != "0")
        {
            txtMonitor.Enabled = true;
            txtMonitor.Focus();
        }
        else
        {
            txtMonitor.Enabled = false;
            
        }
    }
    
    protected void ddlPinpad_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlPinpad.SelectedValue != "0")
            {
                txtPinpad.Enabled = true;
                txtPinpad.Focus();
            }
            else 
            {
                txtPinpad.Enabled = false;
            }
             
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    protected void ddlBiometrico_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlBiometrico.SelectedValue != "0")
            {
                txtBiometrico.Enabled = true;
                txtBiometrico.Focus();
            }
            else
            {
                txtBiometrico.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    protected void ddlLector_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlBiometrico.SelectedValue != "0")
            {
                txtLectora.Enabled = true;
                txtLectora.Focus();
            }
            else
            {
                txtLectora.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}

