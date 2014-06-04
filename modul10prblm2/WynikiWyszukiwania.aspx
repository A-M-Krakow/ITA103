<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="WynikiWyszukiwania.aspx.cs" Inherits="WynikiWyszukiwania" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Wyniki wyszukiwania:</p>
    <p>
        <asp:GridView ID="wynikiWyszukiwaniaGridView" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="ProductID">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                    DataNavigateUrlFormatString="&quot;~/Szczegoly.aspx?id={0}&quot;" 
                    DataTextField="Name" HeaderText="Nazwa produktu" />
                <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" 
                    SortExpression="ProductNumber" />
                <asp:BoundField DataField="Color" HeaderText="Kolor" />
                <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}" 
                    HeaderText="Cena" SortExpression="ListPrice" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

