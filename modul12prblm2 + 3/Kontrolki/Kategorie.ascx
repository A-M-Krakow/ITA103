<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Kategorie.ascx.cs" Inherits="Kontrolki_Kategorie" %>
<asp:LinqDataSource ID="kategorieLinqDataSource" runat="server" 
    ContextTypeName="AdventureWorksDataContext" 
    Select="new (ProductCategoryID, Name)" TableName="ProductCategories" 
    Where="ParentProductCategoryID == null">
</asp:LinqDataSource>


<asp:Repeater ID="Repeater1" runat="server" DataSourceID="kategorieLinqDataSource">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="Server" NavigateUrl='<%# "~/Produkty.aspx?KatID=" + Eval("ProductCategoryID") %>' Text='<%# Eval("Name") %>'>
        </asp:HyperLink> <br />
    </ItemTemplate>
</asp:Repeater>




