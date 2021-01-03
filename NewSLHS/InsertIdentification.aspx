<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertIdentification.aspx.cs" Inherits="NewSLHS.InsertIdentification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">General Information</h6>
         <div runat="server" id="Message" class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
        <asp:Label ID="SuccessMessage" runat="server" Text="Sucessfully Added" Visible="False"></asp:Label>
    </div>
   </div>
</asp:Content>
