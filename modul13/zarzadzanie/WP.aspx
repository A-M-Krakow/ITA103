<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="WP.aspx.cs" Inherits="zarzadzanie_WP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Zarządzanie kontrolkami WebPart!</p>
    <p>
        Wybierz tryb:</p>
    <p>
        <asp:DropDownList ID="trybDropDownList" runat="server" AutoPostBack="True" 
            onselectedindexchanged="trybDropDownList_SelectedIndexChanged">
            <asp:ListItem Value="0">Przeglądaj</asp:ListItem>
            <asp:ListItem Value="1">Projektuj</asp:ListItem>
            <asp:ListItem Value="2">Edytuj</asp:ListItem>
            <asp:ListItem Value="3">Katalog</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:EditorZone ID="EditorZone1" runat="server">
            <ZoneTemplate>
                <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
            </ZoneTemplate>
        </asp:EditorZone>

        <asp:CatalogZone ID="CatalogZone1" runat="server">
            <ZoneTemplate>
                <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
            </ZoneTemplate>
        </asp:CatalogZone>

    </p>
</asp:Content>

