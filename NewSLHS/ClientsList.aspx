<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientsList.aspx.cs" Inherits="NewSLHS.WebForm2" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   
    <h1>Clients List</h1>

   <%-- Add Client Button--%>
    <div class="next-button-div">
        <button type="button" class="request-button" onclick="location.href = '/InsertGeneralInformation'">Add Client</button>
    </div>


        <% foreach (GridViewRow row in ClientGridView.Rows){ %> 
    <div id="t2" style="height: 180px;margin-bottom: 20px;">
    
        

       <%-- onclick="location.href = '/ClientGeneralInformation'"--%>
        
        <div  class="client-div" onclick="location.href = '/ClientGeneralInformation.aspx?ClientID='+ <%= row.Cells[7].Text %>" >
            <Label ID="ClientNameLabel" style="font-weight: bold" Class="client-name-label"><%= row.Cells[0].Text + " " + row.Cells[2].Text %></Label>
            <div class="Image-info-div">
                <%------------------Icon Div-----------------%>
                <div class="resource-image-name">
                    <img src="\Images\User.png" class="client-icon" /> 
<%--                    <i class="fa fa-user client-icon"></i>--%>
                </div>

               <%-------------------Labels Div---------------%>
                <div class="client-info">
                    <div>

                        <label class="client-info-label">Email</label>
                        <label id="EmailLabel" class="client-name-label"><%= row.Cells[3].Text%></label>
                    </div>
                    <div>
                        <label class="client-info-label">Mobile</label>
                        <Label ID="MobileLable" Class="client-name-label"><%= row.Cells[4].Text%></Label>
                    </div>
                    <div>
                        <label class="client-info-label">File Number</label>
                        <Label ID="FileNoLabel" Class="client-name-label"><%= row.Cells[5].Text%></Label>
                    </div>
                    <div>
                        <label class="client-info-label">Date of Birth</label>
                        <Label ID="BirthDateLabel" Class="client-name-label"><%= row.Cells[6].Text%></Label>
                    </div>
                    <%--<div>
                        <label class="client-info-label">Student</label>
                        <Label ID="StudentNameLabel" Class="client-name-label"><%= row.Cells[7].Text + " " + row.Cells[9].Text%></Label>
                    </div>--%>
                </div>
           </div>
        </div>
    </div>
    <% } %>
         <%-----Hidden GridView-----%>
    <asp:GridView ID="ClientGridView" runat="server" AutoGenerateColumns="False" DataSourceID="ClientEntityDataSource" DataKeyNames="FirstName,MiddleName,LastName,Email,Mobile,FileNumber,ClientID" OnSelectedIndexChanged="ClientGridView_SelectedIndexChanged" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" ReadOnly="True" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" ReadOnly="True" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" ReadOnly="True" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" ReadOnly="True" SortExpression="Mobile" />
            <asp:BoundField DataField="FileNumber" HeaderText="FileNumber" ReadOnly="True" SortExpression="FileNumber" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" ReadOnly="True" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="ClientEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Client_View" EnableInsert="True" EnableUpdate="True" OnSelecting="ClientEntityDataSource_Selecting"></asp:EntityDataSource>

</asp:Content>

