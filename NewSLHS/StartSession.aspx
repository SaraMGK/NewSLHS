<%--Start session Page: it is the page students choose the type of the session they want to start--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StartSession.aspx.cs" Inherits="NewSLHS.StartSession" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Sessions</h1>
    <h6>New Session</h6>

    <div class="sessions-div">
        <%--Assessment Proposal Div--%>
        <div class="session-type-div">
            <i class="fas fa-tasks" style="color: #797575; font-size: 30px;  padding-top: 10px;"></i>
            <asp:Label ID="APbtn" CssClass="session-type-lb" runat="server" Text="Assessment Proposal"></asp:Label>
        </div>

        <%--SOAP Note Div--%>
        <div class="session-type-div">
            <%--<asp:Image ID="Image5" CssClass="session-type-icon" runat="server" />--%>
            <i class="fas fa-address-card" style="color: #797575; font-size: 55px;  padding-top: 10px;"></i>
            <asp:Label ID="Button1" CssClass="session-type-lb" runat="server" Text="SOAP Notes"></asp:Label>
        </div>

        <%--Screening SOAP Notes Div--%>
        <div class="session-type-div session-type-icon" onclick="location.href = '/AssessmentProposal.aspx'">
            <%--<asp:Image ID="Image4" CssClass="session-type-icon" runat="server" />--%>
            <i class="fas fa-file-signature session-type-icon" style="color: #797575; font-size: 46px;  padding-top: 10px;"></i>
            <asp:Label ID="Button2" CssClass="session-type-lb" runat="server" Text="Screeing SOAP Notes"></asp:Label>
        </div>

        <%--Assessment Report--%>
        <div class="session-type-div">
<%--            <asp:Image ID="Image1" CssClass="session-type-icon" runat="server" />--%>
            <i class="fas fa-file-contract session-type-icon" style="color: #797575; font-size: 40px;  padding-top: 10px;"></i>
            <asp:Label ID="Button3" CssClass="session-type-lb" runat="server" Text="Assessment Report"></asp:Label>
        </div>

        <%--Treatment Progress Summary--%>
        <div class="session-type-div">
            <%--<asp:Image ID="Image2" CssClass="session-type-icon" runat="server" />--%>
            <i class="fas fa-spinner session-type-icon" style="color: #797575; font-size: 45px;  padding-top: 10px; padding-left:9.5px;"></i>
            <asp:Label ID="Button4" CssClass="session-type-lb" runat="server" style="font-size:9px" Text="Treatment Progress Summary"></asp:Label>
        </div>

        <%--Treatment Plan--%>
        <div class="session-type-div">
            <%--<asp:Image ID="Image3" CssClass="session-type-icon" runat="server" />--%>
            <i class="fas fa-file-medical-alt session-type-icon" style="color: #797575; font-size: 51px;  padding-top: 10px;"></i>
            <asp:Label ID="Button5" CssClass="session-type-lb" runat="server" Text="Treatment Plan"></asp:Label>
        </div>

    </div>

</asp:Content>
