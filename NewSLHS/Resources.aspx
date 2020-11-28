<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resources.aspx.cs" Inherits="NewSLHS.Resources" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resources</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <link rel="stylesheet" href="../../static/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script>
      $(document).ready(function(){
          $(".hamburger").click(function(){
              $(".wrapper1").toggleClass("collapse2"); 
          });
      });
    </script> 
</head>
<body>
    <!--The Navigation Bar-->
  <div class="wrapper1">
    <div class="top-navbar">
        <div class="hamburger" style="background-color: #FFEBC6;">
            <div></div>
            <div></div>
            <div></div>
        </div>
        <div class="top-menu">
            <div class="logo"><img src="\Images\logo.png" width="50px"></div>
            <ul>
                <div class="dropdown">
                <button class="dropbtn">User Name</button>
              <div class="dropdown-content">
                <a href="#">Profile</a>
                <a href="#">Logout</a>
              </div>
              </div> 
            </ul>
        </div>
    </div>
    <div class="sidebar1"  style="background-color:#FFEBC6;"> 
        <ul>
            <li><a href="/home">
                <span class="icon"><i class="fa fa-home iconMargin user-icon" aria-hidden="true" ></i></span>
                <span class="title2">Homepage</span>
            </a></li>
            <li><a href="/deposit">
                <span class="icon"><i class="iconify iconMargin" data-icon="fa-suitcase" aria-hidden="true"></i></span>
                <span class="title2">Resources</span>
            </a></li>
            <li><a href="/transfer">
                <span class="icon"><i class="iconify iconMargin" data-icon="fa-list-alt" aria-hidden="true"></i></span>
                <span class="title2">Sessions</span>
            </a></li>
            <li><a href="/transactions">
                <span class="icon"><i class="iconify iconMargin" data-icon="fa-users" aria-hidden="true"></i></span>
                <span class="title2">Clients</span>
            </a></li>
            <li><a href="/beneficiaries">
                <span class="icon"><i class="fas fa-book-reader iconMargin"></i></span>
                <span class="title2">Students</span>
            </a></li>
            <li><a href="/transactions">
              <span class="icon"><i class="iconify iconMargin" data-icon="fa-bar-chart" aria-hidden="true"></i></span>
              <span class="title2">Reports</span>
          </a></li>
        </ul>
    </div>

    <!--Calendar-->
    <div class="main-container1">--%>

 <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="calendar">
          <h1>Resources</h1>
          <br>            
          <div class="container1">            
              <table class="table table-hover request" style="width: 70%; margin-right:2%; background-color: #8EE1DB;">
                <thead>
                    <th style="background-color: #21948B;">   Resources</th>
                </thead>
                <tbody  class="colored-rows">

                 <tr onclick="location.href = '/Requests'"> 
                   <td style="background-color: #F1FEFD; border-color: transparent;">View Request</td>
                 </tr>

                  <tr onclick="location.href = '/ResourcesList'">
                    <td class="colored-rows" style="background-color: #C5F4F1; border-color: transparent;">View Resources</td>
                  </tr>

                  <tr onclick="location.href = '/SearchResources'">
                    <td class="lastRow" style="background-color: #8EE1DB; border-color: transparent;">Search Resources</td>
                  </tr>

                 </tbody>

              </table>  
              </div>
            </div>
      </asp:Content>

          <%--  </form>
      </div>
    </div>
</body>
</html>--%>
