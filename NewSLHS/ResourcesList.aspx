<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResourcesList.aspx.cs" Inherits="SLHSClinic.ResourcesList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Resources</h1>

    <%--Search Panel--%>
    <div class="search-div">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="small-search-bar"></asp:TextBox>

        <button class="small-search-button" type="button"><i class="fa fa-search"></i></button>

    </div>

</asp:Content>
