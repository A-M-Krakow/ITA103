<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zarejestruj.aspx.cs" Inherits="Zarejestruj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        AnswerLabelText="Odpowiedź:" 
        AnswerRequiredErrorMessage="Musisz wpisać odpowiedź na pytanie" 
        CancelButtonText="Anuluj" CompleteSuccessText="Twoje konto zostało utworzone!." 
        ConfirmPasswordCompareErrorMessage="Hasło i potwierdzenie musza sięzgadzać" 
        ConfirmPasswordLabelText="Potwierdź hasło:" 
        ConfirmPasswordRequiredErrorMessage="Potwierdzenie hasła jest wymagane!" 
        ContinueButtonText="Dalej" CreateUserButtonText="Utwórz konto" 
        DuplicateEmailErrorMessage="Taki adres e-mail już posiada u nas konto!" 
        DuplicateUserNameErrorMessage="Musisz wprowadzić inną nazwę użytkownika. Ta jest zajęta." 
        EmailRegularExpressionErrorMessage="Musisz wpisać inny adres e-mail" 
        EmailRequiredErrorMessage="Adres e-mail jest wymagany" 
        FinishCompleteButtonText="Koniec" FinishPreviousButtonText="Wstecz" 
        InvalidAnswerErrorMessage="Musisz wprowadzić inną odpowiedć" 
        InvalidEmailErrorMessage="Musisz wprowadzić prawidłowy adres e-mail" 
        InvalidPasswordErrorMessage="Zbyt krótkie hasło!" 
        InvalidQuestionErrorMessage="Złe pytanie do odzyskiwania hasła!" 
        PasswordLabelText="Hasło:" 
        PasswordRegularExpressionErrorMessage="Musisz podać inne hasło" 
        PasswordRequiredErrorMessage="Haśło jest wymagane" 
        QuestionLabelText="Pytanie do odzyskiwania hasła:" 
        QuestionRequiredErrorMessage="Pytanie do odzyskiwnaia musi być wpisane" 
        StartNextButtonText="Dalej" StepNextButtonText="Dalej" 
        StepPreviousButtonText="Wstecz" 
        UnknownErrorMessage="Nie udało się utworzyć konta :(" 
        UserNameLabelText="Login: " UserNameRequiredErrorMessage="Login jest wymagany">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

