<%@ Control Language="C#" AutoEventWireup="true" CodeFile="reklama.ascx.cs" Inherits="Kontrolki_reklama" %>


<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/ADV/adv.xml" />
        <ajaxToolkit:AlwaysVisibleControlExtender ID="AdRotator1_AlwaysVisibleControlExtender" 
            runat="server" Enabled="True" HorizontalSide="Right" 
            TargetControlID="AdRotator1">
        </ajaxToolkit:AlwaysVisibleControlExtender>
        <br />
        <asp:Timer ID="Timer1" runat="server" Interval="600">
        </asp:Timer>
    </ContentTemplate>
</asp:UpdatePanel>