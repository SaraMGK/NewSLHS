<%--Child Page- Part of Client History: it contains info that are specific for a child client --%>

<%@ Page Title="Child" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Child.aspx.cs" Inherits="NewSLHS.Child" %>


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


<%--Child Page--%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Child: Part One</h6>
   </div>

    <br />
    <br />

    <%-- Question 1: Labor Duration--%>
    <div>
        <asp:Label ID="LaborLabel" runat="server" Text="Duration of Labor" CssClass="label4"></asp:Label>
        <asp:TextBox ID="LaborTextBox" runat="server" CssClass="child-input"></asp:TextBox>
    </div>
    <br />

    <%--Question 2: Child Scale--%>  
        <asp:Label ID="Question2Label" runat="server" Text="During the first year, other than crying, would you say the child was" style="margin-left: 16px"></asp:Label>
    <br />

        <table class="w-100">
            <tr>
                <%--First Cell--%>
                <td style="width: 100px; text-align:right; height: 29px;">
                    <asp:Label ID="Label6" runat="server" Text="(Silent)" style="font-weight:bold"></asp:Label>
                </td>
                <%--Second Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label1" runat="server" Text="1" CssClass="label3"></asp:Label>
                </td>
                <%--Third Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label2" runat="server" Text="2" CssClass="label3"></asp:Label>
                </td>
                <%--Fourth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label3" runat="server" Text="3" CssClass="label3"></asp:Label>
                </td>
                <%--Fifth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label4" runat="server" Text="4" CssClass="label3"></asp:Label>
                </td>
                <%--Sixth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label5" runat="server" Text="5" CssClass="label3"></asp:Label>
                </td>
                <%--Last Cell--%>
                <td style="width: 100px; text-align:left; height: 29px;">
                    <asp:Label ID="Label7" runat="server" Text="(Very Noisy)" style="font-weight:bold"></asp:Label>
                </td>
            </tr>
            <%--radio buttons row--%>
            <tr>
                <td style="width: 100px; text-align:center"></td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="test" ValidationGroup="Scale" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton2" runat="server" ValidationGroup="Scale" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="test" />
                </td>
                <td></td>
            </tr>
        </table>
    <br />

    <%--Question 3: Babbling--%>
    <asp:Label ID="Label8" runat="server" Text="Did the child babble and make sounds as an infant?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <asp:EntityDataSource ID="YesNoEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
    <br />

    <%--Question 4: Age & Activity--%>
    <asp:Label ID="Q4Label" runat="server" Text="At what age did the child begin to" style="margin-left: 16px"></asp:Label>

        <table align="right" class="w-100" style="margin-top:5px;">
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="ImitateLabel" runat="server" Text="Imitate Words" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="ImitateTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 200px">
                    <asp:Label ID="UseLabel" runat="server" Text="Use Single Words" CssClass="label5"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="UseTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="PhraseLabel" runat="server" Text="Use Phrases" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="PhraseTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 200px">
                    <asp:Label ID="SentenceLabel" runat="server" Text="Use Complete Sentences" CssClass="label5"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="SitLabel" runat="server" Text="Sit Alone" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 150px">
                    <asp:Label ID="WalingLabel" runat="server" Text="Begin Walking" CssClass="label5"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="WalkingTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="Label12" runat="server" Text="Stand Up" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 150px"></td>
                <td></td>
            </tr>
        </table>
    <br />

    <%--Question 5: Speech Development--%>
    <asp:Label ID="Q5Label" runat="server" Text="Did Speech development ever seem to stop for a period?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="Q5RadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>

    <%--Question5: part2--%>
   <div>
        <asp:Label ID="Label9" runat="server" Text="If yes, when?" CssClass="label4" style="width: 110px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="child-input"></asp:TextBox>
    </div>
    <br />

    <%--Question5: part3--%>
    <asp:Label ID="DescriptionLabel" runat="server" Text="Please describe" CssClass="label6"></asp:Label>
    <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Typical Sentence--%>
    <asp:Label ID="TypicalLabel" runat="server" Text="Please give examples of your child's typical sentences" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TypicalTextBox" runat="server" Width="491px" CssClass="text-box2" TextMode="MultiLine"></asp:TextBox> 
    <br />

    <%--Question7: Longest Sentence--%>
    <asp:Label ID="LongestLabel" runat="server" Text="Please give examples of your child's longest sentences" CssClass="label6"></asp:Label>
    <asp:TextBox ID="LongestTextBox" runat="server" Width="491px" CssClass="text-box2" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question8: Attending School--%>
    <asp:Label ID="SchoolLabel" runat="server" Text="Does your child attend daycare/preschool?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>

    <%--Question8: Part 2--%>
       <div>
        <asp:Label ID="SchoolLabel2" runat="server" Text="If yes, where?" CssClass="label4" style="width: 110px"></asp:Label>
        <asp:TextBox ID="SchoolTextBox" runat="server" CssClass="child-input"></asp:TextBox>
    </div>

    <%--Buttons--%>
    <div id="ButtonsDiv" class="next-button-div" runat="server">
        <asp:Button ID="SaveButton" CssClass="save-button" runat="server" Text="Save & Continue Later" OnClick="SaveButton_Click" />
        <asp:Button ID="NextButton" CssClass="next-button" runat="server" Text="Next" OnClick="NextButton_Click" />
    </div>




    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server"></asp:EntityDataSource>
</asp:Content>
