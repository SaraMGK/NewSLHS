<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssessmentProposal.aspx.cs" Inherits="NewSLHS.AssessmentProposal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Session</h1>
    <h6>Assessment Proposal</h6>
    <br />
    <div class="next-button-div">
        <button class="save-button">Save</button>
        <button class="save-Cancel-button">Cancel</button>
    </div>
    <br />
    <br />
    <asp:Label ID="DescriptionLabel" runat="server" Text="Objective" CssClass="label6"></asp:Label>
    <br />
    <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />

</asp:Content>
