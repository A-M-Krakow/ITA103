<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zaloguj.aspx.cs" Inherits="Zaloguj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Zaloguj się w serwisie:</p>
    <p>
        <asp:Login ID="Login1" runat="server" 
            FailureText="Logowanie nie powiodło się. " LoginButtonText="Zaloguj" 
            PasswordLabelText="Hasło:" PasswordRequiredErrorMessage="Wprowadź hasło." 
            RememberMeText="Zapamiętaj mnie" UserNameLabelText="Login: " 
            UserNameRequiredErrorMessage="Wprowadź nazwę.">
        </asp:Login>
    </p>
    <p>
        <a href="Odzyskiwanie.aspx">Zapomniałem hasła</a></p>
</asp:Content>

