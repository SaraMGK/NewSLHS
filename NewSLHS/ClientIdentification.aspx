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
                     <li><a href="/">
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
       <h6 class="client-head">Identification</h6>
   </div>
   

    <hr>

    <%----------------------------Identification DetailsView--------------------------------%>
    <div class="detailsView-div">
        <asp:DetailsView CssClass="dfdf" ID="DetailsView1" runat="server" Height="113px" Width="1050px" AutoGenerateRows="False" BorderWidth="1px" CellPadding="4" DataKeyNames="ClientInformationID" DataSourceID="EntityDataSource1" style="margin-right: 0px" OnModeChanged="Hide_Buttons">
        <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="#663399" CssClass="detailsView-update" />
        <Fields>
            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-btn" ButtonType="Button">
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <asp:BoundField DataField="ClientInformationID" HeaderText="ClientInformationID" ReadOnly="True" SortExpression="ClientInformationID" Visible="False" />
            <asp:BoundField DataField="DifficultyDescription" HeaderText="Please describe in your own words, your speech, language or hearing difficulty" SortExpression="DifficultyDescription" />
            <asp:BoundField DataField="CompletionDate" HeaderText="CompletionDate" SortExpression="CompletionDate" />
            <asp:BoundField DataField="FileNumber" HeaderText="File Number" SortExpression="FileNumber" />
            <asp:BoundField DataField="Ethincity" HeaderText="Ethincity" SortExpression="Ethincity" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth" SortExpression="DateOfBirth" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Weight" HeaderText="Weight (k.g.)" SortExpression="Weight" />
            <asp:BoundField DataField="Height" HeaderText="Height (cm)" SortExpression="Height" />
            <asp:BoundField DataField="ClientLanguage" HeaderText="Language" SortExpression="ClientLanguage" />
            <asp:BoundField DataField="LanguageAtHome" HeaderText="" SortExpression="LanguageAtHome" />
            <asp:BoundField DataField="OtherSiblings" HeaderText="List all siblings" SortExpression="OtherSiblings" />
            <asp:BoundField DataField="SiblingSLPProblems" HeaderText="List any speech and language problems of other children" SortExpression="SiblingSLPProblems" />
            <asp:BoundField DataField="SiblingAcademicDifficulties" HeaderText="List any academic difficulties of the other children" SortExpression="SiblingAcademicDifficulties" />
            <asp:BoundField DataField="OtherPregnancies" HeaderText="Please explain if there have been other pregnancies" SortExpression="OtherPregnancies" />
            <asp:BoundField DataField="AdditionalInformation" HeaderText="AdditionalInformation" SortExpression="AdditionalInformation" Visible="False" />
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" Visible="False" />
            <asp:BoundField DataField="HearingID" HeaderText="HearingID" SortExpression="HearingID" Visible="False" />
            <asp:BoundField DataField="SchoolID" HeaderText="SchoolID" SortExpression="SchoolID" Visible="False" />
            <asp:BoundField DataField="SocialID" HeaderText="SocialID" SortExpression="SocialID" Visible="False" />
            <asp:BoundField DataField="BirthID" HeaderText="BirthID" SortExpression="BirthID" Visible="False" />
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
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Client_Information" EnableUpdate="True" EnableInsert="True"></asp:EntityDataSource>
    </div>

    <br />
    <br />

    <%--Checkbox DetailsView--%>
   <%-- <div>
        <label class="">Has the client been diagnosed as having any of the following, please choose those that pertain</label>
    </div>--%>

    <asp:DetailsView CssClass="dfdf" ID="DiagnosisDetailsView" runat="server" Height="113px" Width="1050px" AutoGenerateRows="False" DataKeyNames="DiagnosisID" DataSourceID="DiagnosisEntityDataSource" style="margin-right: 0px" OnModeChanged="Hide_Buttons">
        <Fields>
            <%--Edit & Insert Buttons--%>
             <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="edit-btn" >
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" ControlStyle-CssClass="edit-btn" Visible="False" >
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <%-----Data-----%>
            <asp:BoundField DataField="DiagnosisID" HeaderText="DiagnosisID" ReadOnly="True" SortExpression="DiagnosisID" Visible="False" />
            <asp:TemplateField ShowHeader="false">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td colspan="2" style="width: 950px !important; color: black; text-align: left">
                                <b>Has the client been diagnosed as having any of the following, please choose those that pertain</b>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CleftPlatal" SortExpression="CleftPlatal">
                <EditItemTemplate>
                    <asp:Checkbox ID="TextBox1" runat="server" Text='<%# Bind("CleftPlatal") %>'></asp:Checkbox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Checkbox ID="TextBox1" runat="server" Text='<%# Bind("CleftPlatal") %>'></asp:Checkbox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:checkbox ID="Label1" runat="server" Text='<%# Bind("CleftPlatal") %>'></asp:checkbox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CerebalPalsy" SortExpression="CerebalPalsy">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CerebalPalsy") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CerebalPalsy") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CerebalPalsy") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MentalRetardation" SortExpression="MentalRetardation">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MentalRetardation") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MentalRetardation") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MentalRetardation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BrainDysfunction" SortExpression="BrainDysfunction">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BrainDysfunction") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BrainDysfunction") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("BrainDysfunction") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DownSyndrome" SortExpression="DownSyndrome">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DownSyndrome") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DownSyndrome") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("DownSyndrome") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DefectsNoseThroatEars" SortExpression="DefectsNoseThroatEars">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DefectsNoseThroatEars") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DefectsNoseThroatEars") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("DefectsNoseThroatEars") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Other" SortExpression="Other">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Other") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Other") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Other") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="DiagnosisEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Diagnosis" EnableInsert="True" EnableUpdate="True"></asp:EntityDataSource>
       
    
    <script> 
        var second = document.querySelector(".dfdf tr:nth-child(n+2)")
        console.log(second) 
    </script>

    <%--Button--%>
    <div id="ButtonsDiv" class="next-button-div" runat="server">
        <button class="save-button">Save & Continue Later</button>
        <button class="next-button">Next</button>
    </div>


</asp:Content>
