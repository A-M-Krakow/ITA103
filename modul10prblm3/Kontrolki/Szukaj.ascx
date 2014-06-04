<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Szukaj.ascx.cs" Inherits="Kontrolki_Szukaj" %>
<p>
    Podaj nazwę produktu:
    <asp:TextBox ID="nazwaTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="nazwaTextBox" ErrorMessage="Musisz podać nazwę produktu">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="szukajButton" runat="server" Text="Szukaj" 
        onclick="szukajButton_Click" />
</p>

