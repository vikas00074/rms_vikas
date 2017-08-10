﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="RMS.Course.List" EnableEventValidation="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p>
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False" />
    </p>
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server"></asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
            <asp:TextBox ID="txtSearch" runat="server" BorderStyle="Ridge" Font-Bold="False" Font-Size="X-Large" Height="31px" Style="margin-left: 0px" Width="211px"></asp:TextBox>
            &nbsp;
        <asp:Button ID="btnSearch" runat="server" Font-Size="Large" OnClick="btnSearch_Click" Text="Search Course" />
            &nbsp;<asp:TextBox ID="txtProfile" runat="server" BackColor="Silver" BorderStyle="None" Visible="False" Width="50px">_</asp:TextBox>
        </asp:Panel>
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
    </asp:Panel>
</asp:Content>
