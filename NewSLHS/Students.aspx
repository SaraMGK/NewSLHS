<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="NewSLHS.Students" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="calendar">
    <h1>Students</h1>
    
    <%--Students table--%>
    <br>            
           <div class="container1">            
              <table class="table table-hover session" style="width: 70%; margin-right:2%; background-color: #8EE1DB;">
                <thead>
                    <th style="background-color: #21948B;">   Students</th>
                </thead>
                <tbody  class="colored-rows">
                  <tr  onclick="location.href = '/StudentList'">
                    <td class="lastRow" style="background-color: #F1FEFD; border-color: transparent;">View Student Information</td>
                  </tr>
                     </tbody>

              </table>  
              </div>
         </div>
</asp:Content>
