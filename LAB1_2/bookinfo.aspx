<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookinfo.aspx.cs" Inherits="bookinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 29px;
        }
        .auto-style2 {
            width: 40%;
        }
        .auto-style3 {
            width: 60%;
        }
        .auto-style4 {
            width: 30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Published Book Information<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="7">
                        <asp:Repeater ID="repBooks" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <span style="font-size: 10pt; font-family: Tahoma;font-weight:bold">
                                    Click on Book title to see details
                                </span>
                                <br />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table style="font-size:9pt;font-family:Tahoma;" bgcolor="AliceBlue">
                                    <tr>
                                        <td width="250">
                                            <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("title_id") %>'></asp:Label>
                                            <asp:LinkButton ID="LinkButton1" CommandName="select" runat="server" >
                                                <%# Eval("title") %><br />
                                            </asp:LinkButton>--%>
                                            <a href="bookinfo.aspx?bookid=<%# DataBinder.Eval(Container.DataItem,"title_id") %>">
                                                <%# DataBinder.Eval(Container.DataItem,"title") %>
                                            </a>
                                        </td>
                                    </tr>
                                </table> 
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <table style="font-size:9pt;font-family:Tahoma">
                                    <tr>
                                        <td width="250">
                                            <a href="bookinfo.aspx?bookid=<%# DataBinder.Eval(Container.DataItem,"title_id") %>">
                                                <%# DataBinder.Eval(Container.DataItem, "title") %>
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                        <br />
                    </td>
                    <td class="auto-style3" colspan="2"><strong>
                        <asp:Label ID="lblTitle" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
                        </strong>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2"><em>
                        <asp:Label ID="lblNote" runat="server" Text="Label"></asp:Label>
                        </em>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;<strong>Type</strong></td>
                    <td class="auto-style3">
                        <asp:Label ID="lblType" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>&nbsp;Publisher</strong></td>
                    <td class="auto-style3">
                        <asp:Label ID="lblPublisher" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;<strong>Publish</strong> <strong>Date</strong></td>
                    <td class="auto-style3">
                        <asp:Label ID="lblDate" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;<strong>Price</strong></td>
                    <td class="auto-style3">
                        <asp:Label ID="lblPrice" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
