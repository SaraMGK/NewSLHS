<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="NewSLHS.Clients" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="calendar">
          <h1>Clients</h1>
          <br>            
          <div class="container1">            
              <table class="table table-hover request" style="width: 70%; margin-right:2%; background-color: #8EE1DB;">
               
                  <thead>
                    <th style="background-color: #21948B;">   Clients</th>
                </thead>
                  <tr onclick="location.href = '/ClientsList'">
                    <td style="background-color: #F1FEFD; border-color: transparent;">View Clients List</td>
                  </tr>
                <tbody class="colored-rows">
                  <tr onclick="location.href = '/IncompleteClients'">
                    <td class="lastRow" style="background-color: #C5F4F1; border-color: transparent;">View Incomplete Clients</td>
                  </tr>
                 </tbody>

              </table>  
              </div>
            </div>
</asp:Content>
