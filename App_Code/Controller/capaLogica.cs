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
/// Descripción breve de capaLogica
/// </summary>
public class capaLogica
{
    public string _codigo { get; set; }
    public string _fecha { get; set; }
    public string _codcli { get; set; }
    public string _codper { get; set; }
    public int _idequi { get; set; }
    public string _serie { get; set; }
    public string _nombequi { get; set; }
    public string _ip { get; set; }
    public int _numoper { get; set; }
    public string _ubicac { get; set; }
    public string _obser { get; set; }

	public capaLogica()
	{
        
    }

    public capaLogica(string codigo, string fecha, string codcli, string codper,
int idequi, string serie, string nombequi, string ip, int numoper, string ubicac, string obser)
    {
        _codigo = codigo;
        _fecha = fecha;
        _codcli = codcli;
        _codper = codper;
        _idequi = idequi;
        _serie = serie;
        _nombequi = nombequi;
        _ip = ip;
        _numoper = numoper;
        _ubicac = ubicac;
        _obser = obser;
        
    }
	}

