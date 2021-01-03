<%--Child Page- Part of Client History: it contains info that are specific for a child client --%>

<%@ Page Title="Child" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Child.aspx.cs" Inherits="NewSLHS.Child" %>


<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>


<%--Child Page--%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Child</h6>
   </div>

    <br />
    <br />
</asp:Content>
