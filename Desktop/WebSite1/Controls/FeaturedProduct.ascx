<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FeaturedProduct.ascx.cs" Inherits="Controls_FeaturedProduct" %>

<div class="SideBarbox">
    <div class="SideBarTitle">
        <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
    </div>
    <div class="SideBarContent">
        <asp:HyperLink ID="hlnkProductImage" runat="server"></asp:HyperLink>
        <br />
        <b>
            <asp:Literal ID="ltlUnitPrice" runat="server"></asp:Literal></b>
        <br />
        <asp:LinkButton ID="lbtnAddToCart" runat="server">Add To Cart</asp:LinkButton>&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlnkMoreDetails" runat="server">More Details...</asp:HyperLink>
    </div>
</div>
