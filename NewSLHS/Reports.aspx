<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="NewSLHS.Reports" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="calendar">
    <h1>Reports</h1>
    
    <%--session table--%>
    <br>            
           <div class="container1">            
              <table class="table table-hover session" style="width: 70%; margin-right:2%; background-color: #8EE1DB;">
                <thead>
                    <th style="background-color: #21948B;">   Reports</th>
                </thead>
                <tbody  class="colored-rows">
                  <tr>
                    <td style="background-color: #ffffff; border-color: transparent;">Appointments Reports</td>
                  </tr>
                  <tr>
                    <td style="background-color: #e6faf8; border-color: transparent;">Sessions Reports</td>
                  </tr>
                  <tr>
                    <td class="lastRow" style="background-color: #C5F4F1; border-color: transparent;">All Reports</td>
                  </tr>
                     </tbody>

              </table>  
              </div>
        </div>

</asp:Content>
