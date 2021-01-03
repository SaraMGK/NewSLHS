<%@ Page Title="Requests List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Requests.aspx.cs" Inherits="NewSLHS.Requests" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Requests List</h1>
    <div class="next-button-div">
        <button class="request-button" type="button" <%--data-toggle="modal" data-target=""--%>>Create Request</button>
    </div>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1" CellPadding="4" CssClass="request-gridView" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_PageIndexChanged">
        <AlternatingRowStyle BackColor="#91e3dd" />
        <Columns>
            <asp:ImageField HeaderText="Image" DataImageUrlField="Image" ControlStyle-Width="30px">
            </asp:ImageField>
            <asp:BoundField DataField="Resource_Name" HeaderText="Name" ReadOnly="True" SortExpression="Resource_Name" />
            <asp:BoundField DataField="ResourceRequestID" HeaderText="Request ID" ReadOnly="True" SortExpression="ResourceRequestID" />
            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
            <asp:BoundField DataField="RequestDateTime" HeaderText="Issue Date" ReadOnly="True" SortExpression="RequestDateTime" />
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" ControlStyle-CssClass="request-view-button" SelectText="View" >
            <ControlStyle CssClass="request-view-button"></ControlStyle>
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" CssClass="request-gridView" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" CssClass="request-gridView" />
        <HeaderStyle BackColor="#3BA69E" Font-Bold="True" ForeColor="White" CssClass="request-gridView" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#d5f5f3" CssClass="request-gridView" />
        <SelectedRowStyle BackColor="white" Font-Bold="True" ForeColor="#333333" />
        <SelectedRowStyle BackColor="white" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Request_View" Select="it.[Image], it.[Resource_Name], it.[ResourceRequestID], it.[Status], it.[RequestDateTime]" Where="it.UserID = @UserIDparam">
        <WhereParameters>
            <asp:SessionParameter Name="UserIDparam" DbType="Int32" SessionField="SessionUserID" />
        </WhereParameters>
    </asp:EntityDataSource>
    </asp:Content>
