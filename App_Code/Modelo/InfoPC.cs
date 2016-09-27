using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Management;
using System.Diagnostics;
using System.Threading;
/// <summary>
/// Descripción breve de InfoPC
/// </summary>
/// 

public class InfoPC
{
    ManagementClass mc = new ManagementClass("Win32_BaseBoard");

 
    public void getBaseBoard(string marca, string modelo, string serie)
    {
        ManagementObjectCollection moc = mc.GetInstances();
        foreach (ManagementObject mo in moc)
        {
            marca = mo["manufacturer"].ToString();
            mo.Dispose();
        }
        foreach (ManagementObject mo in moc)
        {
            modelo = mo["Model"].ToString();
            mo.Dispose();
        }
        foreach (ManagementObject mo in moc)
        {
            serie = mo["SerialNumber"].ToString();
            mo.Dispose();
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
    public void getProcesador(string procesador)
    {
        ManagementClass mc = new ManagementClass("Win32_Processor");
        ManagementObjectCollection moc = mc.GetInstances();
        foreach (ManagementObject mo in moc)
        {
            procesador = mo["name"].ToString();
            mo.Dispose();
        }
    }
    public void getMemoria(string memoria)
    {
        PerformanceCounter ramCounter = new PerformanceCounter("Memory", "Available MBytes");
        memoria = ramCounter.NextValue() + " MB";
        Thread.Sleep(1000);
    }
	public InfoPC()
	{
	
	}
   public static DataTable GetProcess(string Equipo, string Usuario, string Password)
{
System.Management.ManagementPath path = new System.Management.ManagementPath("\\\\" + Equipo + "\\root\\cimv2");
System.Management.ConnectionOptions cops = new System.Management.ConnectionOptions();
cops.Username = Usuario;
cops.Password = Password;
System.Management.ManagementScope scope = new System.Management.ManagementScope(path,cops);
System.Management.ManagementObjectSearcher searcher =
new ManagementObjectSearcher(scope, new System.Management.ObjectQuery("Select * From Win32_Process"));
DataTable dt = new DataTable();
DataRow dr;
dt.Columns.Add("Caption");
dt.Columns.Add("CreationClassName");
dt.Columns.Add("CreationDate");

dt.Columns.Add("Description");
dt.Columns.Add("ExecutablePath");
dt.Columns.Add("ExecutionState");
dt.Columns.Add("Handle");
dt.Columns.Add("InstallDate");
dt.Columns.Add("MaximumWorkingSetSize");
dt.Columns.Add("MinimumWorkingSetSize");
dt.Columns.Add("Name");
dt.Columns.Add("Priority");
dt.Columns.Add("ProcessId");
dt.Columns.Add("SessionId");
dt.Columns.Add("Status");
dt.Columns.Add("TerminationDate");
dt.Columns.Add("ThreadCount");
dt.Columns.Add("WindowsVersion");
dt.Columns.Add("WorkingSetSize");
try
{
foreach (ManagementObject share in searcher.Get())
{
dr = dt.NewRow();
dr["Caption"] = share["Caption"];
dr["CreationClassName"] = share["CreationClassName"];
dr["CreationDate"] = share["CreationDate"];
dr["Description"] = share["Description"];
dr["ExecutablePath"] = share["ExecutablePath"];
dr["ExecutionState"] = share["ExecutionState"];
dr["Handle"] = share["Handle"];
dr["InstallDate"] = share["InstallDate"];
dr["MaximumWorkingSetSize"] = share["MaximumWorkingSetSize"];

dr["MinimumWorkingSetSize"] = share["MinimumWorkingSetSize"];
dr["Name"] = share["Name"];
dr["Priority"] = share["Priority"];
dr["ProcessId"] = share["ProcessId"];
dr["SessionId"] = share["SessionId"];
dr["Status"] = share["Status"];
dr["TerminationDate"] = share["TerminationDate"];
dr["ThreadCount"] = share["ThreadCount"];
dr["WindowsVersion"] = share["WindowsVersion"];
dr["WorkingSetSize"] = share["WorkingSetSize"];
dt.Rows.Add(dr);
}
}
catch (System.UnauthorizedAccessException ex)
{
    ex.Message.ToString();
    //MessageBox.Show("Mensaje: " + ex.Message);
}
catch (System.Management.ManagementException ex)
{
    ex.Message.ToString();
//MessageBox.Show("Mensaje: " + ex.Message + System.Environment.NewLine +
//"Código de error: " + ex.ErrorCode.ToString() + System.Environment.NewLine +
//"Información de Error: " + ex.ErrorInformation + System.Environment.NewLine);
}
return dt;
}
 

}
