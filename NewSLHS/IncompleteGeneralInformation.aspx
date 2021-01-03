<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IncompleteGeneralInformation.aspx.cs" Inherits="NewSLHS.GeneralInfoTEST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


    <asp:DetailsView ID="NameDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ClientID" DataSourceID="NameEntityDataSource">
        <Fields>
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" SortExpression="ClientID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" SortExpression="AddressID" />
            <asp:CommandField ShowEditButton="True" UpdateText="Save" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SLHSClinicConnectionString %>" SelectCommand="SELECT * FROM [Client] WHERE ([AddressID] IS NULL)">
    </asp:SqlDataSource>

    <asp:EntityDataSource ID="NameEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Clients" Where="it.ClientID = @ClientIDparam">
        <WhereParameters>
            <asp:QueryStringParameter Name="ClientIDparam" DbType="Int32" QueryStringField="ClientID" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>
