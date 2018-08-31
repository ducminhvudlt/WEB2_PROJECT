<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="Menu" %>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<table class="style1">
    <tr>
        <td>
            CATEGORIES</td>
    </tr>
    <tr>
        <td>
            <asp:Menu ID="Menu1" runat="server" onmenuitemclick="Menu1_MenuItemClick">
            </asp:Menu>
        </td>
    </tr>
</table>