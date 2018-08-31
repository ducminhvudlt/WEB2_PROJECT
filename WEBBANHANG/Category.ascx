<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Category.ascx.cs" Inherits="Category" %>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .auto-style1 {
        width: 100%;
        height: auto;
    }
    .auto-style2 {
        width: 100%;
        height: auto;
    }
</style>
<table class="style1"  border="0">
    <tr class="auto-style1">
        <td style="color:yellow;background-color:gray" class="auto-style2">
            CATEGORIES
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Menu ID="Menu1" runat="server" onmenuitemclick="Menu1_MenuItemClick" ForeColor="blue">
            </asp:Menu>
        </td>
    </tr>
</table>