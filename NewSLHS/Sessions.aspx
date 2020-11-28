<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sessions.aspx.cs" Inherits="NewSLHS.Sessions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%----------------------------page title-------------------------------%>
    <div class="calendar">
    <h1>Sessions</h1>
    
    <%--session table--%>
    <br>            
           <div class="container1">            
              <table class="table table-hover session" style="width: 70%; margin-right:2%; background-color: #8EE1DB;">
                <thead>
                    <th style="background-color: #21948B;">   Sessions</th>
                </thead>
                <tbody  class="colored-rows">
                  <tr onclick="location.href = '/pagename'">
                    <td style="background-color: #F1FEFD; border-color: transparent;">Start Session</td>
                  </tr>
                  <tr onclick="location.href = '/SessionsList'">
                    <td class="lastRow" style="background-color: #C5F4F1; border-color: transparent;">View Sessions</td>
                  </tr>
                 </tbody>

              </table>  
              </div>
        </div>
</asp:Content>
