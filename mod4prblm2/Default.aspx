<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Podaj swoje imię:
        <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
    
        <br />
        Podaj płeć: 
        <asp:DropDownList ID="plecDropDownList" runat="server">
            <asp:ListItem Value="M">Mężczyzna</asp:ListItem>
            <asp:ListItem Value="K">Kobieta</asp:ListItem>
        </asp:DropDownList>
    
        <br />
        <asp:Button ID="wyswietlButton" runat="server" Text="Wyświetl" 
            onclick="wyswietlButton_Click" />
    
    </div>
    </form>
</body>
</html>
