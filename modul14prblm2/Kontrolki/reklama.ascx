<%@ Control Language="C#" AutoEventWireup="true" CodeFile="reklama.ascx.cs" Inherits="Kontrolki_reklama" %>

<asp:UpdatePanel ID="reklamaUpdatePanel" runat="server" 
    UpdateMode="Conditional">
   
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
    </Triggers>

     <ContentTemplate>
<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ADV/adv.xml" />
         <ajaxToolkit:AlwaysVisibleControlExtender ID="AdRotator1_AlwaysVisibleControlExtender" 
             runat="server" Enabled="True" HorizontalSide="Right" 
             TargetControlID="AdRotator1">
         </ajaxToolkit:AlwaysVisibleControlExtender>
    </ContentTemplate>
</asp:UpdatePanel>

<asp:Timer ID="Timer1" runat="server" EnableViewState="False" Interval="1000">
        </asp:Timer>
<p>
    &nbsp;</p>
