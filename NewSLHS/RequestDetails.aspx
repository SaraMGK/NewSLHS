<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RequestDetails.aspx.cs" Inherits="NewSLHS.RequestDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <%-- --Header----%>
    <h1>Request Details</h1>

    <%-------All Requests Button------%>
    <div class="all-req-btn-div">
        <button type="button" class="request-button" onclick="window.location.href='Requests.aspx'"> All Requests </button>
    </div>

    <%---------------------------------------The Blue Div-----------------------------------------%>
    <div id="RequestDetailsDiv" class="div-border" runat="server">
    
        <%-------------- Edit Button Div---------------%>
        <div class="edit-button-div">
            <button class="edit-button">Edit</button>
        </div>

        <%------------------Image, Label & Info Div-------------------%>
        <div class="Image-info-div">
          
            <%------Image Div------%>
            <div class="resource-image-name">   
            <div class="resource-image">
<%--                <img src="/Images/LetterM.png" alt="Resource Image" class="r-image"/>--%>
                <asp:Image ID="Image" runat="server" CssClass="r-image" />
             </div>

                <%----Resource Name & Request ID Div-------%>
                <div class="resource-name">
<%--                    <label class="request-label">Resource Name</label>--%>
                    <asp:Label ID="NameLabel" runat="server" Text="" CssClass="request-label"></asp:Label>
<%--                    <label class="request-label">Request ID</label>--%>
                    <asp:Label ID="IDLabel" runat="server" Text="" CssClass="request-label"></asp:Label>
                </div>
           
            </div>
            <%-------Info Div--------%>
            <div class="request-info">
                 
                 <%------ Status-------%>
                 <div>
                    <label class="info-label">Request Status</label>
<%--                    <label class="request-input" style="border-color:transparent">Pending</label>--%>
                     <asp:Label ID="StatusLabel" runat="server" Text="Pending" CssClass="request-input" style="border-color:transparent"></asp:Label>
                 </div>

                 <%-----Issue Date--------%>
                 <div>
                    <label class="info-label">Issue Date</label>
<%--                    <input type="datetime-local" class="request-input">--%>
                     <asp:TextBox ID="IssueDateTextBox" type="datetime-local" CssClass="request-input" runat="server"></asp:TextBox>
                 </div>
                <%----Return Date--------%>
                 <div>
                    <label class="info-label">Return Date</label>
<%--                    <input type="datetime-local" class="request-input">--%>
                    <asp:TextBox ID="ReturnDateTextBox" CssClass="request-input" type="date" runat="server"></asp:TextBox>
                 </div>

                 <%------Quantity--------%>
                 <div>
                    <label class="info-label">Quantity</label>
<%--                    <input type="number" id="quantity" name="quantity" min="1" class="request-input" style="width:15%" runat="server">--%>
                     <asp:TextBox ID="QuantityTextBox" type="number" runat="server" min="1" CssClass="request-input" Width="15%"></asp:TextBox>
                 </div>
             </div>
            </div>

            <%-----------Save/Cancel Buttons Div--------------%>
            <div id="SaveCancelDiv" class="save-Cancel-button-div" runat="server">
                
                <%------Save Button-------%>
                <button class="save-Cancel-button">Save</button>
             
                <%------Cancel Button-------%>
                <button class="save-Cancel-button" style="background-color:#8EA7A5">Cancel</button>
                
            </div>
    </div>

            <%--Hidden DetailsView--%>
    <asp:DetailsView ID="RequestDetailsView" runat="server" Height="50px" Width="383px" AutoGenerateRows="False" DataSourceID="EntityDataSource1">
        <Fields>
            <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="30px"></asp:ImageField>
            <asp:BoundField DataField="Resource_Name" HeaderText="Name" ReadOnly="True" SortExpression="Resource_Name" />
            <asp:BoundField DataField="ResourceRequestID" HeaderText="ResourceRequestID" ReadOnly="True" SortExpression="ResourceRequestID" />
            <asp:BoundField DataField="Image" HeaderText="Image" ReadOnly="True" SortExpression="Image" />
            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
            <asp:BoundField DataField="RequestDateTime" HeaderText="RequestDateTime" ReadOnly="True" SortExpression="RequestDateTime" />
            <asp:BoundField DataField="Quantity_Requested" HeaderText="Quantity_Requested" ReadOnly="True" SortExpression="Quantity_Requested" />
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Request_View" Where="it.ResourceRequestID=@x" Select="it.[Image], it.[Resource_Name], it.[ResourceRequestID], it.[Status], it.[RequestDateTime], it.[Quantity_Requested]">
        <WhereParameters>
            <asp:ControlParameter ControlID="RequestDetailsView" DbType="Int32" DefaultValue="4" Name="Requestparameter" PropertyName="SelectedValue" />
            <asp:QueryStringParameter DbType="Int32" DefaultValue="1" Name="x" QueryStringField="ResourceRequestID" />
        </WhereParameters>
    </asp:EntityDataSource>

    <%--<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="AppointmentDate,Resource_Name,Image,Status,RequestDateTime,Quantity_Requested,Available_Quantity,StudentID,FirstName,LastName,ResourceRequestID,ReturnDateTime,UserID" DataSourceID="EntityDataSource2">
        <Fields>
            <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" ReadOnly="True" SortExpression="AppointmentDate" />
            <asp:BoundField DataField="Resource_Name" HeaderText="Resource_Name" ReadOnly="True" SortExpression="Resource_Name" />
            <asp:BoundField DataField="Image" HeaderText="Image" ReadOnly="True" SortExpression="Image" />
            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
            <asp:BoundField DataField="RequestDateTime" HeaderText="RequestDateTime" ReadOnly="True" SortExpression="RequestDateTime" />
            <asp:BoundField DataField="Quantity_Requested" HeaderText="Quantity_Requested" ReadOnly="True" SortExpression="Quantity_Requested" />
            <asp:BoundField DataField="Available_Quantity" HeaderText="Available_Quantity" ReadOnly="True" SortExpression="Available_Quantity" />
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" ReadOnly="True" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" ReadOnly="True" SortExpression="LastName" />
            <asp:BoundField DataField="ResourceRequestID" HeaderText="ResourceRequestID" ReadOnly="True" SortExpression="ResourceRequestID" />
            <asp:BoundField DataField="ReturnDateTime" HeaderText="ReturnDateTime" ReadOnly="True" SortExpression="ReturnDateTime" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Request_View"></asp:EntityDataSource>--%>

</asp:Content>
