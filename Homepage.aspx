<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="RMS.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <asp:Panel CssClass="jumbotron" runat="server">
        <h1>Hello, world!</h1>
        <p>...</p>
        <p>
            <asp:HyperLink CssClass="btn btn-primary btn-lg" NavigateUrl="#" role="button" runat="server">Learn more</asp:HyperLink>
        </p>
    </asp:Panel>
</asp:Content>
