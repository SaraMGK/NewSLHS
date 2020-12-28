<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModalTest.aspx.cs" Inherits="NewSLHS.ModalTest" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Rooms" Select="it.[RoomID], it.[RoomNumber]"></asp:EntityDataSource>
    <asp:EntityDataSource ID="StudentEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Students" Select="it.[UserID], it.[FirstName], it.[MiddleName], it.[LastName]" ></asp:EntityDataSource>


     <button class="appointment-button" style="width:120px; height:40px;" type="button" data-toggle="modal" data-target="#myModal">Client Name</button>

    <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog">


    
                <%-- <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header header" style="height: 2%; background-color: #d6ebea; padding: 0px;">
                <h4 class="modal-title" style="padding: 1%;">Appointment</h4>
                <button type="button" class="close" data-dismiss="modal" style="margin-right: 1px;">&times;</button>
                </div>
                <br>
                <br>
                
                <form>
                <!--Appointment Type-->
                <div class="type">
                  <label class="label1">Type</label>
                  <select class="option1">
                    <option value="Screening">Screening</option>
                    <option value="Assessment">Assessment</option>
                    <option value="Treatment">Treatment</option>
                  </select>
                </div>

                <!--Room-->
                <div class="type">
                  <label class="label1">Room</label>
                   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="RoomNumber" DataValueField="RoomID" CssClass="option1"></asp:DropDownList>
                </div>

                <!--Appointment Status-->
                <div class="type">
                  <label class="label1">Status</label>
                  <select class="option1">
                    <option value="Unspecified">Unspecified</option>
                    <option value="Completed">Completed</option>
                    <option value="Canceled by Therapist">Canceled by Therapist</option>
                    <option value="Canceled by Client">Canceled by Client</option>
                    <option value="No Show">No Show</option>
                  </select>
                </div>

                <!--Student-->
                <div class="type">
                  <label class="label1">Student</label>
                  <asp:DropDownList ID="StudentDropDownList" runat="server" AutoPostBack="True" DataTextField="datasource" DataValueField="UserID" CssClass="option1"></asp:DropDownList>
                </div>
                
                <!--Appointment Client-->
                 <div class="type">
                    <label class="label1">Client</label>
                    <asp:DropDownList ID="ClientDropDownList" runat="server" AutoPostBack="True" DataTextField="datasource" DataValueField="ClientID" CssClass="option1"></asp:DropDownList>
                 </div>

                <!--Appointment Start Time-->
                <div class="type">
                  <label class="label1">Starts</label>
                  <input type="datetime-local" class="option1">
                </div>

                <!--Appointment End Time-->
                <div class="type">
                  <label class="label1">Ends</label>
                  <input type="datetime-local" class="option1">
                </div>

                <!--Appointment Repeat-->
                <div class="type">
                  <label class="label1">Repeat</label>
                    <select class="option1">
                     <option>Weekly</option>
                     <option>Never</option>
                    </select>
                </div>

                <!--Appointment Note-->
                 <div class="type">
                  <label class="label1">Note</label>
                  <input type="text" style="width: 250px; height: 40px; margin-bottom: 3%;" class="option1">
                 </div>                  

                <div class="modal-footer" style="border: 0px;">
                  <button type="button" class="btn2" data-dismiss="modal">Save</button>
                  <button type="button" class="btn3" data-dismiss="modal">Cancel</button>
                </div>
          </form>
                    </div>--%>



    </div>
    </div>
</asp:Content>
