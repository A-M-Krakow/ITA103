<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="zmianaHasla.aspx.cs" Inherits="zarzadzanie_zmianaHasla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Zmień hasło:</p>
    <p>
        <asp:ChangePassword ID="ChangePassword1" runat="server" 
            CancelButtonText="Anuluj" ChangePasswordButtonText="Zmień hasło" 
            ChangePasswordFailureText="Źle pisałeś hasło!" 
            ChangePasswordTitleText="Zmień hasło" 
            ConfirmNewPasswordLabelText="Potwierdź nowe hasło" 
            ConfirmPasswordCompareErrorMessage="Hasło i potwierdzenie muszą się zgadzać!" 
            ConfirmPasswordRequiredErrorMessage="hasła jest wymagane!" 
            ContinueButtonText="Dalej" NewPasswordLabelText="Nowa hasło:" 
            NewPasswordRegularExpressionErrorMessage="Musisz wpisać inne hasło!" 
            NewPasswordRequiredErrorMessage="Musisz wpisać nowe hasło!" 
            PasswordLabelText="Hasło:" PasswordRequiredErrorMessage="Hasło jest wymagane!" 
            SuccessText="Twoje hasło zostało zmienione" 
            SuccessTitleText="Zmiana hasła zakończona sukcesem!" UserNameLabelText="Login: " 
            UserNameRequiredErrorMessage="Login jest wymagany!">
        </asp:ChangePassword>
    </p>
</asp:Content>

