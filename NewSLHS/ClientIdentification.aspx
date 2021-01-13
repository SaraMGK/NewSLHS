<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientIdentification.aspx.cs" Inherits="NewSLHS.ClientIdentification" %>

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
            <li><a href="/ParentalHistory">
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
        <h6 class="client-head">Identification</h6>
    </div>
    <br />
    <br />

    <%----------------------------Identification DetailsView--------------------------------%>
    <%--<div class="detailsView-div">
        <asp:DetailsView CssClass="dfdf" ID="DetailsView1" runat="server" Height="113px" Width="1050px" AutoGenerateRows="False" BorderWidth="1px" CellPadding="4" DataKeyNames="ClientInformationID" DataSourceID="EntityDataSource1" Style="margin-right: 0px" OnModeChanged="Hide_Buttons">
            <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="#663399" CssClass="detailsView-update" />
            <Fields>
                <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-btn" ButtonType="Button">
                    <ControlStyle CssClass="edit-btn"></ControlStyle>
                </asp:CommandField>
                <asp:BoundField DataField="ClientInformationID" HeaderText="ClientInformationID" ReadOnly="True" SortExpression="ClientInformationID" Visible="False" />
                <asp:BoundField DataField="DifficultyDescription" HeaderText="Please describe in your own words, your speech, language or hearing difficulty" SortExpression="DifficultyDescription" />
                <asp:BoundField DataField="CompletionDate" HeaderText="CompletionDate" SortExpression="CompletionDate" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="FileNumber" HeaderText="File Number" SortExpression="FileNumber" />
                <asp:BoundField DataField="Ethincity" HeaderText="Ethincity" SortExpression="Ethincity" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth" SortExpression="DateOfBirth" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Weight" HeaderText="Weight (k.g.)" SortExpression="Weight" />
                <asp:BoundField DataField="Height" HeaderText="Height (cm)" SortExpression="Height" />
                <asp:BoundField DataField="ClientLanguage" HeaderText="Language(s) spoken by client" SortExpression="ClientLanguage" />
                <asp:BoundField DataField="LanguageAtHome" HeaderText="Primary language spoken at home" SortExpression="LanguageAtHome" />
                <asp:BoundField DataField="OtherSiblings" HeaderText="List all siblings" SortExpression="OtherSiblings" />
                <asp:BoundField DataField="SiblingSLPProblems" HeaderText="List any speech and language problems of other children" SortExpression="SiblingSLPProblems" />
                <asp:BoundField DataField="SiblingAcademicDifficulties" HeaderText="List any academic difficulties of the other children" SortExpression="SiblingAcademicDifficulties" />
                <asp:BoundField DataField="OtherPregnancies" HeaderText="Please explain if there have been other pregnancies" SortExpression="OtherPregnancies" />
                <asp:BoundField DataField="AdditionalInformation" HeaderText="AdditionalInformation" SortExpression="AdditionalInformation" Visible="False" />
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" Visible="False" />
                <asp:BoundField DataField="HearingID" HeaderText="HearingID" SortExpression="HearingID" Visible="False" />
                <asp:BoundField DataField="SchoolID" HeaderText="SchoolID" SortExpression="SchoolID" Visible="False" />
                <asp:BoundField DataField="SocialID" HeaderText="SocialID" SortExpression="SocialID" Visible="False" />
                <asp:BoundField DataField="BirthID" HeaderText="BirthID" SortExpression="BirthID" Visible="true" />
                <asp:BoundField DataField="SpeechLanguageID" HeaderText="SpeechLanguageID" SortExpression="SpeechLanguageID" Visible="False" />
                <asp:BoundField DataField="PrimaryPhysician" HeaderText="PrimaryPhysician" SortExpression="PrimaryPhysician" Visible="False" />
                <asp:BoundField DataField="PhysicianAddress" HeaderText="PhysicianAddress" SortExpression="PhysicianAddress" Visible="False" />
                <asp:BoundField DataField="PhysicianPhone" HeaderText="PhysicianPhone" SortExpression="PhysicianPhone" Visible="False" />
                <asp:BoundField DataField="ReferrerName" HeaderText="ReferrerName" SortExpression="ReferrerName" Visible="False" />
                <asp:BoundField DataField="ReferrerPhone" HeaderText="ReferrerPhone" SortExpression="ReferrerPhone" Visible="False" />
                <asp:BoundField DataField="EmergencyContactName" HeaderText="EmergencyContactName" SortExpression="EmergencyContactName" Visible="False" />
                <asp:BoundField DataField="EmergencyContactRelationship" HeaderText="EmergencyContactRelationship" SortExpression="EmergencyContactRelationship" Visible="False" />
                <asp:BoundField DataField="EmergencyContactPhone" HeaderText="EmergencyContactPhone" SortExpression="EmergencyContactPhone" Visible="False" />
                <asp:BoundField DataField="QuestionnaireFillerName" HeaderText="QuestionnaireFillerName" SortExpression="QuestionnaireFillerName" Visible="False" />
                <asp:BoundField DataField="QuestionnaireFillerRelationship" HeaderText="QuestionnaireFillerRelationship" SortExpression="QuestionnaireFillerRelationship" Visible="False" />

                <asp:CommandField ShowInsertButton="True" ControlStyle-CssClass="edit-btn" Visible="False" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
        </asp:DetailsView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Client_Information" EnableUpdate="True" EnableInsert="True" EntityTypeFilter="" Select="" Where="it.ClientID = @ClientIDparam">
            <WhereParameters>
                <asp:QueryStringParameter Name="ClientIDparam" DbType="Int32" QueryStringField="ClientID" />
            </WhereParameters>
        </asp:EntityDataSource>
    </div>--%>

   <%-- <br />
    <br />--%>

    <%--Checkbox DetailsView--%>
    <%-- <div>
        <label class="">Has the client been diagnosed as having any of the following, please choose those that pertain</label>
    </div>--%>

    <%--<asp:DetailsView CssClass="dfdf" ID="DiagnosisDetailsView" runat="server" Height="113px" Width="1050px" AutoGenerateRows="False" DataKeyNames="DiagnosisID" DataSourceID="DiagnosisEntityDataSource" style="margin-right: 0px" OnModeChanged="Hide_Buttons">
        <Fields>
            <%--Edit & Insert Buttons--%>
    <%--<asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="edit-btn" >
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" ControlStyle-CssClass="edit-btn" Visible="False" >
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <%-----Data-----%>
    <%-- <asp:BoundField DataField="DiagnosisID" HeaderText="DiagnosisID" ReadOnly="True" SortExpression="DiagnosisID" Visible="False" />
            <asp:TemplateField ShowHeader="false">
                <ItemTemplate>--%>
    <%-- <table>
                        <tr>
                            <td colspan="2" style="width: 950px !important; color: black; text-align: left">
                                <b>Has the client been diagnosed as having any of the following, please choose those that pertain</b>
                            </td>
                        </tr>--%>
    <%--</table>--%>
    <%-- </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CleftPlatal" SortExpression="CleftPlatal">
                <EditItemTemplate>
                    <asp:Checkbox ID="TextBox1" runat="server" Text='<%# Bind("CleftPlatal") %>'></asp:Checkbox>
                </EditItemTemplate>--%>
    <%--<insertitemtemplate>
                    <asp:Checkbox ID="TextBox1" runat="server" Text='<%# Bind("CleftPlatal") %>'></asp:Checkbox>
                </insertitemtemplate>
    <itemtemplate>
                    <asp:checkbox ID="Label1" runat="server" Text='<%# Bind("CleftPlatal") %>'></asp:checkbox>
                </itemtemplate>--%>
   <%-- </asp:TemplateField>
            <asp:TemplateField HeaderText="CerebalPalsy" SortExpression="CerebalPalsy">
                <edititemtemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CerebalPalsy") %>'></asp:TextBox>
                </edititemtemplate>
                <insertitemtemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CerebalPalsy") %>'></asp:TextBox>
                </insertitemtemplate>
                <itemtemplate>--%>
                    <%--<asp:Label ID="Label2" runat="server" Text='<%# Bind("CerebalPalsy") %>'></asp:Label>
                </itemtemplate>--%>
            <%--</asp:TemplateField>
    <asp:TemplateField HeaderText="MentalRetardation" SortExpression="MentalRetardation">
        <edititemtemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MentalRetardation") %>'></asp:TextBox>
                </edititemtemplate>
        <insertitemtemplate>--%>
                    <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MentalRetardation") %>'></asp:TextBox>
                </insertitemtemplate>
        <itemtemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MentalRetardation") %>'></asp:Label>
                </itemtemplate>--%>
    <%--</asp:TemplateField>
    <asp:TemplateField HeaderText="BrainDysfunction" SortExpression="BrainDysfunction">
        <edititemtemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BrainDysfunction") %>'></asp:TextBox>
                </edititemtemplate>
        <insertitemtemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BrainDysfunction") %>'></asp:TextBox>
                </insertitemtemplate>
        <itemtemplate>--%>
                    <%--<asp:Label ID="Label4" runat="server" Text='<%# Bind("BrainDysfunction") %>'></asp:Label>
                </itemtemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="DownSyndrome" SortExpression="DownSyndrome">
        <edititemtemplate>--%>
