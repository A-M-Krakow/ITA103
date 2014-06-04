<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kobieta.aspx.cs" Inherits="Kobieta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="wyswietlLabel" runat="server" Text=""></asp:Label>
    
    </div>
    <p>
        Email:  <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
    </p>
     <p>
        Wzrost:  <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
    </p>
     <p>
        Numer ubrania:  <asp:TextBox ID="nrUbTextBox" runat="server"></asp:TextBox>
    </p>
     <p>
        Numer buta:  <asp:TextBox ID="nrButTextBox" runat="server"></asp:TextBox>
    </p>
     <p>
        Obwód biustu:  <asp:TextBox ID="biustTextBox" runat="server"></asp:TextBox>
    </p>
     <p>
        Talia:  <asp:TextBox ID="taliaTextBox" runat="server"></asp:TextBox>
    </p>
     <p>
        Biodra:  <asp:TextBox ID="biodraTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="wyslijButton" runat="server" Text="Wyślij" 
            onclick="wyslijButton_Click" />
    </p>
    <p> 
        &nbsp;</p>
    </form>
</body>
</html>
