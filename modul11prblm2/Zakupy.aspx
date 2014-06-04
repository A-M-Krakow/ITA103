<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zakupy.aspx.cs" Inherits="Zakupy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="koszykGridView" runat="server" 
        EmptyDataText="Twój koszyk jest pusty" EnableViewState="False">
        <Columns>
            <asp:BoundField DataField="Nazwa" HeaderText="Nazwa produktu" ReadOnly="True" />
            <asp:BoundField DataField="Cena" DataFormatString="0:c" HeaderText="Cena" 
                HtmlEncode="False" ReadOnly="True" />
            <asp:BoundField DataField="IloscSztuk" DataFormatString="0:d" 
                HeaderText="Ilość sztuk" />
            <asp:BoundField DataField="Suma" DataFormatString="0:c" HeaderText="Wartość" 
                HtmlEncode="False" ReadOnly="True" />
            <asp:CommandField ButtonType="Button" CancelText="Anuluj" 
                DeleteText="Usuń towar" EditText="Zmień ilość" ShowDeleteButton="True" 
                ShowEditButton="True" UpdateText="Aktualizuj" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="kasaButton" runat="server" Text="Do kasy" 
        PostBackUrl="~/Zamowienie.aspx" />
&nbsp;&nbsp;&nbsp; 
</asp:Content>

