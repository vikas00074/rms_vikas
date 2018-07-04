<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="RMS.Course.List" EnableEventValidation="True" %>

<%@ Register TagPrefix="aux" Namespace="RMS" Assembly="result-management-system" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <fieldset>
        <legend>Search course...</legend>
        <asp:Panel CssClass="form-row" runat="server">
            <asp:Panel CssClass="form-group col-3" runat="server">
                <asp:Label AssociatedControlID="txtSearch" Text="Name:" runat="server" />
                <asp:TextBox ID="txtSearch" CssClass="form-control" TextMode="SingleLine" runat="server"></asp:TextBox>
            </asp:Panel>
            <asp:Panel CssClass="form-group col-1" runat="server">
                <aux:ModernButton ID="btnSearch" CssClass="btn btn-default" runat="server" OnClick="btnSearch_Click">
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                    Search
                </aux:ModernButton>
            </asp:Panel>
        </asp:Panel>
    </fieldset>
    <asp:Panel CssClass="card" runat="server">
        <h3 class="card-header">Courses</h3>
        <asp:Panel CssClass="card-body" runat="server">
            <asp:UpdatePanel ID="upGridCourse" UpdateMode="Conditional" RenderMode="Inline" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
                </Triggers>
                <ContentTemplate>
                    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" OnDataBound="GridView1_DataBound" DataKeyNames="Id" GridLines="None" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Identifier" ReadOnly="True" />
                            <asp:BoundField DataField="Course_Title" HeaderText="Title" />
                            <asp:BoundField DataField="Course_Level" HeaderText="Level" />
                            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="View.aspx?id={0}" InsertVisible="False" Target="_self" Text="Ver" />
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Literal Text="No courses founded!" runat="server" />
                        </EmptyDataTemplate>
                        <PagerTemplate>
                            <asp:Panel CssClass="container" runat="server">
                                <asp:Panel CssClass="col-sm-1" runat="server">
                                    <h5>
                                        <asp:Literal Text="Ir a pag:" runat="server" />
                                    </h5>
                                </asp:Panel>
                                <asp:Panel CssClass="col-sm-1" runat="server">
                                    <asp:DropDownList ID="ddlPageSelector" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSelector_SelectedIndexChanged" runat="server" />
                                </asp:Panel>
                                <asp:Panel runat="server">
                                    <h3>
                                        <asp:Label ID="lblCurrentPage" CssClass="label label-warning" runat="server" />
                                    </h3>
                                </asp:Panel>
                            </asp:Panel>
                        </PagerTemplate>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
