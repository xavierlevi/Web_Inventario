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

using System.Configuration;
using System.Data.SqlClient;
/// <summary>
/// Descripción breve de mInventario
/// </summary>
public class mInventario
{
    SqlDataAdapter dap = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlCommand cm = new SqlCommand();
    Conexion cnx = new Conexion();
	public mInventario()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
        
	}
    private void conectar()
    {
        cnx.db_Inventario();
    }
    //public DataSet verInventario()
    //{
    //    try
    //    {
    //        cm.Connection = conectar();

    //    }
    //    catch(Exception ex)
    //    {
    //        throw new Exception(ex.Message);
    //    }
    //}
}
