<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductList.ascx.cs" Inherits="ProductList" %>

<asp:DataList ID="DataList1" DataKeyField="ProID" runat="server" RepeatColumns="4" 
    oneditcommand="DataList1_EditCommand" CellSpacing="3" CellPadding="3" GridLines="Both">
    <ItemTemplate>
        <div >
            <div style="text-align:center;margin-top:10px" >
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("~/Images/" + Eval("ProImage")) %>' Width="100px" />
            </div>
            <asp:Label ID="LabelProductName"  runat="server" Text='<%# Eval("ProName") %>' 
                ForeColor="Blue"></asp:Label>
            <br />
            <b>Product Detail <br /></b>
            <asp:Label ID="LabelProductDetail" runat="server" Text='<%# Eval("ProDesc") %>'></asp:Label>
            <br />
            <b>Price: <br /></b>
            <asp:Label ID="LabelPrice" runat="server" Text='<%# Eval("ProPrice") %>'></asp:Label>
            <br />
            <div style="text-align:right">
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" >View Detail</asp:LinkButton>
            </div>
        </div>
    </ItemTemplate>

</asp:DataList>