<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Physician.aspx.cs" Inherits="NewSLHS.Physician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--Page Header--%>
    <h1>Client Details</h1>
    <h6 class="sub-head">Physician Information</h6>
    <table class="form-table" style="width: 80%;">
        
        <%--Physician--%>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label1" runat="server" Text="Primary Physician" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PhysicianPhoneTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" Text="Phone Number" CssClass="address-title"></asp:Label>
            </td>
            <%--Phone Number Validation--%>
            <td style="padding-bottom: 20px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Numbers or (+) only" ControlToValidate="PhysicianPhoneTxt" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" ForeColor="#FEA0A5" Font-Size="Smaller"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Physician Address" CssClass="label2"></asp:Label></td>
            <td><asp:TextBox ID="TextBox8" runat="server" CssClass="option2"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label3" runat="server" Text="Referred By" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="RefNameTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label8" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="RefNumberTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Text="Phone Number" CssClass="address-title"></asp:Label>
            </td>
             <%--Phone Number Validation--%>
            <td style="padding-bottom: 20px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Numbers or (+) only" ControlToValidate="EmergPhoneTxt" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" ForeColor="#FEA0A5" Font-Size="Smaller"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label4" runat="server" Text="Emergency Contact" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="EmergNameTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmergPhoneTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" Text="Phone Number" CssClass="address-title"></asp:Label>
            </td>
             <%--Phone Number Validation--%>
            <td style="padding-bottom: 20px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Numbers or (+) only" ControlToValidate="EmergPhoneTxt" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" ForeColor="#FEA0A5" Font-Size="Smaller"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:TextBox ID="EmergRelTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label12" runat="server" Text="Relationship" CssClass="address-title"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label5" runat="server" Text="Person Completing Questionnaire" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="QustNameTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label13" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="QuestRelTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label14" runat="server" Text="Relationship" CssClass="address-title"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
