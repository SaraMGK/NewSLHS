 <%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="SLHSClinic.Homepage" %>

<%--<!DOCTYPE  html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">--%>
<%--<head runat="server">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="styles.css">
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
        $(document).ready(function () {
            $(".hamburger").click(function () {
                $(".wrapper1").toggleClass("collapse2");
            });
        });
    </script>--%> 

<%--</head>
<body>--%>
    <%--    <form id="form1" runat="server">

  <!--The Navigation Bar-->
  <div class="wrapper1">
    <div class="top-navbar">
        <div class="hamburger">
            <div></div>
            <div></div>
            <div></div>
        </div>
        <div class="top-menu">
            <div class="logo"><img src="/Images/logo.png" width="50px"></div>
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

    <div class="sidebar1">
        <ul>
            <li><a href="/home">
                <span class="icon"><i class="fa fa-home iconMargin" aria-hidden="true" ></i></span>
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
            <div class="nav-cal">
                 <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>       
            </div>
       

            
           </ul>
 

    </div>

    <!--Calendar-->
    <div class="main-container1">--%>

         <asp:Content ID="cal" ContentPlaceHolderID="nav_calendar" runat="server">
             <div class="hide-cal" style="width: 100%;">
                 <asp:Calendar ID="Calendar1" runat="server" BorderColor="#00FFFFFF" Font-Size="8pt"  CssClass="nav-cal" DayNameFormat="FirstLetter" Font-Names="Arial" NextPrevFormat="CustomText" NextPrevStyle-BackColor="Transparent">
                     <DayHeaderStyle HorizontalAlign="Center" Font-Underline="False" CssClass="day-header" />
                     <NextPrevStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="arrow-cal" />
                     <OtherMonthDayStyle ForeColor="Gray" />
                     <SelectedDayStyle BackColor="#3BA69E" CssClass="selected-day" />
                     <TitleStyle CssClass="month" BackColor="Transparent" Font-Bold="True" Font-Size="Small" Height="50px" Font-Names="Bahnschrift SemiBold" />
                 </asp:Calendar>       
             </div>
        </asp:Content>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <div class="calendar">
        <h1>Homepage</h1>
        <br>            
        <div class="container1">            
            <table class="table table-hover table" style="width: 500px; margin-right:2%;">
              <thead>
                  <th style="background-color: #60C8C1;">  Appointment <button class="icon-button" type="button"><i class="fa fa-plus" data-toggle="modal" data-target="#newModal"></i></button>
</th>
              </thead>
              <tbody>
                <tr style="width: 50px;"> 
                  <td style="border-top: transparent;">08:00</td>
                </tr>
                <tr>
                  <td>09:00</td>
                </tr>
                <tr>
                  <td>10:00
                  <!--appointment on calendar-->
                  <button class="appointment-button" type="button" data-toggle="modal" data-target="#myModal">
                      <asp:Label ID="ClientNameLabel" runat="server" Text="Client Name"></asp:Label></button>
                </td>
                </tr>
                <tr>
                  <td>11:00</td>
                </tr>
                <tr>
                  <td>12:00</td>
                </tr>
                <tr>
                  <td>13:00</td>
                </tr>
                <tr>
                  <td>14:00</td>
                </tr>
                <tr>
                  <td>15:00</td>
                </tr>
                <tr>
                  <td>16:00</td>
                </tr>
                <tr>
                  <td class="lastRow">17:00</td>
                </tr>

