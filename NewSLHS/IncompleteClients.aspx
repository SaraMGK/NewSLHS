<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IncompleteClients.aspx.cs" Inherits="NewSLHS.WebForm3" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Incomplete Clients List</h1>


        <% foreach (GridViewRow row in GridView1.Rows){ %> 
    <div id="t2" style="height: 180px;margin-bottom: 20px;">        
        <div  class="client-div" onclick="location.href = '/IncompleteClients.aspx?ClientID='+ <%= row.Cells[5].Text %>" >

            <Label ID="ClientIDLabel" style="font-weight: bold; margin-left: 25px;" Class="client-name-labelb"><%= row.Cells[5].Text%></Label>
            <div class="Image-info-div">
                <%------------------Icon Div-----------------%>
                <div class="resource-image-name">
                    <img src="\Images\User.png" class="client-icon" /> 
<%--                    <i class="fa fa-user client-icon"></i>--%>
                </div>

               <%-------------------Labels Div---------------%>
                <div class="client-info">
                    <div>
                        <label id="NameLabel" class="client-name-labelb"><%= row.Cells[0].Text + " " + row.Cells[1].Text + " " + row.Cells[2].Text%></label>
                    </div>
                    <div>
                        <label class="client-info-label">Email</label>
                        <label id="EmailLabel" class="client-name-label"><%= row.Cells[3].Text%></label>
                    </div>
                    <div>
                        <label class="client-info-label">Mobile</label>
                        <Label ID="MobileLable" Class="client-name-label"><%= row.Cells[4].Text%></Label>
                    </div>
                </div>
           </div>
        </div>
    </div>
    <% } %>
    
    
    
    
    
    
    
    <%--SQL Command--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SLHSClinicConnectionString %>" SelectCommand="SELECT dbo.Client.FirstName, dbo.Client.MiddleName, dbo.Client.LastName, dbo.Client.Email, dbo.Client.Mobile, dbo.Client.ClientID
FROM  dbo.Client LEFT OUTER JOIN
         dbo.Client_Information ON dbo.Client.ClientID = dbo.Client_Information.ClientID
		 WHERE ([FileNumber] IS NULL)
">
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ClientID" AllowPaging="True" Visible="False">
    <Columns>
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
        <asp:BoundField DataField="ClientID" HeaderText="ClientID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" />
    </Columns>
</asp:GridView>

</asp:Content>