<%--                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DownSyndrome") %>'></asp:TextBox>--%>
<%--                </edititemtemplate>--%>
<%--        <insertitemtemplate>--%>
                    <%--<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DownSyndrome") %>'></asp:TextBox>
                </insertitemtemplate>--%>
<%--        <itemtemplate>--%>
                   <%-- <asp:Label ID="Label5" runat="server" Text='<%# Bind("DownSyndrome") %>'></asp:Label>
                </itemtemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="DefectsNoseThroatEars" SortExpression="DefectsNoseThroatEars">
        <edititemtemplate>--%>
                    <%--<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DefectsNoseThroatEars") %>'></asp:TextBox>
                </edititemtemplate>
        <insertitemtemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DefectsNoseThroatEars") %>'></asp:TextBox>
                </insertitemtemplate>
        <itemtemplate>--%>
                   <%-- <asp:Label ID="Label6" runat="server" Text='<%# Bind("DefectsNoseThroatEars") %>'></asp:Label>
                </itemtemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Other" SortExpression="Other">
        <edititemtemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Other") %>'></asp:TextBox>
                </edititemtemplate>--%>
        <%--<insertitemtemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Other") %>'></asp:TextBox>
                </insertitemtemplate>
        <itemtemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Other") %>'></asp:Label>
                </itemtemplate>
    </asp:TemplateField>
    </Fields>
    </asp:DetailsView>--%>
