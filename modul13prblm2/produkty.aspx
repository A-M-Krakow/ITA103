﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="produkty.aspx.cs" Inherits="produkty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" >
    function abortPB() {
        var obj = Sys.WebForms.PageRequestManager.getInstance();
        if (obj.get_isInAsyncPostBack())
            { obj.abortPostBack(); }
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:LinqDataSource ID="kategorieLinqDataSource" runat="server" 
                ContextTypeName="AdventureWorksDataContext" 
                Select="new (ProductCategoryID, Name)" TableName="ProductCategories" 
                Where="ParentProductCategoryID = null">
            </asp:LinqDataSource>
            <br />
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
                DataValueField="ProductCategoryID" 
                onselectedindexchanged="podkategorieListBox_SelectedIndexChanged"></asp:ListBox>
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
                EnableViewState="False" PageSize="5"  >
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
                    <asp:HyperLinkField DataNavigateUrlFields="productID" 
                        DataNavigateUrlFormatString="~/Zakupy.aspx?ProdID={0}" 
                        HeaderText="Dodaj do koszyka" Text="Dodaj do koszyka" />
                </Columns>
            </asp:GridView>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/ajax-loader.gif" />
            <br /><input type="button" value="Anuluj aktualizację" onclick="abortPB()" />
        </ProgressTemplate>
    
    </asp:UpdateProgress>
    </asp:Content>

