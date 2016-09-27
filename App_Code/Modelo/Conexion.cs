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

/// <summary>
/// Descripción breve de Conexion
/// </summary>
public class Conexion
{
    
	public Conexion()
	{

	}
    public string db_Inventario()
    {
        string cnnInventario = ConfigurationManager.ConnectionStrings["base"].ConnectionString;
        if (object.ReferenceEquals(cnnInventario, string.Empty))
        {
            return string.Empty;
        }
        else
        {
            return cnnInventario;
        }
    }

    public string ds_ca()
    {
        string cnnCa = ConfigurationManager.ConnectionStrings["CnxSQL"].ConnectionString;
        if (object.ReferenceEquals(cnnCa, string.Empty))
        {
            return string.Empty;
        }
        else
        {
            return cnnCa;
        }
    }

}
