<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="szukaj.aspx.cs" Inherits="szukaj" %>

<%@ Register src="Kontrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Szukaj ID="Szukaj1" runat="server" />
</asp:Content>

