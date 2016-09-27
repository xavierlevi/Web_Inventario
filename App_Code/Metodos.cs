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

/// <summary>
/// Descripción breve de Metodos
/// </summary>
public class Metodos
{
	public Metodos()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//

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
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}
