<%@ Page Title="" Language="C#" MasterPageFile="~/UserSite.Master" AutoEventWireup="true" CodeBehind="SearchDonor.aspx.cs" Inherits="BloodDonorApp.SearchDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">



    <ol class="round">
        <li>
            <asp:Label ID="Label1" runat="server" AssociatedControlID="Name">Username</asp:Label>
                                <asp:TextBox runat="server" ID="Name" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" placeholder="Enter username for search"
                                    CssClass="field-validation-error" ErrorMessage="The donor username field is required." />
            <br />
            <br />
             <asp:Button runat="server" ID="btnSearch" OnClick="btnSearch_Click" Text="Search Donor" />
        </li>
        <li class="one">
            <h5>Users</h5>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserID">
                <ItemTemplate>
                     <span style="background-color: #DCDCDC;color: #000000;">Username:
                    <asp:Label ID="ProgramIDLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Organizer:
                    <asp:Label ID="OrganizerLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
<br /></span>
                </ItemTemplate>
                
            </asp:ListView>
           
        </li>
        
        
    </ol>


</asp:Content>
