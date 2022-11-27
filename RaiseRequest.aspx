<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RaiseRequest.aspx.cs" Inherits="BloodDonorApp.RaiseRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <hgroup class="title">
        <h1>Blood Request</h1>
       
    </hgroup>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Request Details</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" >Your Name</asp:Label>
                                <asp:TextBox runat="server" ID="EventName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EventName"
                                    CssClass="field-validation-error" ErrorMessage="The name field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" >Hospital Name</asp:Label>
                                <asp:TextBox runat="server" ID="OrganizerName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="OrganizerName"
                                    CssClass="field-validation-error" ErrorMessage="The Hospital Name field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" >Place</asp:Label>
                                <asp:TextBox runat="server" ID="Place" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Place"
                                    CssClass="field-validation-error" ErrorMessage="The place field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label4" runat="server" >Required Blood Group</asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>A Postive</asp:ListItem>
                                    <asp:ListItem>A Negative</asp:ListItem>
                                    <asp:ListItem>B Postive</asp:ListItem>
                                    <asp:ListItem>B Negative</asp:ListItem>
                                    <asp:ListItem>AB Postive</asp:ListItem>
                                    <asp:ListItem>AB Negitive</asp:ListItem>
                                </asp:DropDownList>
                            </li>

                            <li>
                                <asp:Label ID="Label6" runat="server" >Description</asp:Label>
                                <asp:TextBox runat="server" ID="Description" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Description"
                                    CssClass="field-validation-error" ErrorMessage="The description field is required." />
                            </li>

                        </ol>
                        <asp:Button runat="server" ID="btnRaiseRequest" OnClick="btnRaiseRequest_Click" Text="Raise Request" />
                    </fieldset>


</asp:Content>
