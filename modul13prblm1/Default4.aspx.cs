using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        t2Label.Text = DateTime.Now.ToLongTimeString();

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        t1Label.Text = DateTime.Now.ToLongTimeString();
    }
}