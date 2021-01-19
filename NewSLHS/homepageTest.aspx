<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homepageTest.aspx.cs" Inherits="NewSLHS.homepageTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
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
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


      <div class="calendar">
        <h1>Homepage</h1>
        <br>            
        <div class="container1">            
            
              <iframe src="\Users\sweet\source\repos\SchedulerNetAsp\SchedulerNetAsp\" height="" width="500" title="Appoitment">
                  <table class="table table-hover table" style="width: 500px; margin-right:2%;">
              <thead>
                  <th style="background-color: #60C8C1;">  Appointment <button class="icon-button" type="button"><i class="fa fa-plus" data-toggle="modal" data-target="#newModal"></i></button></th>
              </thead>
                <tbody>
                    </tbody>

              </table>
              </iframe>

                
              
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
