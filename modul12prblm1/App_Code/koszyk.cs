using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections.Generic;


/// <summary>
/// Summary description for koszyk
/// </summary>
public class koszyk

{
    private List<elementKoszyka> _koszyk;
    public int Ilosc
    { get { return _koszyk.Count; } }

    public List<elementKoszyka> Pobierz()
    { return _koszyk; }

    public void AktualizujIlosc(int indeks, int iloscSztuk)
    {
        elementKoszyka element = _koszyk[indeks];
        element.IloscSztuk = iloscSztuk;
    }

    public void UsunElement(int indeks)
    { _koszyk.RemoveAt(indeks); }


    public koszyk()

	{
        _koszyk = new List<elementKoszyka>();
	}

    public void Dodaj(int prodID)
    {
        bool znaleziono = false;
        foreach (elementKoszyka element in _koszyk)
        {
            if (element.ProdID == prodID)
            {
                element.IloscSztuk += 1;
                znaleziono = true;
            }
        }
        if (!znaleziono)
        {
            AdventureWorksDataContext db = new AdventureWorksDataContext();
            var produkt = (from p in db.Products
                           where p.ProductID == prodID
                           select p).FirstOrDefault();
            if (produkt != null)
            {
                elementKoszyka element = new elementKoszyka(prodID,
                produkt.Name, produkt.ListPrice, 1);
                _koszyk.Add(element);
            }
        }
    }
}