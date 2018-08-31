<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="InvitingFriend.aspx.cs" Inherits="InvitingFriend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlFriend" runat="server">
        <ItemTemplate>
            <table style="width: 100%; height: 59px;">
                <tr>
                    <td style="width: 109px">
                        <asp:Image ID="imgImage" runat="server" Height="44px" ImageUrl='<%# Eval("Avatar") %>' Width="103px" />
                    </td>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

