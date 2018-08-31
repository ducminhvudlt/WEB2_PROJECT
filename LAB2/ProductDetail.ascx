<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductDetail.ascx.cs" Inherits="ProductDetail" %>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 167px;
    }
</style>
<table class="style1" style="width:100%">
    <tr>
        <td rowspan="6" class="style2">
            
            <asp:Image ID="Image1" runat="server" Width="200px" />
            </td>
        <td>
            Model:</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LabelName" runat="server" ForeColor="#0000CC" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Product Detail:</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LabelPDesc" runat="server" ForeColor="Fuchsia" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Price:</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LabelPrice" runat="server" Font-Bold="True" ForeColor="Black" 
                Text="Label"></asp:Label>
        </td>
    </tr>
</table>