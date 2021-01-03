 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adult.aspx.cs" Inherits="NewSLHS.Adult" %>
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
                     <li><a href="/">
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

    <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Adult</h6>
   </div>

    <br />
    <br />
    <table class="w-100" style="margin-left: 30px;">
        <tr style="height: 40px;">
            <td style="width: 300px">Marital Status<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="MaritalStatusEntityDataSource" DataTextField="MartialStatus" DataValueField="MaritalStatusID" CssClass="option3">
                </asp:DropDownList>
            </td>
            <td style="width: 202px">
                &nbsp;</td>
        </tr>
        <tr style="height: 40px;">
            <td style="width: 300px">Does the client become easily frustrated?</td>
            <td style="width: 202px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 18px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button">
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr style="height: 30px;">
            <td colspan="2" style="height: 18px; padding-top: 15px; padding-bottom: 2px;">
                If the client is easily frustrated, how does he/she deal with their frustration?</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="text-boxes" TextMode="MultiLine" Width="491px"></asp:TextBox>
            </td>
        </tr>
    </table>

    <br />
    <br />
    <br />

    <%--Adult DetailsView--%>
    <asp:DetailsView ID="AdultDetailsView" runat="server" Height="113px" Width="1050px" DataSourceID="MaritalStatusEntityDataSource" Visible="False"></asp:DetailsView>
    <asp:EntityDataSource ID="AdultEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Adults"></asp:EntityDataSource>
    
    <asp:EntityDataSource ID="YesNoEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
    <asp:EntityDataSource ID="MaritalStatusEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Marital_Status"></asp:EntityDataSource>
    <asp:EntityDataSource ID="FrustrationEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Socials"></asp:EntityDataSource>

    <%--Button--%>
    <div id="ButtonsDiv" class="next-button-div" runat="server">
        <button class="save-button">Save & Continue Later</button>
        <button class="next-button">Next</button>
    </div>



</asp:Content>
