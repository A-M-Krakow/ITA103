using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class produkty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string katID = Request.QueryString["katID"];
        if (katID != null)
        {
            kategorieListBox.SelectedValue = katID;
        }
    }

    
    protected void podkategorieListBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(3000);
    }
}