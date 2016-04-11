<%@ Page Title="" Language="C#" MasterPageFile="~/CRMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  %>

<%@ Register Src="~/Controls/FeaturedProduct.ascx" TagName="FeaturedProduct" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/ShoppingCartBox.ascx" TagName="ShoppingCartBox" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/NewsletterBox.ascx" TagName="NewsletterBox" TagPrefix="uc1" %>


<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.IO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMainHeader" Runat="Server">
</asp:Content>

<asp:Content ID="leftColumnContent" ContentPlaceHolderID="RightColumn" runat="Server">
    <uc1:FeaturedProduct ID="Featuredproduct1" runat="server" />
    <uc1:ShoppingCartBox ID="ShoppingCartBox1" runat="server" />
    <uc1:NewsletterBox ID="NewsletterBox1" runat="server" />
</asp:Content>


<asp:Content ID="CenterColumnContent" ContentPlaceHolderID="CenterColumn" runat="Server">
    <div id="MainColHome">
        <div id="center-main-content">
            <asp:ListView ID="lvArticles" runat="server">
                <LayoutTemplate>
                    <div id="itemPlaceholder" runat="server" />
                </LayoutTemplate>
                <EmptyDataTemplate>
                    <p>
                        Sorry there are no articles available at this time.</p>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <div class="Homearticlebox">
                        <div class="articletitle">
                            <a class="articletitle" href="javascript: return false;">
                                <%# HttpUtility.HtmlEncode(Eval("Title").ToString()) %></a></div>
                        <div class="articleabstract">
                            <p>
                                <%# Eval("Abstract") %>'></p>
                        </div>
                    </div>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <div class="Homearticlebox">
                        <div class="articletitle">
                            <a class="articletitle" href='javascript: return false;'>
                                <%# HttpUtility.HtmlEncode(Eval("Title").ToString()) %></a></div>
                        <div class="articleabstract">
                            <p>
                                <%# Eval("Abstract") %>'></p>
                        </div>
                    </div>
                </AlternatingItemTemplate>
            </asp:ListView>
        </div>
        <div id="right-column">
            <%--<uc1:PollBox ID="PollBox1" runat="server" />--%>
        </div>
    </div>
</asp:Content>