<%------------------------------------ Appointment Modal ----------------------------------------%>
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog">
    
                 <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header header" style="height: 2%; background-color: #d6ebea; padding: 0px;">
                <h4 class="modal-title" style="padding: 2%;">Appointment</h4>
                <button type="button" class="close" data-dismiss="modal" style="margin-right: 1px;">&times;</button>
                </div>
                <br>
                <br>
                
                <form>
                <!--Appointment Type-->
                <div class="type">
                  <label class="label1">Type</label>
                    <asp:DropDownList ID="TypeDropDownList" runat="server" AutoPostBack="True" CssClass="option1" style="width: 125px;">
                        <asp:ListItem Enabled="true" Text="--- Select  ---" Selected="True" Value="-1"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Screening"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Assessment"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Treatment"></asp:ListItem>
                  </asp:DropDownList>
                </div>

                <!--Room-->
                <div class="type">
                  <label class="label1">Room</label>
                  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="RoomDataSource" DataTextField="RoomNumber" DataValueField="RoomNumber" CssClass="option1" AppendDataBoundItems="True" style="width: 125px;">
                      <asp:ListItem Enabled="true" Text="--- Select  ---" Selected="True" Value="-1"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:EntityDataSource ID="RoomDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Rooms" Select="it.[RoomID], it.[RoomNumber]"></asp:EntityDataSource>
                </div>

                <!--Appointment Status-->
                <div class="type">
                  <label class="label1">Status</label>
                  <asp:DropDownList ID="StatusDropDownList" runat="server" AutoPostBack="true" DataTextField="Status" DataValueField="Status" Cssclass="option1" style="width: 175px;">
                    <asp:ListItem Enabled="true" Text="----- Select Status -----" Selected="true"></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Unspecified" ></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Completed"></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Canceled by Therapist"></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Canceled by Client" ></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="No-Show"></asp:ListItem>
                  </asp:DropDownList>
                </div>

                <!--Student-->
                <div class="type">
                  <label class="label1">Student</label>
                  <asp:DropDownList ID="StudentDropDownList" runat="server"  DataTextField="datasource" DataValueField="UserID" CssClass="option1" AppendDataBoundItems="True" style="width: 220px;">
                      <asp:ListItem Enabled="true" Text="------- Select Student -------" Selected="True" Value="-1"></asp:ListItem>
                  </asp:DropDownList>
                </div>
                
                <%--Client--%>
                 <div class="type">
                  <label class="label1">Client</label>
                  <asp:DropDownList ID="ClientDropDownList" runat="server" DataTextField="datasource" DataValueField="ClientID" CssClass="option1" AppendDataBoundItems="True" style="width: 220px;">
                      <asp:ListItem Enabled="true" Text="------- Select Client -------" Selected="True" Value="-1"></asp:ListItem>
                  </asp:DropDownList><button type="button" class="btn4" onclick="location.href = '/InsertGeneralInformation'">Add Client</button>
                 </div>

                <%--Start Time--%>
                <div class="type">
                  <label class="label1">Starts</label>
                  <%--<asp:DropDownList ID="STimeDropDownList" runat="server" AutoPostBack="true" CssClass="option1">
                      <asp:ListItem Enabled="true" Text="----- Pick Date & Time -----" Selected="True"></asp:ListItem>
                      <asp:ListItem Enabled="true"></asp:ListItem>
                  </asp:DropDownList>--%>
                  <input type="datetime-local" class="option1" style="padding: 0px;">
                </div>

                <!--End Time-->
                <div class="type">
                  <label class="label1">Ends</label>
                  <input ID="EndTime" type="datetime-local" class="option1" runat="server" style="padding: 0px;">
                </div>

                <!--Repeat-->
                <div class="type">
                  <label class="label1">Repeat</label>
                    <asp:DropDownList ID="RepeatDropDownList" runat="server" CssClass="option1" style="width: 125px;">
                        <asp:ListItem Enabled="true" Text="---- Select -----" Selected="True"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Weekly"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Never"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!--Note-->
                 <div class="type">
                  <label class="label1">Note</label>
