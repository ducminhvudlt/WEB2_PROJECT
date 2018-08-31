<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pubinfo.aspx.cs" Inherits="pubinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 85px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        PUBLISHER INFORMATION<br />
        <asp:DataList ID="dtlPublishers" runat="server" RepeatColumns="2" Width="357px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <a href ="bookinfo.aspx?pubid=<%# DataBinder.Eval(Container.DataItem,"pub_id") %>">
                                <%# DataBinder.Eval(Container.DataItem, "pub_name") %>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" class="auto-style3" src="publogo.aspx?pubid=<%# DataBinder.Eval(Container.DataItem, "pub_id") %>" />
                        </td>
                    </tr>
                    <tr>
                        <td>City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblCity" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblState" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("country") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
