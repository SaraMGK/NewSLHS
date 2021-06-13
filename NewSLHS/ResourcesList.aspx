<%@ Page Title="Resources" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResourcesList.aspx.cs" Inherits="NewSLHS.RT" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Resources</h1>
    <%--Search Panel--%>
    <div class="search-div">
        <asp:TextBox ID="SearchTxt" runat="server" CssClass="small-search-bar"></asp:TextBox>
<%--        <button class="small-search-button" type="button"><i class="fa fa-search" runat="server"></i></button>--%>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="new-search-btn"><i class="fa fa-search" runat="server"></i></asp:LinkButton>
    </div>

    <div class="all-res-div" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1">
        <LayoutTemplate>
            <div runat="server" id="itemPlaceholder">
            
            </div>
        </LayoutTemplate>
        <ItemTemplate>
                        
                  <%--Resource Div--%>
                  <div class="resource-div" runat="server">
                        <%--Image Div--%>
                        <div class="image2-div" runat="server">
                            <img alt="Resource Image" runat="server" class="resource-image2" src='<%#Eval("Image") %>'/>
                        </div>
                        <%--Resource Name Div--%>
                        <div class="image-title" runat="server">
                            <asp:Label ID="Label1" runat="server" CssClass="img-label" Text='<%#Eval("Name") %>'></asp:Label>
                        </div>
                        <%--Discription Div--%>
                        <%--<div class="discr-div" runat="server">
                            <asp:Label ID="Label2" runat="server" CssClass="discr-label" Text='<%#Eval("Description") %>'></asp:Label>
                        </div>--%>
                        <%--Quantiy, Availbilty, & Button Div--%>
                        <div class="quan-ava-btn-div" runat="server">
                            <%--Availabe Icon --%>
                            <%--<div class="avail-icon-div" runat="server">
                                <asp:Image ID="Image1" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
                            </div>--%>
                            <%--Quantity Label--%>
                            <div class="quan-div" runat="server">
                                <asp:Label ID="Label3" CssClass="quan-lb" runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>
                            </div>
                        </div>
                        <%--Request Button--%>
                        <div class="req-btn-div" runat="server">
                            <asp:Button ID="Button1" CssClass="req-btn" runat="server" Text="Request" />
                        </div>
                </div>
                   
                
            </ItemTemplate>
  
    </asp:ListView>
            </div>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Resources"></asp:EntityDataSource>

<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SLHSClinicConnectionString %>" SelectCommand="SELECT * FROM [Resource]"></asp:SqlDataSource>--%>
    
    <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSource1">
        <asp:SearchExpression SearchType="Contains" DataFields="Name">
            <asp:ControlParameter ControlID="SearchTxt" />
        </asp:SearchExpression>
        <asp:OrderByExpression DataField="Name" Direction="Ascending"></asp:OrderByExpression>
    </asp:QueryExtender>

</asp:Content>
