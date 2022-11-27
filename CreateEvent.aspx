<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="BloodDonorApp.CreateEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <hgroup class="title">
        <h1>Blood Donation Events</h1>
        <h2>Registration of events</h2>
    </hgroup>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Register Blood Donation Event</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" >Event Name</asp:Label>
                                <asp:TextBox runat="server" ID="EventName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EventName"
                                    CssClass="field-validation-error" ErrorMessage="The event name field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" >Organizer Name</asp:Label>
                                <asp:TextBox runat="server" ID="OrganizerName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="OrganizerName"
                                    CssClass="field-validation-error" ErrorMessage="The OrganizerName field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" >Place</asp:Label>
                                <asp:TextBox runat="server" ID="Place" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Place"
                                    CssClass="field-validation-error" ErrorMessage="The place field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label4" runat="server" >Time</asp:Label>
                                <asp:TextBox runat="server" ID="Time"  />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Time"
                                    CssClass="field-validation-error" ErrorMessage="The time field is required." />
                            </li>

                            <li>
                                <asp:Label ID="Label6" runat="server" >Description</asp:Label>
                                <asp:TextBox runat="server" ID="Description" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Description"
                                    CssClass="field-validation-error" ErrorMessage="The description field is required." />
                            </li>

                        </ol>
                        <asp:Button runat="server" ID="btnEvent" OnClick="btnEvent_Click" Text="Add Event" />
                    </fieldset>

</asp:Content>
