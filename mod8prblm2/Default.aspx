<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<a href="ankieta.aspx?view=nowy">Ankieta dla nowych klientów</a>
        <br />
        <a href="ankieta.aspx?view=wycieczki">Ankieta dla osób już posiadających rower</a>
</asp:Content>

