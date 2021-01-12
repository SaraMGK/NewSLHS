<%--Child Page (Part Two)- Part of Client History: it contains info that are specific for a child client --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Child2.aspx.cs" Inherits="NewSLHS.Child2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
    <div class="sidebar2">
                     <ul class="tt">
                     <li><a href="/ClientGeneralInformation">
                        <span class="tab">General Information</span></a>
                     </li>
                     <li><a href="/ClientIdentification">
                        <span class="tab">Identification</span></a>
                     </li>
                     <li><a href="/Birth">
                        <span class="tab">Birth History</span></a>
                     </li>
                     <li><a href="/Adult">
                        <span class="tab">Adult</span></a>
                     </li>
                     <li><a href="/child">
                        <span class="tab">Child</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Parental History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Health History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Physician Information</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Motor Development</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Speech & Language</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Hearing History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">School History</span></a>
                     </li>
                     <li><a href="/">
                        <span class="tab">Social History</span></a>
                     </li>
                </ul>
      </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Child: Part Two</h6>
   </div>

    <br />
    <br />

    <%--Question 1: Babbling--%>
    <asp:Label ID="BabblingLabel" runat="server" Text="Does your child turn the radio or TV up louder?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="BabblingRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question 2: Head Turning--%>
    <asp:Label ID="HeadLabel" runat="server" Text="Does your child turn his head when being spoken to?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="HeadRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question 3: Teacher--%>
    <asp:Label ID="TeacherLabel" runat="server" Text="Has the teacher indicated any hearing problem in class?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="TeacherRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question 4: Academic Progress--%>
    <asp:Label ID="Label1" runat="server" Text="Is your child’s academic progress up to your expectations?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question5: Favorite Subject--%>
    <asp:Label ID="DescriptionLabel" runat="server" Text="What is your child’s favorite subject(s)?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question5: Part 2--%>
    <asp:Label ID="Label2" runat="server" Text="Why?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Least Favorite Subject--%>
    <asp:Label ID="Label3" runat="server" Text="What is your child’s least favorite subject(s)?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Part 2--%>
    <asp:Label ID="Label4" runat="server" Text="Why?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question 7: Special Services--%>
    <asp:Label ID="ServiceLabel" runat="server" Text="Are special services available to your child within his/her school?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="ServiceRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />


    <%--Buttons--%>
    <div id="ButtonsDiv" class="next-button-div" runat="server">
        <asp:Button ID="SaveButton" CssClass="save-button" runat="server" Text="Save & Continue Later" OnClick="SaveButton_Click" />
        <asp:Button ID="NextButton" CssClass="next-button" runat="server" Text="Next" OnClick="NextButton_Click" />
    </div>

    <%--Yes / No Entity Data Source--%>
    <asp:EntityDataSource ID="YesNoEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
    
</asp:Content>
