<%--Birth Page
    Part of Client History
    It contains birth information --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Birth.aspx.cs" Inherits="NewSLHS.Birth" %>

<%--Client Tabs--%>
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
                     <li><a href="/Child">
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

<%--Page Content--%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Birth History</h6>
   </div>


    <br />
    <br />

    <%-- Question 1: Pregnancy Length--%>
<%--    <div>
        <asp:Label ID="PregnancyLabel" runat="server" Text="Pregnancy Length" CssClass="label4"></asp:Label>
        <asp:TextBox ID="PregnancyTextBox" runat="server" CssClass="child-input"></asp:TextBox>
    </div>--%>
    
    <%-- Question 2: Birth Weight--%>
<%--    <div>
        <asp:Label ID="WeightLabel" runat="server" Text="Birth Weight (k.g.)" CssClass="label4"></asp:Label>
        <asp:TextBox ID="WeightTextBox" runat="server" CssClass="child-input"></asp:TextBox>
    </div>
    <br />--%>

    <%--Question3: Prenatal Condition--%>
<%--    <asp:Label ID="PrenatalLabel" runat="server" Text="During Pregnancy, did the mother experience any condition, accident, or <br/> extraordinary prenatal symptoms? If yes, please explain. " CssClass="label6"></asp:Label>
    <asp:TextBox ID="PrenatalTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />--%>
    
    <%--Question4: Medication--%>
<%--    <asp:Label ID="MedicationLabel" runat="server" Text="Was any medication taken during pregnancy? If yes, what kind? " CssClass="label6"></asp:Label>
    <asp:TextBox ID="MedicationTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />--%>

    <%--Question5: Anesthetics--%>
<%--    <asp:Label ID="AnestheticsLabel" runat="server" Text="Were any drugs or anesthetics used during labor? If yes, which kind?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="AnestheticsTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />--%>

    <%--Question6: Delivery Problems--%>
<%--    <asp:Label ID="ProblemLabel" runat="server" Text="Were any problems with the delivery, such as breech birth, caesarean section,<br> induced labor, forceps delivery, etc.? If so, please describe." CssClass="label6"></asp:Label>
    <asp:TextBox ID="ProblemTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />--%>

        <%--Button--%>
<%--    <div id="Div1" class="next-button-div" runat="server">
        <asp:Button ID="NextButton" runat="server" Text="Next" CssClass="next-button" OnClick="NextButton_Click" />
    </div>--%>

    <%--Button--%>
    <div id="ButtonsDiv" class="next-button-div" runat="server">
        <button class="save-button">Save & Continue Later</button>
        <button class="next-button">Next</button>
    </div>



    <asp:DetailsView CssClass="dfdf" ID="BirthDetailsView" runat="server" Height="113px" Width="1050px" DataSourceID="BirthEntityDataSource" style="margin-right: 0px" OnModeChanged="Hide_Buttons" AutoGenerateRows="False" DataKeyNames="BirthID">
        <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="#663399" CssClass="detailsView-update" />
        <Fields>
            <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="edit-btn" />
            <asp:BoundField DataField="BirthID" HeaderText="BirthID" ReadOnly="True" SortExpression="BirthID" Visible="False" />
            <asp:BoundField DataField="PregnancyLength" HeaderText="Pregnancy Length" SortExpression="PregnancyLength" />
            <asp:BoundField DataField="BirthWeight" HeaderText="Birth Weight (k.g.)" SortExpression="BirthWeight" />
            <asp:BoundField DataField="PregnancyAccident" HeaderText="During Pregnancy, did the mother experience any condition, accident, or extraordinary prenatal symptoms? If yes, please explain." SortExpression="PregnancyAccident" />
            <asp:BoundField DataField="PregnancyMedication" HeaderText="Was any medication taken during pregnancy? If yes, what kind?" SortExpression="PregnancyMedication" />
            <asp:BoundField DataField="LaborAnesthetics" HeaderText="Were any drugs or anesthetics used during labor? If yes, which kind?" SortExpression="LaborAnesthetics" />
            <asp:BoundField DataField="DeliveryProblems" HeaderText="Were any problems with the delivery, such as breech birth, caesarean section, induced labor, forceps delivery, etc.? If so, please describe." SortExpression="DeliveryProblems" />
            <asp:CommandField ShowInsertButton="True" Visible="False" FooterStyle-CssClass="edit-btn" />
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="BirthEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Births" EnableUpdate="True" EnableInsert="True" EntityTypeFilter="" Select="" Where="it.BirthID = @BirthIDparam">
        <WhereParameters>
            <asp:QueryStringParameter Name="BirthIDparam" DbType="Int32" QueryStringField="BirthID" />
        </WhereParameters>
    </asp:EntityDataSource>

     <script>
        var second = document.querySelector(".dfdf tr:nth-child(n+2)")
        console.log(second) 
     </script>

    


</asp:Content>
