<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="produkty.aspx.cs" Inherits="produkty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinqDataSource ID="kategorieLinqDataSource" runat="server" 
        ContextTypeName="AdventureWorksDataContext" 
        Select="new (ProductCategoryID, Name)" TableName="ProductCategories" 
        Where="ParentProductCategoryID = null">
    </asp:LinqDataSource>
    <asp:ListBox ID="kategorieListBox" runat="server" AutoPostBack="True" 
        DataSourceID="kategorieLinqDataSource" DataTextField="Name" 
        DataValueField="ProductCategoryID"></asp:ListBox>
    <br />
    <asp:LinqDataSource ID="podkategorieLinqDataSource" runat="server" 
        ContextTypeName="AdventureWorksDataContext" EntityTypeName="" 
        Select="new (ProductCategoryID, Name)" TableName="ProductCategories" 
        Where="ParentProductCategoryID == @ParentProductCategoryID">
        <WhereParameters>
            <asp:ControlParameter ControlID="kategorieListBox" DefaultValue="-1" 
                Name="ParentProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <br />
    <asp:ListBox ID="podkategorieListBox" runat="server" AutoPostBack="True" 
        DataSourceID="podkategorieLinqDataSource" DataTextField="Name" 
        DataValueField="ProductCategoryID"></asp:ListBox>
    <br />
    <asp:LinqDataSource ID="produktyLinqDataSource" runat="server" 
        ContextTypeName="AdventureWorksDataContext" EntityTypeName="" 
        Select="new (ProductID, Name, ProductNumber, Color, ListPrice)" 
        TableName="Products" Where="ProductCategoryID == @ProductCategoryID">
        <WhereParameters>
            <asp:ControlParameter ControlID="podkategorieListBox" DefaultValue="-1" 
                Name="ProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="produktyLinqDataSource" 
        EnableViewState="False" PageSize="5">
        <Columns>
            <asp:ImageField DataAlternateTextField="Name" 
                DataAlternateTextFormatString="Miniatura{0}" DataImageUrlField="ProductID" 
                DataImageUrlFormatString="~/Miniatura.aspx?id={0}">
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" 
                DataNavigateUrlFormatString="~/Szczegoly.aspx?id={0}" DataTextField="Name" 
                HeaderText="Nazwa produktu" />
            <asp:BoundField DataField="ProductID" HeaderText="Numer katalogowy" 
                ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Color" HeaderText="Kolor" ReadOnly="True" 
                SortExpression="Color" />
            <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" 
                ReadOnly="True" SortExpression="ProductNumber" />
            <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}" 
                HeaderText="Cena" ReadOnly="True" SortExpression="ListPrice" />
        </Columns>
    </asp:GridView>
</asp:Content>

