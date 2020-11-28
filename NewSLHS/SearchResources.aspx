<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResources.aspx.cs" Inherits="NewSLHS.SearchResources" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <body style="background-color:#E4F6F5;">
    <h1>Search Resources</h1>

    <br />
    <br />

    <%--Search Bar Div--%>
    <div class="center-div">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="search-bar"></asp:TextBox>

        <button class="search-button" type="button"><i class="fa fa-search"></i></button>

    </div>
</asp:Content>
