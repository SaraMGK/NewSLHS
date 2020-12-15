<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientsList.aspx.cs" Inherits="NewSLHS.ClientsList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Clients List</h1>

   <%-- Add Client Button--%>
   <button class="request-button">Add Client</button>

    <%--Clients List--%>
    <div>
        <div class="client-div" onclick="location.href = '/ClientGeneralInformation'">
            <asp:Label ID="ClientNameLabel" runat="server" Text="Client Name" style="font-weight: bold" CssClass="client-name-label"></asp:Label>
            <div class="Image-info-div">
                <%------------------Icon Div-----------------%>
                <div class="resource-image-name">
                     <i class="fa fa-user client-icon"></i>
                </div>

               <%-------------------Labels Div---------------%>
                <div class="client-info">
                    <div>
                        <label class="client-info-label">Email</label>
                        <asp:Label ID="EmailLabel" runat="server" Text="Client Email" CssClass="client-name-label"></asp:Label>
                    </div>
                    <div>
                        <label class="client-info-label">Mobile</label>
                        <asp:Label ID="MobileLable" runat="server" Text="Client Mobile" CssClass="client-name-label"></asp:Label>
                    </div>
                    <div>
                        <label class="client-info-label">File Number</label>
                        <asp:Label ID="FileNoLabel" runat="server" Text="Client File Number" CssClass="client-name-label"></asp:Label>
                    </div>
                    <div>
                        <label class="client-info-label">Date of Birth</label>
                        <asp:Label ID="BirthDateLabel" runat="server" Text="Client Birth Date" CssClass="client-name-label"></asp:Label>
                    </div>
                    <div>
                        <label class="client-info-label">Student</label>
                        <asp:Label ID="StudentNameLabel" runat="server" Text="Student Name" CssClass="client-name-label"></asp:Label>
                    </div>
                </div>
           </div>
        </div>
        <%--Hidden DetailsView--%>
        <asp:DetailsView ID="ClientDetailsView" runat="server" Height="50px" Width="125px" DataSourceID="EntityDataSource1" AutoGenerateRows="False">
                <Fields>
                    <asp:BoundField DataField="Client_FName" HeaderText="Client_FName" ReadOnly="True" SortExpression="Client_FName" />
                    <asp:BoundField DataField="Client_MName" HeaderText="Client_MName" ReadOnly="True" SortExpression="Client_MName" />
                    <asp:BoundField DataField="Client_LName" HeaderText="Client_LName" ReadOnly="True" SortExpression="Client_LName" />
                    <asp:BoundField DataField="Client_Email" HeaderText="Client_Email" ReadOnly="True" SortExpression="Client_Email" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" ReadOnly="True" SortExpression="Mobile" />
                    <asp:BoundField DataField="FileNumber" HeaderText="FileNumber" ReadOnly="True" SortExpression="FileNumber" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" ReadOnly="True" SortExpression="DateOfBirth" />
                    <asp:BoundField DataField="Student_FName" HeaderText="Student_FName" ReadOnly="True" SortExpression="Student_FName" />
                    <asp:BoundField DataField="Student_LName" HeaderText="Student_LName" ReadOnly="True" SortExpression="Student_LName" />
                </Fields>
            </asp:DetailsView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Client_View" Select="it.[Client_FName], it.[Client_LName], it.[Client_Email], it.[Mobile], it.[FileNumber], it.[DateOfBirth], it.[Student_FName], it.[Student_LName], it.[Client_MName]"></asp:EntityDataSource>
    </div>

</asp:Content>

    <asp:Content ID="tab" ContentPlaceHolderID="client_tabs" runat="server">
                 <div class="sidebar2">
                     <ul class="">
                     <li><a href="/ClientGeneralInformation">
                        <span class="tab">General Information</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Identification</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Birth History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Adult</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Child</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Parental History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Health History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Physician Information</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Motor Development</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Speech & Language</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Hearing History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">School History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Social History</span></a>
                     </li>
                </ul>
                 </div>
     </asp:Content>
