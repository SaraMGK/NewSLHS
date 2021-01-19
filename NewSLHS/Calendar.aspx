<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="NewSLHS.Calendar" %>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    #scheduler_here table {
        border: none;
        border-collapse: collapse;
    }
 
    #scheduler_here table td {
        padding: 0;
        border: none;
    }
        #scheduler_here table th {
        padding: none;
    }
</style>
<div style="height: 509px; width: 100%;">
    <%= this.Scheduler.Render()%>
</div>

</asp:Content>
