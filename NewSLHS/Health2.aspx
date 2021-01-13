<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Health2.aspx.cs" Inherits="NewSLHS.Health2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Child: Part One</h6>
   </div>

    <br />
    <br />

    <%--Question 1: Eating Difficulties--%>
    <asp:Label ID="EatingLb" runat="server" Text="Does the client have any feeding or eating difficulties? If yes, please describe.<br/>(If no, write No)" CssClass="label6"></asp:Label>
    <asp:TextBox ID="EatingTxt" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question 2: Food Allergy--%>
    <asp:Label ID="AllergyLb" runat="server" Text="Does the client have any food allergies? If yes, please describe.<br/>(If no, write No)" CssClass="label6"></asp:Label>
    <asp:TextBox ID="AllergyTxt" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question 3: Examination & Treatment--%>
    <asp:Label ID="ExaminationLb" runat="server" Text="Please indicate below which of the examinations or treatment you have received:" CssClass="label6"></asp:Label>
    
    <asp:RadioButton ID="YesRadioButton" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" OnCheckedChanged="YesRadioButton_CheckedChanged" />
    <asp:RadioButton ID="NoRadioButton" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" OnCheckedChanged="NoRadioButton_CheckedChanged" />
    
    <%--<asp:RadioButtonList ID="YesNoRadioButtonList" runat="server" CssClass="radio-button2">
        <asp:ListItem Value="Yes">Yes</asp:ListItem>
        <asp:ListItem Value="no">No</asp:ListItem>
    </asp:RadioButtonList>--%>
    <%--<asp:RadioButtonList ID="YesNoRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <asp:EntityDataSource ID="YesNoEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
    <br /> --%>
    <asp:Panel ID="ExaminationPanel" runat="server" Visible="false">
        <asp:TextBox Id="tsssxt" runat="server"></asp:TextBox>
    </asp:Panel>

</asp:Content>
