<%--Child Page (Part Three) - Part of Client History: it contains info that are specific for a child client --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Child3.aspx.cs" Inherits="NewSLHS.Child3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>

<%--Child Page--%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Child: Part Three</h6>
   </div>

    <br />
    <br />

    <%--Question1: Food--%>
    <asp:Label ID="FoodLabel" runat="server" Text="Does your child have strong food preferences? If yes, please explain.<br>(If no, write No)" CssClass="label6"></asp:Label>
    <asp:TextBox ID="FoodTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />
    
    <%--Question2: Frustration Responeses--%>
    <asp:Label ID="ResponsesLabel" runat="server" Text="If the child is easily frustrated, what are his/her responses to frustration?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="ResponsesTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question3: Frustration Handling--%>
    <asp:Label ID="HandlingLabel" runat="server" Text="How do you handle your child's frustration?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="HandlingTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question4: Family Activities--%>
    <asp:Label ID="ActivitiesLabel" runat="server" Text="What types of activities do you do together as a family?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="ActivitiesTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question5: Hobbies--%>
    <asp:Label ID="HobbiesLabel" runat="server" Text="What are your child's hobbies or favorite activities?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="HobbiesTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Getting Along--%>
    <asp:Label ID="AlongLabel" runat="server" Text="How does your child get along with other family members?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="AlongTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question7: Children--%>
    <asp:Label ID="ChildrenLabel" runat="server" Text="How much of an opportunity does your child have to play with other children<br>of the same age?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="ChildrenTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Buttons--%>
    <div id="ButtonsDiv" class="next-button-div" runat="server">
        <asp:Button ID="SaveButton" CssClass="save-button" runat="server" Text="Save & Continue Later" OnClick="SaveButton_Click" />
        <asp:Button ID="NextButton" CssClass="next-button" runat="server" Text="Next" OnClick="NextButton_Click" />
    </div>

</asp:Content>
