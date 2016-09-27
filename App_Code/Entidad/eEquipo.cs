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
/// Descripción breve de eEquipo
/// </summary>
public class eEquipo
{
    public string _idTipoE { get; set; }
    public string _tipo { get; set; }
    public string _marca { get; set; }
    public string _modelo { get; set; }
    public string _descri { get; set; }

    public eEquipo(string idTipoE, string marca, string modelo, string descri,string tipo)
    {
        _idTipoE = idTipoE;
        _marca = marca;
        _modelo = modelo;
        _descri = descri;
        _tipo = tipo;
    }
    //public eEquipo()
    //{
    //    //
    //    // TODO: Agregar aquí la lógica del constructor
    //    //
    //}
}
