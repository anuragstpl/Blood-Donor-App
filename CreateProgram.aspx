<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="CreateProgram.aspx.cs" Inherits="BloodDonorApp.CreateProgram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Donation Program</h1>
        <h2>Add Program</h2>
    </hgroup>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Donation Program</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" >Program Name</asp:Label>
                                <asp:TextBox runat="server" ID="ProgramName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ProgramName"
                                    CssClass="field-validation-error" ErrorMessage="The program name field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" >Organizer Name</asp:Label>
                                <asp:TextBox runat="server" ID="OrganizerName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="OrganizerName"
                                    CssClass="field-validation-error" ErrorMessage="The OrganizerName field is required." />
                            </li>

                            <li>
                                <asp:Label ID="Label6" runat="server" >Description</asp:Label>
                                <asp:TextBox runat="server" ID="Description" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Description"
                                    CssClass="field-validation-error" ErrorMessage="The description field is required." />
                            </li>

                        </ol>
                        <asp:Button runat="server" ID="btnProgram" OnClick="btnProgram_Click" Text="Add Program" />
                    </fieldset>
</asp:Content>
