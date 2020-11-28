<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="NewSLHS.StudentDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Student Details</h1>
    <br />
    <br />
    <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="False" DataSourceID="StudentEntityDataSource">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="Student_FName" HeaderText="Student Name" ReadOnly="True" SortExpression="Student_FName" />
            <asp:BoundField DataField="Student_LName" HeaderText="" ReadOnly="True" SortExpression="Student_LName" />
            <asp:BoundField DataField="Section" HeaderText="Section" ReadOnly="True" SortExpression="Section" />
            <asp:BoundField DataField="Supervisor_FName" HeaderText="Supervisor" ReadOnly="True" SortExpression="Supervisor_FName" />
            <asp:BoundField DataField="Supervisor_LName" HeaderText="" ReadOnly="True" SortExpression="Supervisor_LName" />
            <asp:BoundField DataField="TA_FName" HeaderText="TA" ReadOnly="True" SortExpression="TA_FName" />
            <asp:BoundField DataField="TA_LName" HeaderText="" ReadOnly="True" SortExpression="TA_LName" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="StudentEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Student_View" Select="it.[StudentID], it.[Student_FName], it.[Student_LName], it.[Section], it.[Supervisor_FName], it.[Supervisor_LName], it.[TA_FName], it.[TA_LName]"></asp:EntityDataSource>
    <asp:Label Text="text" ID="mm" runat="server" />

</asp:Content>
