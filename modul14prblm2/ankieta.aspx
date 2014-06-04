<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ankieta.aspx.cs" Inherits="ankieta" MasterPageFile="~/SzablonStrony.master" Title="ankieta"%>

    <asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/ADV/adv.xml" />
        <br />
        <asp:MultiView ID="mainMultiView" runat="server">
            <asp:View ID="ankietaGlownaView" runat="server">
                Imię:
                <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox> 
                <ajaxToolkit:TextBoxWatermarkExtender ID="imieTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="imieTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj imię">
                </ajaxToolkit:TextBoxWatermarkExtender>
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
                <ajaxToolkit:TextBoxWatermarkExtender ID="emailTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="emailTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj e-mail">
                </ajaxToolkit:TextBoxWatermarkExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Musisz podać e-mail">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Nieprawidłowy adres e-mail!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                 Telefon:
                <asp:TextBox ID="telefonTextBox" runat="server" ></asp:TextBox>
                <ajaxToolkit:FilteredTextBoxExtender ID="telefonTextBox_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="telefonTextBox" 
                    FilterType="Numbers">
                </ajaxToolkit:FilteredTextBoxExtender>
                <ajaxToolkit:TextBoxWatermarkExtender ID="telefonTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="telefonTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj telefon">
                </ajaxToolkit:TextBoxWatermarkExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="telefonTextBox" 
                    ErrorMessage="Nieprawidłowy numer telefonu! Podaj same cyfry!" 
                    ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                <br />
                 Ulica:
                <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="ulicaTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="ulicaTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj ulicę">
                </ajaxToolkit:TextBoxWatermarkExtender>
                <br />
                Numer domu:
                <asp:TextBox ID="nrDomuTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:FilteredTextBoxExtender ID="nrDomuTextBox_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" 
                    TargetControlID="nrDomuTextBox">
                </ajaxToolkit:FilteredTextBoxExtender>
                <ajaxToolkit:TextBoxWatermarkExtender ID="nrDomuTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="nrDomuTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj numer domu">
                </ajaxToolkit:TextBoxWatermarkExtender>
                <br />
                Numer mieszkania:
                <asp:TextBox ID="nrMieszTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="nrMieszTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="nrMieszTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj numer mieszkania">
                </ajaxToolkit:TextBoxWatermarkExtender>
                <br />
                Kod pocztowy:
                <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:FilteredTextBoxExtender ID="kodTextBox_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Custom, Numbers" 
                    TargetControlID="kodTextBox" ValidChars="-">
                </ajaxToolkit:FilteredTextBoxExtender>
                <ajaxToolkit:TextBoxWatermarkExtender ID="kodTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="kodTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj kod pocztowy">
                </ajaxToolkit:TextBoxWatermarkExtender>
                <br />
                Miejscowość:
                <asp:TextBox ID="miejscowoscTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="miejscowoscTextBox_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="miejscowoscTextBox" 
                    WatermarkCssClass="watermarked" WatermarkText="Podaj miejscowość">
                </ajaxToolkit:TextBoxWatermarkExtender>
                <br />
                <asp:MultiView ID="ankietaMultiView" runat="server">
                    <asp:View ID="nowyView" runat="server">
                        Wzrost:
                        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="wzrostTextBox_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" FilterType="Numbers" 
                            TargetControlID="wzrostTextBox">
                        </ajaxToolkit:FilteredTextBoxExtender>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="wzrostTextBox_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="wzrostTextBox" 
                            WatermarkCssClass="watermarked" WatermarkText="Podaj wzrost">
                        </ajaxToolkit:TextBoxWatermarkExtender>
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
                        <ajaxToolkit:FilteredTextBoxExtender ID="odTextBox_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" FilterType="Numbers" TargetControlID="odTextBox">
                        </ajaxToolkit:FilteredTextBoxExtender>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="odTextBox_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="odTextBox" 
                            WatermarkCssClass="watermarked" WatermarkText="Podaj minimalną kwotę">
                        </ajaxToolkit:TextBoxWatermarkExtender>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                            runat="server" ControlToValidate="odTextBox" 
                            ErrorMessage="Nieprawidłowa wartośc w polu &quot;od&quot;" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        do:
                        <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="doTextBox_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" FilterType="Numbers" TargetControlID="doTextBox">
                        </ajaxToolkit:FilteredTextBoxExtender>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="doTextBox_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="doTextBox" 
                            WatermarkCssClass="watermarked" WatermarkText="Podaj maksymalną kwotę">
                        </ajaxToolkit:TextBoxWatermarkExtender>
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
                        Data ostatniej wycieczki: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="TextBox1" 
                            WatermarkCssClass="watermarked" 
                            WatermarkText="Kliknij aby wybrać datę">
                        </ajaxToolkit:TextBoxWatermarkExtender>
                        <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="TextBox1" FirstDayOfWeek="Monday">
                        </ajaxToolkit:CalendarExtender>
                        <br />
                        Data następnej wycieczki:
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="TextBox2" FirstDayOfWeek="Monday">
                        </ajaxToolkit:CalendarExtender>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="TextBox2" 
                            WatermarkCssClass="watermarked" WatermarkText="Kliknij aby wybrać datę">
                        </ajaxToolkit:TextBoxWatermarkExtender>
                        <br />
                        Ilość kilometrów średnio na jednej wycieczce:
                        <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="kmTextBox_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" FilterType="Numbers" TargetControlID="kmTextBox">
                        </ajaxToolkit:FilteredTextBoxExtender>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="kmTextBox_TextBoxWatermarkExtender" 
                            runat="server" Enabled="True" TargetControlID="kmTextBox" 
                            WatermarkCssClass="watermarked" WatermarkText="Wpisz ilość kilometrów">
                        </ajaxToolkit:TextBoxWatermarkExtender>
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
 

    </asp:Content>