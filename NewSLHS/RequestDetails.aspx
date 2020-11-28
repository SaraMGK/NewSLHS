<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RequestDetails.aspx.cs" Inherits="NewSLHS.RequestDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <%-- --Header----%>
    <h1>Request Details</h1>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="383px" AutoGenerateRows="False" DataSourceID="EntityDataSource1">
        <Fields>
            <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="30px">
            </asp:ImageField>
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
            <asp:BoundField DataField="ResourceRequestID" HeaderText="ResourceRequestID" ReadOnly="True" SortExpression="ResourceRequestID" />
            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
            <asp:BoundField DataField="RequestDateTime" HeaderText="RequestDateTime" ReadOnly="True" SortExpression="RequestDateTime" />
            <asp:BoundField DataField="Quantity_Requested" HeaderText="Quantity_Requested" ReadOnly="True" SortExpression="Quantity_Requested" />
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Request_View" Select="it.[Image], it.[Name], it.[ResourceRequestID], it.[Status], it.[RequestDateTime], it.[Quantity_Requested]" Where="it.ResourceRequestID=@x" EntityTypeFilter="" >
        <WhereParameters>
            <asp:ControlParameter ControlID="DetailsView1" DbType="Int32" DefaultValue="4" Name="Requestparameter" PropertyName="SelectedValue" />
            <asp:QueryStringParameter DbType="Int32" DefaultValue="1" Name="x" QueryStringField="ResourceRequestID" />
        </WhereParameters>
    </asp:EntityDataSource>
    
    
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
                <img src="/Images/LetterM.png" alt="Resource Image" class="r-image"/>
             </div>

                <%----Resource Name & Request ID Div-------%>
                <div class="resource-name">
                    <label class="request-label">Resource Name</label>
                    <label class="request-label">Request ID</label>
                </div>
           
            </div>
            <%-------Info Div--------%>
            <div class="request-info">
                 
                 <%----Request Status-------%>
                 <div>
                    <label class="info-label">Request Status</label>
                    <label class="request-input" style="border-color:transparent">Pending</label>
                 </div>

                 <%-----Issue Date--------%>
                 <div>
                    <label class="info-label">Issue Date</label>
                    <input type="datetime-local" class="request-input">
                 </div>
                <%----Return Date--------%>
                 <div>
                    <label class="info-label">Return Date</label>
                    <input type="datetime-local" class="request-input">
                 </div>

                 <%------Quantity--------%>
                 <div>
                    <label class="info-label">Quantity</label>
                    <input type="number" id="quantity" name="quantity" min="1" class="request-input" style="width:15%">
                 </div>
             </div>
            </div>

            <%-----------Save/Cancel Buttons Div--------------%>
            <div class="save-Cancel-button-div">
                
                <%------Save Button-------%>
                <button class="save-Cancel-button">Save</button>
             
                <%------Cancel Button-------%>
                <button class="save-Cancel-button" style="background-color:#8EA7A5">Cancel</button>
                
            </div>
        

        

    </div>
</asp:Content>
