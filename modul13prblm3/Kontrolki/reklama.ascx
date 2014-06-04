<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/ADV/adv.xml" />
        <br />
        <asp:Timer ID="Timer1" runat="server" Interval="600">
        </asp:Timer>
    </ContentTemplate>
</asp:UpdatePanel>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="reklama.ascx.cs" Inherits="Kontrolki_reklama" %>
