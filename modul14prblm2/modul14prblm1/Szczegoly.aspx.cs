using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Szczegoly : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        produktMultiView.SetActiveView(blednyView);
        if (Request.QueryString["id"] != null)
        {
            AdventureWorksDataContext db = new AdventureWorksDataContext();
            var produkt = (from p in db.Products where p.ProductID == int.Parse(Request.QueryString["id"])
                           select new
                           {
                               ProductID = p.ProductID,
                               Name = p.Name,
                               Category = p.ProductCategory.Name,
                               ListPrice = p.ListPrice,
                               Color = p.Color,
                               Description =
                               p.ProductModel.ProductModelProductDescriptions.
                               First().ProductDescription.Description
                           }).FirstOrDefault();
            if (produkt != null)
            {
                KoszykHyperLink.NavigateUrl = "~/Zakupy.aspx?ProdID=" + produkt.ProductID;
                produktMultiView.SetActiveView(prawidlowyView);
                Page.Title = "Przeglądasz: " + produkt.Name;
                nazwaLabel.Text = produkt.Name;
                produktImage.ImageUrl = "Miniatura.aspx?id=" +
                produkt.ProductID.ToString();
                kategoriaLabel.Text = produkt.Category;
                cenaLabel.Text = String.Format("{0:C}", produkt.ListPrice);
                kolorLabel.Text = produkt.Color;
                opisLabel.Text = produkt.Description;
            }
        }
    }
}