<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Witaj świecie!<br />
        Dzisiaj jest: <asp:Label ID="dzisiajLabel" runat="server" Text="Label"></asp:Label>
    
        <br />
        Podaj swoje imię:
        <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
    
        <asp:Button ID="wyswietlButton" runat="server" Text="Wyświetl" 
            onclick="wyswietlButton_Click" />
    
        <br />
        <asp:Label ID="imieLabel" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
