<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchUsersUserControl.ascx.cs" Inherits="RMS.Controls.SearchUsersUserControl" %>

<asp:Panel ID="pnlError" runat="server">
    <asp:Label ID="lblError" Text="E" Visible="false" runat="server" />
</asp:Panel>
<asp:Panel ID="pnlSearch" runat="server">
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search User" OnClick="btnSearch_Click" />
</asp:Panel>
<asp:UpdatePanel ID="UpdatePanel1" Visible="false" runat="server">
    <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" ItemStyle-Width="150">
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="Firstname" HeaderText="FirstName" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" />
                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:BoundField DataField="User_Profile" HeaderText="User_Profile" />
                <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text="Select">
                <ItemStyle Width="50px" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
    </ContentTemplate>
</asp:UpdatePanel>
