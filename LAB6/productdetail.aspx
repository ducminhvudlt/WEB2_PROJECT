<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="productdetail.aspx.cs" Inherits="productdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            height: 444px;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style10 {
            height: 199px;
            width: 248px;
        }
        .auto-style16 {
            height: 52px;
        }
        .auto-style20 {
            height: 135px;
        }
        .auto-style21 {
            height: 48px;
        }
        .auto-style22 {
            height: 41px;
        }
        .auto-style23 {
            height: 12px;
        }
        .auto-style25 {
            height: 42px;
            width: 248px;
        }
        .auto-style26 {
            height: 135px;
            width: 248px;
        }
        .auto-style27 {
            height: 51px;
            width: 248px;
        }
        .auto-style28 {
            height: 206px;
        }
        .auto-style29 {
            height: 8px;
        }
        .auto-style30 {
            height: 42px;
        }
        .auto-style31 {
            height: 41px;
            width: 268435488px;
        }
        .auto-style32 {
            height: 51px;
        }
        .auto-style33 {
            height: 52px;
            width: 11px;
        }
        .auto-style34 {
            width: 100%;
            height: 84px;
        }
        .auto-style35 {
            margin-top: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td colspan="4">
                <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" rowspan="3">
                <asp:Image ID="Image1" runat="server" />
            </td>
            <td class="auto-style23" colspan="4">Description</td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="4">
                <asp:Label ID="lblDes" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style33" colspan="2">Price:</td>
            <td class="auto-style16" colspan="2">
                <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Warranty:</td>
            <td class="auto-style22" colspan="2">
                <asp:Label ID="lblWarranty" runat="server" Text="Label"></asp:Label>
&nbsp;</td>
            <td class="auto-style31">
                <asp:LinkButton ID="btnAdd" runat="server">Add to cart</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="5">Comments:(Total:
                <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                )</td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="5">
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style35" Height="298px" Width="639px">
                    <ItemTemplate>
                        <table class="auto-style34">
                            <tr>
                                <td>Email:</td>
                                <td>
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DateSend") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Content:</td>
                                <td>
                                    <asp:Label ID="lblContent" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <caption>
                                    <hr />
                                </caption>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style29" colspan="5">Comment by the product?</td>
        </tr>
        <tr>
            <td class="auto-style25">Email:</td>
            <td class="auto-style30" colspan="4">
                <asp:TextBox ID="txtEmail" runat="server" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-z][a-z0-9_\.]{5,32}@aptech.com$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">Content:</td>
            <td class="auto-style20" colspan="4">
                <asp:TextBox ID="txtContent" runat="server" Height="100px" Width="435px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContent" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style32" colspan="4">
                <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

