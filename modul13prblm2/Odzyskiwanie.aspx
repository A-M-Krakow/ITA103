<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Odzyskiwanie.aspx.cs" Inherits="Odzyskiwanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
        AnswerRequiredErrorMessage="Musisz wpisać odpowiedź!" 
        GeneralFailureText="Nie udało się odzyskać hasła :(" 
        QuestionFailureText="Zła odpowiedź!" 
        QuestionInstructionText="Odpowiedz na pytanie:" QuestionLabelText="Pytanie:" 
        QuestionTitleText="Potwierdzenie tożsamości" SubmitButtonText="Wyślij" 
        SuccessText="Twoje hasło zostało do Ciebie wysłane" 
        UserNameFailureText="Nie udało nam się uzyskać informacji, spróbuj ponownie." 
        UserNameInstructionText="Wpisz swój login aby odzyskać hasło!" 
        UserNameLabelText="Login: " UserNameRequiredErrorMessage="Musisz wpisać login!" 
        UserNameTitleText="Zapomniałeś hasła?">
    </asp:PasswordRecovery>
</asp:Content>

