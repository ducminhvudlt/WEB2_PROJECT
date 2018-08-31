<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="RecentyFriend.aspx.cs" Inherits="RecentyFriend" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlFriendlLst" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <table style="width: 100%; height: 120px;">
                <tr>
                    <td style="height: 59px">
                        <asp:Image ID="imgImage" runat="server" Height="92px" Width="130px" ImageUrl='<%# Eval("Avatar") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>

