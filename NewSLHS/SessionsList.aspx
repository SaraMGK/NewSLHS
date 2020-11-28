<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SessionsList.aspx.cs" Inherits="NewSLHS.SessionsList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>&nbsp;Sessions List</h1>
    <br />
    <br />

    <button class="request-button">New Session</button>

    <asp:GridView ID="SessionsGridView" runat="server" AutoGenerateColumns="False"  CssClass="session-gridView" DataSourceID="SessionsEntityDataSource">
        <AlternatingRowStyle BackColor="#fbfbfb" />
        <Columns>
            <asp:BoundField DataField="SessionID" HeaderText="Session" ReadOnly="True" SortExpression="SessionID" />
            <asp:BoundField DataField="Client_FName" HeaderText="Client" ReadOnly="True" SortExpression="Client_FName" />
            <asp:BoundField DataField="Client_LName" HeaderText="" ReadOnly="True" SortExpression="Client_LName" />
            <asp:BoundField DataField="EvaluationScore" HeaderText="Score" ReadOnly="True" SortExpression="EvaluationScore" />
            <asp:BoundField DataField="SessionDate" HeaderText="Session Date" ReadOnly="True" SortExpression="SessionDate" />
            <asp:CommandField SelectText="View" ControlStyle-CssClass="" ShowSelectButton="True" />
        </Columns>
        <RowStyle BackColor="#fbfbfb" />
        <HeaderStyle BackColor="#0D7E75" Font-Bold="True" ForeColor="White" />

    </asp:GridView>
    <asp:EntityDataSource ID="SessionsEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Session_View" Select="it.[SessionID], it.[Client_FName], it.[Client_LName], it.[EvaluationScore], it.[SessionDate]"></asp:EntityDataSource>

</asp:Content>
