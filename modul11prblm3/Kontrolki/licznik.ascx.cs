using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kontrolki_licznik : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            licznikLabel.Text = Application["userCount"].ToString();
            licznikActiveLabel.Text =
            Application["activeUserCount"].ToString();
        }
    }
}