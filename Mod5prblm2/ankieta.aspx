<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ankieta.aspx.cs" Inherits="ankieta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/ADV/adv.xml" />
        <br />
        <asp:MultiView ID="mainMultiView" runat="server">
            <asp:View ID="ankietaGlownaView" runat="server">
                Imię:
                <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="imieRequiredFieldValidator" runat="server" 
                    ErrorMessage="Musisz podać imię!" ControlToValidate="imieTextBox">*</asp:RequiredFieldValidator>
                <br />
                Płeć:
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="M">Mężczyzna</asp:ListItem>
                    <asp:ListItem Value="K">Kobieta</asp:ListItem>
                    <asp:ListItem Value="N">Nie podaję</asp:ListItem>
                </asp:DropDownList>
                <br />
                E-mail:
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Musisz podać e-mail">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Nieprawidłowy adres e-mail!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                 Telefon:
                <asp:TextBox ID="telefonTextBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="telefonTextBox" 
                    ErrorMessage="Nieprawidłowy numer telefonu! Podaj same cyfry!" 
                    ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                <br />
                 Ulica:
                <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
                <br />
                Numer domu:
                <asp:TextBox ID="nrDomuTextBox" runat="server"></asp:TextBox>
                <br />
                Numer mieszkania:
                <asp:TextBox ID="nrMieszTextBox" runat="server"></asp:TextBox>
                <br />
                Kod pocztowy:
                <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox>
                <br />
                Miejscowość:
                <asp:TextBox ID="miejscowoscTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:MultiView ID="ankietaMultiView" runat="server">
                    <asp:View ID="nowyView" runat="server">
                        Wzrost:
                        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="wzrostTextBox" 
                            ErrorMessage="Nieprawidłowy wzrost! Podaj same cyfry!" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="wzrostTextBox" 
                            ErrorMessage="Podaj poprawny wzrost w zakresie 50 - 250cm" MaximumValue="250" 
                            MinimumValue="50" Type="Integer">*</asp:RangeValidator>
                        <br />
                        Rama roweru:
                        <asp:DropDownList ID="ramaDropDownList" runat="server">
                            <asp:ListItem Value="D">Damska</asp:ListItem>
                            <asp:ListItem Value="M">Męska</asp:ListItem>
                            <asp:ListItem Value="N">Nie ma znaczenia</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Marka:
                        <asp:DropDownList ID="markaDropDownList" runat="server">
                            <asp:ListItem Value="C">CatEye</asp:ListItem>
                            <asp:ListItem Value="G">Giant</asp:ListItem>
                            <asp:ListItem Value="K">Kenda</asp:ListItem>
                            <asp:ListItem Value="Kr">Kross</asp:ListItem>
                            <asp:ListItem Value="N">Nie ma znaczenia</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Rodzaj roweru:
                        <asp:DropDownList ID="rodzajDropDownList" runat="server">
                            <asp:ListItem Value="G">Górski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="Sz">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                            <asp:ListItem Value="N">Nie wiem</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Kwota planowanych wydatków:
                        <asp:RadioButtonList ID="cenaRadioButtonList" runat="server">
                            <asp:ListItem Value="0">Nie ma znaczenia</asp:ListItem>
                            <asp:ListItem Value="5">Do 500zł</asp:ListItem>
                            <asp:ListItem Value="10">500-1000zł</asp:ListItem>
                            <asp:ListItem Value="15">1000-1500zł</asp:ListItem>
                            <asp:ListItem Value="20">Powyżej 1500zł</asp:ListItem>
                            <asp:ListItem Value="1">Zakres</asp:ListItem>
                        </asp:RadioButtonList>
                        od:
                        <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                            runat="server" ControlToValidate="odTextBox" 
                            ErrorMessage="Nieprawidłowa wartośc w polu &quot;od&quot;" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        do:
                        <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="doTextBox" 
                            ErrorMessage="Nieprawodłowa wartośc w polu &quot;do&quot;" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="odTextBox" ControlToValidate="doTextBox" 
                            ErrorMessage="si być mniejsze od pola Do" Operator="GreaterThan">*</asp:CompareValidator>
                        <br />
                        <br />
                    </asp:View>
                    <asp:View ID="wycieczkiView" runat="server">
                        Rodzaj posiadanego roweru: 
                            <asp:DropDownList ID="rodzajDropDownList2" runat="server">
                            <asp:ListItem Value="G">Górski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="Sz">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                            <asp:ListItem Value="N">Nie wiem</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Data ostatniej wycieczki:
                        <asp:Calendar ID="ostatniaCalendar" runat="server"></asp:Calendar>
                        Data następnej wycieczki:
                        <asp:Calendar ID="nastepnaCalendar" runat="server"></asp:Calendar>
                        Ilość kilometrów średnio na jednej wycieczce:
                        <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox>
                        <br />
                        Poziom umiejętności:
                        <asp:DropDownList ID="poziomDropDownList" runat="server">
                            <asp:ListItem Value="P">Początkujący</asp:ListItem>
                            <asp:ListItem Value="S">Średniozaawansowany</asp:ListItem>
                            <asp:ListItem Value="Z">Zaawansowany</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </asp:View>
                </asp:MultiView>
                <br />
                Preferowany rodzaj kontaktu:
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="E">Email</asp:ListItem>
                        <asp:ListItem Value="T">Telefon</asp:ListItem>
                        <asp:ListItem Value="O">Osobisty</asp:ListItem>
                    </asp:DropDownList>
                <br />
                <asp:Button ID="wyslijButton" runat="server" Text="Wyślij" 
                    onclick="wyslijButton_Click" />
            </asp:View>
            <asp:View ID="podsumowanieView" runat="server">
                Dziękujemy za wypełnienie ankiety :)<br />
                <a href="Default.aspx">Strona główna</a>
            </asp:View>
        </asp:MultiView>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        DisplayMode="List" />
    </form>
</body>
</html>
