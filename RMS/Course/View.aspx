<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="RMS.Course.ViewCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server">
            <h3 class="panel-title">
                <asp:Literal Text="Data" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
            <asp:Panel CssClass="form-horizontal" runat="server">
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Identifier" runat="server" />
                    <asp:Panel CssClass="col-sm-10" runat="server">
                        <p class="form-control-static">
                            <asp:Literal ID="litIdentifier" Text="" runat="server" />
                        </p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Name" runat="server" />
                    <asp:Panel CssClass="col-sm-10" runat="server">
                        <p class="form-control-static">
                            <asp:Literal ID="litName" Text="" runat="server" />
                        </p>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Level" runat="server" />
                    <asp:Panel CssClass="col-sm-10" runat="server">
                        <p class="form-control-static">
                            <asp:Literal ID="litLevel" Text="" runat="server" />
                        </p>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server">
            <h3 class="panel-title">
                <asp:Literal Text="Related students" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
        </asp:Panel>
        <asp:GridView ID="gvRelatedStudents" CssClass="table table-condensed" AllowPaging="True" GridLines="None" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Identifier" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" NullDisplayText="(NULL)" />
                <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" NullDisplayText="(NULL)" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" NullDisplayText="(NULL)" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" NullDisplayText="(NULL)" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScripts" runat="server">
</asp:Content>
