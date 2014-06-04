using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Zakupy : System.Web.UI.Page
{
    koszyk koszyk;

    protected void Page_Load(object sender, EventArgs e)
    {
        koszyk = (koszyk)Session["koszyk"];
        if (koszyk == null)
        {
            koszyk = new koszyk();
            Session["koszyk"] = koszyk;
        }

        if (!IsPostBack)
        {
            string req = Request.QueryString["prodID"];
            if (req != null)
            {
                int prodID = int.Parse(Request.QueryString["prodID"]);
                koszyk.Dodaj(prodID);
                //usuwanie z adresu prodID
                string url = Request.Url.AbsolutePath;
                System.Web.HttpContext.Current.RewritePath(url, "", "");
            }
        }
        koszykGridView.DataSource = koszyk.Pobierz();
        koszykGridView.DataBind();
        kasaButton.Enabled = (koszyk.Ilosc > 0);
    }
    protected void koszykGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        koszyk.UsunElement(e.RowIndex);
        koszykGridView.DataBind();
    }
    protected void koszykGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        koszykGridView.EditIndex = e.NewEditIndex;
        koszykGridView.DataBind();
    }
    protected void koszykGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox tb = (TextBox)
koszykGridView.Rows[e.RowIndex].Controls[2].Controls[0];
        try
        {
            int wartosc = int.Parse(tb.Text);
            if (wartosc < 0) { wartosc = wartosc * (-1); }
            koszyk.AktualizujIlosc(e.RowIndex, wartosc);
        }
        catch { e.Cancel = true; }
        koszykGridView.EditIndex = -1;
        koszykGridView.DataBind();
    }
    protected void koszykGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        e.Cancel = true;
        koszykGridView.EditIndex = -1;
        koszykGridView.DataBind();
    }
}