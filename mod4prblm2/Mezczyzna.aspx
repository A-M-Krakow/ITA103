<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mezczyzna.aspx.cs" Inherits="Mezczyzna" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="wyswietlLabel" runat="server" ></asp:Label>
    
        <br />
        Podaj email: 
        <asp:TextBox ID="emailTextBox1" runat="server"></asp:TextBox>


        <br />
         Podaj numer ubrania: 
        <asp:TextBox ID="nrUbTextBox" runat="server"></asp:TextBox>


        <br />
         Podaj numer buta: 
        <asp:TextBox ID="nrBurTextBox" runat="server"></asp:TextBox>


        <br />
         Podaj obwód klatki: 
        <asp:TextBox ID="klatkaTextBox" runat="server"></asp:TextBox>


        <br />
         Podaj obwód pasa: 
        <asp:TextBox ID="pasTextBox" runat="server"></asp:TextBox>


        <br />
         Podaj wzrost: 
        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>


        <br />


        <asp:Button ID="wyslijButton" runat="server" Text="Wyślij" 
            onclick="wyslijButton_Click" />
    
        <br />
        

    </div>
    </form>
</body>
</html>