<%--    <asp:EntityDataSource ID="DiagnosisEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Diagnosis" EnableInsert="True" EnableUpdate="True"></asp:EntityDataSource>--%>

    <%----%>
 <%--   <script> 
        var second = document.querySelector(".dfdf tr:nth-child(n+2)")
        console.log(second)
   <%-- </script>--%>

<%--    <%--Button--%>
    <%--<div id="ButtonsDiv" class="next-button-div" runat="server">--%>
     <%--dd  <button class="save-button">Save & Continue Later</button>--%>
               <%--<button class="next-button">Next</button>--%>
      <%--  <asp:Button ID="NextButton" runat="server" Text="Next" CssClass="next-button" OnClick="NextButton_Click" />--%>
 <%--  </div>--%>

        
 <%-----------form----------%>
    <form>
        <table class="form-table" style="width: 90%;">
            <tr>
                <td style="padding-bottom:10px; width: 251px;" class="td-class"><asp:Label ID="FNumLb" runat="server" Text="File Number" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="FNumTxt" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            
            <tr> 
                <td style="width: 251px"><asp:Label ID="EthinciiyLb" runat="server" Text="Ethincity" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="EthincityTxt" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 251px"><asp:Label ID="DoBLb" runat="server" Text="Date of Birth" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="DoBTxt" runat="server" CssClass="option2" TextMode="Date"></asp:TextBox></td>

                <td style="width: 173px"><asp:Label ID="GenderLb" runat="server" Text="Gender" CssClass="label2"></asp:Label></td>
                <td><asp:DropDownList ID="GenderDropDownList" runat="server"  CssClass="option2">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 251px"><asp:Label ID="WeightLb" runat="server" Text="Weight (k.g.)" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="WeightTxt" runat="server" CssClass="option2" TextMode="Number"></asp:TextBox></td>

                <td style="width: 173px"><asp:Label ID="HeightLb" runat="server" Text="Height (cm)" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="HeightTxt" runat="server" CssClass="option2" TextMode="Number"></asp:TextBox></td>
            </tr>
            <%------Language Section------%>
            <tr>
                <td style="width: 251px"><asp:Label style="padding-bottom: 25px" ID="LanguageLabel" runat="server" Text="Language" CssClass="label2"></asp:Label></td>
                
                <td style="width: 190px"><asp:TextBox ID="ClLanTxt" runat="server" CssClass="option2"></asp:TextBox> 
                    <asp:Label Text="Client's Language" runat="server" CssClass="address-title" />
                </td>
                <td style="width: 173px"></td>
                <td style="width: 347px"><asp:TextBox ID="HomeLanTxt" runat="server" CssClass="option2" style="margin-bottom: 8px;"></asp:TextBox>
                    <asp:Label Text="Language Spoken at Home" runat="server" CssClass="address-title" />
                </td>

            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label Text="List all siblings" runat="server" CssClass="label6" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="SiblingTxt" runat="server" CssClass="text-box2" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="ProblemLb" runat="server" CssClass="label6" Text="List any speech and language problems of other children"></asp:Label>
                    <asp:TextBox ID="ProblemTxt" CssClass="text-box2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="AcaLb" runat="server" CssClass="label6" Text="List any academic difficulties of the other children"></asp:Label>
                    <asp:TextBox ID="AcaTxt" CssClass="text-box2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="PregLb" runat="server" CssClass="label6" Text="Please explain if there have been other pregnancies"></asp:Label>
                    <asp:TextBox ID="PregTxt" CssClass="text-box2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
                <%--Diagnosis--%>
            <tr>
                <td colspan="4">
                    <asp:Label ID="DiagnosisLb" runat="server"  CssClass="label6" Text="Has the client been diagnosed as having any of the following, please choose those that pertain:"></asp:Label>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CleftCheckBox" runat="server" Text="Cleft Palate" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CerebralCheckBox" runat="server" Text="Cerebral Palsy" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="MentalCheckBox" runat="server" Text="Mental Retardation" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="BrainCheckBox" runat="server" Text="Minimal Brain Dysfunction" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="DownCheckBox" runat="server" Text="Down Syndrome" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="ThroatCheckBox" runat="server" Text="Defects of the nose, throat, or ears" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="OtherCheckBox" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="OtherTxt" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
        </table>

    </form>


</asp:Content>