<%--                  <input type="text" style="width: 250px; height: 40px; margin-bottom: 3%;" class="option1">--%>
                  <asp:TextBox ID="NoteTextBox"  style="width: 250px; height: 40px; margin-bottom: 3%;" runat="server" CssClass="option1"></asp:TextBox>
                 </div>                  

                <div class="modal-footer" style="border: 0px;">
                  <div style="width: 65%">
                    <button type="button" class="btn5" data-dismiss="Modal">Delete</button>
                  </div>

                  <button type="button" class="btn2" data-dismiss="modal">Save</button>
                  <button type="button" class="btn3" data-dismiss="modal">Cancel</button>
                </div>
          </form>
                    </div>
          
    </div>
  </div>
                

              </tbody>
            </table>

            <!--Requests-->
            <div class="top1">  
              <table class="table table-hover request" style="width: 450px; border-color:#8EE1DB">
                <thead>
                    <th style="background-color:#8EE1DB; border-color: transparent;">Requests</th>
                </thead>
                <tbody>
                  <tr>
                    <td class="lastRow" style="border-color: transparent">Your recent requests will appear here</td>
                  </tr>
                </tbody>
              </table>  
              
              <!--Sessions-->
              <table class="table table-hover session" style="width: 450px; border-color: #21948B">
                <thead>
                    <th style="background-color:#21948B;">Sessions</th>
                </thead>
                <tbody>
                  <tr>
                    <td class="lastRow" style="border-color: transparent">Your recent sessions will appear here</td>
                  </tr>
                </tbody>
              </table>
              
          </div>
            </div>

          <%------------------------------------ New Appointment Modal ----------------------------------------%>
            <div class="modal fade" id="newModal" role="dialog">
              <div class="modal-dialog">
    
                 <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header header" style="height: 2%; background-color: #d6ebea; padding: 0px;">
                <h4 class="modal-title" style="padding: 2%;">Appointment</h4>
                <button type="button" class="close" data-dismiss="modal" style="margin-right: 1px;">&times;</button>
                </div>
                <br>
                <br>
                
                <form>
                <!--Appointment Type-->
                <div class="type">
                  <label class="label1">Type</label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="option1" style="width: 125px;">
                        <asp:ListItem Enabled="true" Text="--- Select Type ---" Selected="True" Value="-1"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Screening"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Assessment"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Treatment"></asp:ListItem>
                  </asp:DropDownList>
                </div>

                <!--Room-->
                <div class="type">
                  <label class="label1">Room</label>
                  <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="RoomDataSource" DataTextField="RoomNumber" DataValueField="RoomNumber" CssClass="option1" AppendDataBoundItems="True" style="width: 125px;">
                      <asp:ListItem Enabled="true" Text="----- Select Room -----" Selected="True" Value="-1"></asp:ListItem>
                  </asp:DropDownList>
                  <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Rooms" Select="it.[RoomID], it.[RoomNumber]"></asp:EntityDataSource>
                </div>

                <!--Appointment Status-->
                <div class="type">
                  <label class="label1">Status</label>
                  <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true" DataTextField="Status" DataValueField="Status" Cssclass="option1" style="width: 175px;">
                    <asp:ListItem Enabled="true" Text="----- Select Status -----" Selected="true"></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Unspecified" ></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Completed"></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Canceled by Therapist"></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="Canceled by Client" ></asp:ListItem>
                    <asp:ListItem Enabled="true" Text="No-Show"></asp:ListItem>
                  </asp:DropDownList>
                </div>

                <!--Student-->
                <div class="type">
                  <label class="label1">Student</label>
                  <asp:DropDownList ID="DropDownList5" runat="server"  DataTextField="datasource" DataValueField="UserID" CssClass="option1" AppendDataBoundItems="True" style="width: 220px;">
                      <asp:ListItem Enabled="true" Text="------- Select Student -------" Selected="True" Value="-1"></asp:ListItem>
                  </asp:DropDownList>
                </div>
                
                <!--Client-->
                 <div class="type">
                  <label class="label1">Client</label>
                  <asp:DropDownList ID="DropDownList6" runat="server" DataTextField="datasource" DataValueField="ClientID" CssClass="option1" AppendDataBoundItems="True" style="width: 220px;">
                      <asp:ListItem Enabled="true" Text="------- Select Client -------" Selected="True" Value="-1"></asp:ListItem>
                  </asp:DropDownList><button type="button" class="btn4" data-dismiss="modal">Add Client</button>
                 </div>

                <!--Start Time-->
                <div class="type">
                  <label class="label1">Starts</label>
                  <%--<asp:DropDownList ID="STimeDropDownList" runat="server" AutoPostBack="true" CssClass="option1">
                      <asp:ListItem Enabled="true" Text="----- Pick Date & Time -----" Selected="True"></asp:ListItem>
                      <asp:ListItem Enabled="true"></asp:ListItem>
                  </asp:DropDownList>--%>
                  <input type="datetime-local" class="option1" style="padding: 0px;">
                </div>

                <!--End Time-->
                <div class="type">
                  <label class="label1">Ends</label>
                  <input ID="Datetimelocal1" type="datetime-local" class="option1" runat="server" style="padding: 0px;">
                </div>

                <%--Repeat--%>
                <div class="type">
                  <label class="label1">Repeat</label>
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="option1" style="width: 125px;">
                        <asp:ListItem Enabled="true" Text="---- Select -----" Selected="True"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Weekly"></asp:ListItem>
                        <asp:ListItem Enabled="true" Text="Never"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <%--Note--%>
                 <div class="type">
                  <label class="label1">Note</label>
<%--                  <input type="text" style="width: 250px; height: 40px; margin-bottom: 3%;" class="option1">--%>
                  <asp:TextBox ID="TextBox1"  style="width: 250px; height: 40px; margin-bottom: 3%;" runat="server" CssClass="option1"></asp:TextBox>
                 </div>                  

                <div class="modal-footer" style="border: 0px;">
                  <button type="button" class="btn2" data-dismiss="modal">Save</button>
                  <button type="button" class="btn3" data-dismiss="modal">Cancel</button>
                </div>
          </form>
                    </div>
          
    </div>
  </div>
    
        <%---------------------------------UNDER CALENDER--------------------------%> 
       <div>

           <%--Hidden Appointment Details View--%>
           <asp:DetailsView ID="AppointmentDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False">
           </asp:DetailsView>
           <asp:EntityDataSource ID="AppointmentEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Appointment_View"></asp:EntityDataSource>
       </div>
     
        </div>
 </asp:Content>








   <%-- </div>
    </form>--%>
<%--</body>
</html>--%>