using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class WebService : System.Web.Services.WebService {
SqlConnection sql;
SqlConnection sql2;
    Conexion conectar = new Conexion();
    
    public WebService ()
    {
        sql = new SqlConnection(conectar.db_Inventario());
        sql2 = new SqlConnection(conectar.ds_ca());
    }

     [WebMethod]
public DataSet verNombre()
{
       DataSet ds = new DataSet();
       using (SqlDataAdapter da = new SqlDataAdapter("sp_verNombreEquipo", sql))
            {
                da.Fill(ds);
            }
            return ds;        
}
     [WebMethod]
     public DataSet verMarca()
     {
         DataSet ds = new DataSet();
         using (SqlDataAdapter dap = new SqlDataAdapter("SP_VERMARCA", sql))
         {
             dap.Fill(ds);
         }
         return ds;
     }
     [WebMethod]
     public DataSet verEquipo()
     {
         DataSet ds = new DataSet();
         using(SqlDataAdapter dap = new SqlDataAdapter("SP_VEREQUIPOS",sql))
         {
             dap.Fill(ds);
         }
         return ds;
     }
[WebMethod]
    public DataSet veridTipoEquipo (string tipo, string marca, string modelo)
{
    return SqlHelper.ExecuteDataset(sql, "sp_TipoEquipo",tipo,marca,modelo);
}
[WebMethod]
public DataSet buscarE(string texto)
{
    return SqlHelper.ExecuteDataset(sql,"sp_buscarEquipo",texto);
}
public DataSet verInventariado()
{
    DataSet ds = new DataSet();
    using (SqlDataAdapter dap = new SqlDataAdapter("sp_verequipos", sql))
    {
        dap.Fill(ds);
    }
    return ds;
}
    [WebMethod]
public DataSet verIncidentes()
{
    DataSet ds2 = new DataSet();
    using (SqlDataAdapter dap2 = new SqlDataAdapter("sp_verIncidente",sql2))
    {
        //return dap2.Fill(ds2);
    }
    return ds2;

}
}


