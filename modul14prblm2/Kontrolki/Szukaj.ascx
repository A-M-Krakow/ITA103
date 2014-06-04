<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Szukaj.ascx.cs" Inherits="Kontrolki_Szukaj" %>
<p>

    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>  &nbsp;
  
    <ContentTemplate>
        Podaj nazwę produktu:
        <asp:TextBox ID="nazwaTextBox" runat="server"></asp:TextBox>
        <ajaxToolkit:TextBoxWatermarkExtender ID="nazwaTextBox_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="nazwaTextBox" 
            WatermarkCssClass="watermarked" WatermarkText="Podaj nazwę produktu">
        </ajaxToolkit:TextBoxWatermarkExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="nazwaTextBox" ErrorMessage="Musisz podać nazwę produktu">*</asp:RequiredFieldValidator>
        <asp:Button ID="szukajButton" runat="server" onclick="szukajButton_Click" 
            Text="Szukaj" />
    </ContentTemplate>
  
</p>
<p>
    &nbsp;</p>



