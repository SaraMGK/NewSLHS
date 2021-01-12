<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reqdettest.aspx.cs" Inherits="NewSLHS.reqdettest" %>
>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
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
</asp:Content>
