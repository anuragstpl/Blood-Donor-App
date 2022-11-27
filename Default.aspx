<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BloodDonorApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Blood Donor Applications</h1>
                <h2></h2>
            </hgroup>
           
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Events</h5>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EventID" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="background-color: #FFF8DC;">EventID:
                    <asp:Label ID="EventIDLabel" runat="server" Text='<%# Eval("EventID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Organizer:
                    <asp:Label ID="OrganizerLabel" runat="server" Text='<%# Eval("Organizer") %>' />
                    <br />
                    Place:
                    <asp:Label ID="PlaceLabel" runat="server" Text='<%# Eval("Place") %>' />
                    <br />
                    Time:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #008A8C;color: #FFFFFF;">EventID:
                    <asp:Label ID="EventIDLabel1" runat="server" Text='<%# Eval("EventID") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Organizer:
                    <asp:TextBox ID="OrganizerTextBox" runat="server" Text='<%# Bind("Organizer") %>' />
                    <br />
                    Place:
                    <asp:TextBox ID="PlaceTextBox" runat="server" Text='<%# Bind("Place") %>' />
                    <br />
                    Time:
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Organizer:
                    <asp:TextBox ID="OrganizerTextBox" runat="server" Text='<%# Bind("Organizer") %>' />
                    <br />Place:
                    <asp:TextBox ID="PlaceTextBox" runat="server" Text='<%# Bind("Place") %>' />
                    <br />Time:
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                    <br />Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #DCDCDC;color: #000000;">EventID:
                    <asp:Label ID="EventIDLabel" runat="server" Text='<%# Eval("EventID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Organizer:
                    <asp:Label ID="OrganizerLabel" runat="server" Text='<%# Eval("Organizer") %>' />
                    <br />
                    Place:
                    <asp:Label ID="PlaceLabel" runat="server" Text='<%# Eval("Place") %>' />
                    <br />
                    Time:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
<br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">EventID:
                    <asp:Label ID="EventIDLabel" runat="server" Text='<%# Eval("EventID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Organizer:
                    <asp:Label ID="OrganizerLabel" runat="server" Text='<%# Eval("Organizer") %>' />
                    <br />
                    Place:
                    <asp:Label ID="PlaceLabel" runat="server" Text='<%# Eval("Place") %>' />
                    <br />
                    Time:
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDonationConnectionString %>" SelectCommand="SELECT * FROM [Events]"></asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Programs</h5>
            <br />
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="ProgramID" DataSourceID="SqlDataSource2">
                <AlternatingItemTemplate>
                    <span style="background-color: #FFF8DC;">ProgramID:
                    <asp:Label ID="ProgramIDLabel" runat="server" Text='<%# Eval("ProgramID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Organizer:
                    <asp:Label ID="OrganizerLabel" runat="server" Text='<%# Eval("Organizer") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #008A8C;color: #FFFFFF;">ProgramID:
                    <asp:Label ID="ProgramIDLabel1" runat="server" Text='<%# Eval("ProgramID") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Organizer:
                    <asp:TextBox ID="OrganizerTextBox" runat="server" Text='<%# Bind("Organizer") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Organizer:
                    <asp:TextBox ID="OrganizerTextBox" runat="server" Text='<%# Bind("Organizer") %>' />
                    <br />Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #DCDCDC;color: #000000;">ProgramID:
                    <asp:Label ID="ProgramIDLabel" runat="server" Text='<%# Eval("ProgramID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Organizer:
                    <asp:Label ID="OrganizerLabel" runat="server" Text='<%# Eval("Organizer") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
<br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ProgramID:
                    <asp:Label ID="ProgramIDLabel" runat="server" Text='<%# Eval("ProgramID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Organizer:
                    <asp:Label ID="OrganizerLabel" runat="server" Text='<%# Eval("Organizer") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDonationConnectionString %>" SelectCommand="SELECT * FROM [Programs]"></asp:SqlDataSource>
        </li>
        
    </ol>
</asp:Content>
