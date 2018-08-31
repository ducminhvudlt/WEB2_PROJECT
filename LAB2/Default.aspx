<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="Banner.ascx" tagname="Banner" tagprefix="uc1" %>

<%@ Register src="Menu.ascx" tagname="Menu" tagprefix="uc2" %>

<%@ Register src="ProductList.ascx" tagname="ProductList" tagprefix="uc3" %>

<%@ Register src="ProductDetail.ascx" tagname="ProductDetail" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Banner" Runat="Server">  
    <uc1:Banner ID="Banner1" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftMenu" Runat="Server">
    <uc2:Menu ID="Menu1" runat="server" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <uc3:ProductList ID="ProductList1" runat="server" />
    </asp:Panel>
    
    <br />

    <asp:Panel ID="Panel2" runat="server">
        <uc4:ProductDetail ID="ProductDetail1" runat="server" />
    </asp:Panel>
&nbsp;
</asp:Content>
