<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Product.ascx.cs" Inherits="Product" %>
<style type="text/css">
    .auto-style1 {
        width: 99%;
        height: 248px;
    }
    .name-class {
        text-align:center
    }
    .auto-style2 {
        width: 50%;
    }
</style>

<asp:DataList ID="DataList1" runat="server" RepeatColumns="3" Width="841px" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand" DataKeyField="ProID">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="name-class" colspan="2">
                    <asp:LinkButton ID="btnName" runat="server" ForeColor="Aqua" Text='<%# Eval("ProName") %>' CommandName="Edit"></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Image ID="imgProduct" runat="server" Height="141px" Width="212px" ImageUrl='<%# "Image/" + Eval("ProImage") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Price :</td>
                <td>
                    <asp:Label ID="lblPrice" runat="server" ForeColor="Red" Text='<%# Eval("ProPrice") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Warrenty :</td>
                <td>
                    <asp:Label ID="lblWarrenty" runat="server" ForeColor="Red" Text='<%# Eval("ProQty") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="btnView" runat="server" ForeColor="Aqua" CommandName="Edit">View Detail</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnAdd" runat="server" ForeColor="Aqua">Add to cart</asp:LinkButton>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

