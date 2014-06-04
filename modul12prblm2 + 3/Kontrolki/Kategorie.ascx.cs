using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class Kontrolki_Kategorie : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GenericWebPart gwp = Parent as GenericWebPart;
        if (gwp != null) { gwp.Title = "Wybierz kategorię produktu: "; }
    }
}