<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="NewSLHS.StudentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Students List</h1>
    <br />
    <br />


    <asp:GridView Width="90%" ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="request-gridView" DataKeyNames="StudentID,Student_FName,Student_LName,Section,Supervisor_LName,Supervisor_FName,TA_OfficeNo,TA_FName,TA_LName,TA_Email,Supervisor_Email,OfficeNumber" DataSourceID="EntityDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="1" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="Student_FName" HeaderText="Student Name" ReadOnly="True" SortExpression="Student_FName" />
            <asp:BoundField DataField="Student_LName" HeaderText="" ReadOnly="True" SortExpression="Student_LName" />
            <asp:BoundField DataField="Section" HeaderText="Section" ReadOnly="True" SortExpression="Section" />
            <asp:BoundField DataField="Supervisor_FName" HeaderText="Supervisor Name" ReadOnly="True" SortExpression="Supervisor_FName" />
            <asp:BoundField DataField="Supervisor_LName" HeaderText="" ReadOnly="True" SortExpression="Supervisor_LName" />
            <asp:BoundField DataField="Supervisor_Email" HeaderText="Supervisor Email" ReadOnly="True" SortExpression="Supervisor_Email" />
            <asp:BoundField DataField="OfficeNumber" HeaderText="Supervisor Office Number" ReadOnly="True" SortExpression="OfficeNumber" />
            <asp:BoundField DataField="TA_FName" HeaderText="TA Name" ReadOnly="True" SortExpression="TA_FName" />
            <asp:BoundField DataField="TA_LName" HeaderText="" ReadOnly="True" SortExpression="TA_LName" />
            <asp:BoundField DataField="TA_OfficeNo" HeaderText="TA Office No" ReadOnly="True" SortExpression="TA_OfficeNo" />
            <asp:BoundField DataField="TA_Email" HeaderText="TA Email" ReadOnly="True" SortExpression="TA_Email" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Student_View"></asp:EntityDataSource>
</asp:Content>
