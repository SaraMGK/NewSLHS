<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientGeneralInformation.aspx.cs" Inherits="NewSLHS.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">General Information</h6>
   </div>
   

    <hr>

    <%----------------------------Name Info DetailsView--------------------------------%>
    <div class="detailsView-div">
        <asp:DetailsView CssClass="dfdf" ID="DetailsView" runat="server" Height="113px" Width="1150px" AutoGenerateRows="False" DataSourceID="EntityDataSource" DataKeyNames="ClientID" BorderWidth="1px" CellPadding="4" style="margin-right: 0px" OnModeChanged="Hide_Buttons">
        <EditRowStyle BackColor="white" Font-Bold="True" ForeColor="#663399" CssClass="detailsView-update" />
        <Fields>
<%--            <asp:CommandField ShowInsertButton="True" />--%>
            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-btn" ButtonType="Button" >
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" SortExpression="ClientID" Visible="False" />
            <%------------first Name------------%>
            <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="FNTextBox" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="FNRequiredFieldValidator" runat="server" ControlToValidate="FNTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Wrong Format" ControlToValidate="FNTextBox" ValidationExpression="^[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="FNTextBox" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="FNInsertRequiredFieldValidator" runat="server" ControlToValidate="FNTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="FNInsertRegularExpressionValidator" runat="server" ErrorMessage="Wrong Format" ControlToValidate="FNTextBox" ValidationExpression="^[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%-------------middle Name-----------%>
            <asp:TemplateField HeaderText="Middle Name" SortExpression="MiddleName">
                <EditItemTemplate>
                    <asp:TextBox ID="MNTextBox" runat="server" Text='<%# Bind("MiddleName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="MNRequiredFieldValidator" runat="server" ControlToValidate="MNTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="MNRegularExpressionValidator" runat="server" ErrorMessage="Wrong Format" ControlToValidate="MNTextBox" ValidationExpression="^[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="MNTextBox" runat="server" Text='<%# Bind("MiddleName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="MNInsertRequiredFieldValidator" runat="server" ControlToValidate="MNTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="MNInsertRegularExpressionValidator" runat="server" ErrorMessage="Wrong Format" ControlToValidate="MNTextBox" ValidationExpression="^[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MiddleName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%-------------Last Name-------------%>
            <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="LNTextBox" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="LNRequiredFieldValidator" runat="server" ControlToValidate="LNTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="LNRegularExpressionValidator" runat="server" ErrorMessage="Wrong Format" ControlToValidate="LNTextBox" ValidationExpression="^[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>

                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="LNTextBox" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="LNInsertRequiredFieldValidator" runat="server" ControlToValidate="LNTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="LNInsertRegularExpressionValidator" runat="server" ErrorMessage="Wrong Format" ControlToValidate="LNTextBox" ValidationExpression="^[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%----------------Email---------------%>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Email format is incorrect" ControlToValidate="EmailTextBox" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="EmailInsertRequiredFieldValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailInsertRegularExpressionValidator" runat="server" ErrorMessage="Email format is incorrect" ControlToValidate="EmailTextBox" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%---------------Mobile--------------%>
            <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                <EditItemTemplate>
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="MobileRequiredFieldValidator" runat="server" ControlToValidate="MobileTextBox" ErrorMessage="Mobile field is required" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="MobileRegularExpressionValidator" runat="server" ErrorMessage="Email format is incorrect" ControlToValidate="MobileTextBox" Text="!" ValidationExpression="^\+9665[0-9]{8}$"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="MobileInsertRequiredFieldValidator" runat="server" ControlToValidate="MobileTextBox" ErrorMessage="Mobile field is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="MobileInsertRegularExpressionValidator" runat="server" ErrorMessage="Email format is incorrect" ControlToValidate="MobileTextBox" ValidationExpression="^\+9665[0-9]{8}$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" ReadOnly="False" SortExpression="AddressID" Visible="False" />
        </Fields>
        <FooterStyle BackColor="white" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="white" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:DetailsView>
    </div>
    <asp:EntityDataSource ID="EntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EntitySetName="Clients" EnableInsert="True" EnableUpdate="True" ></asp:EntityDataSource>
    
    <hr>
   <%----- Address Header-----%>
    <div>
        <label class="address-header">Address</label>
    </div>

    <%--------------------------------Address DetailsView--------------------------------%>
    <asp:DetailsView ID="AddressDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="AddressID" DataSourceID="AddressEntityDataSource" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="dfdf" OnModeChanged="Hide_Buttons">
        <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="#663399" CssClass="detailsView-update" />
        <Fields>
           <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-btn" ButtonType="Button">
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" ReadOnly="True" SortExpression="AddressID" Visible="False" />
<%--            <asp:CommandField ShowInsertButton="True" />--%>
            <asp:TemplateField HeaderText="Building Number" SortExpression="BuildingNumber">
                <EditItemTemplate>
                    <asp:TextBox ID="BNTextBox" runat="server" Text='<%# Bind("BuildingNumber") %>'></asp:TextBox>  <asp:RequiredFieldValidator ID="BNRequiredFieldValidator" runat="server" ControlToValidate="BNTextBox" ErrorMessage="Building Number is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="BNRegularExpressionValidator" runat="server" ErrorMessage="Enter numbers only" ControlToValidate="BNTextBox" ValidationExpression="^\d+" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="BNTextBox" runat="server" Text='<%# Bind("BuildingNumber") %>'></asp:TextBox>  <asp:RequiredFieldValidator ID="BNInsertRequiredFieldValidator" runat="server" ControlToValidate="BNTextBox" ErrorMessage="Building Number is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="BNInsertRegularExpressionValidator" runat="server" ErrorMessage="Enter numbers only" ControlToValidate="BNTextBox" ValidationExpression="^\d+" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("BuildingNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%---------Street Name-------%>
            <asp:TemplateField HeaderText="Street Name" SortExpression="StreetName">
                <EditItemTemplate>
                    <asp:TextBox ID="StTextBox" runat="server" Text='<%# Bind("StreetName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="StRequiredFieldValidator" runat="server" ControlToValidate="StTextBox" ErrorMessage="Street Name is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="StRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="StTextBox" ValidationExpression="[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="StTextBox" runat="server" Text='<%# Bind("StreetName") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="StInsertRequiredFieldValidator" runat="server" ControlToValidate="StTextBox" ErrorMessage="Street Name is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="StInsertRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="StTextBox" ValidationExpression="[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="StLabel" runat="server" Text='<%# Bind("StreetName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%----------District---------%>
            <asp:TemplateField HeaderText="District" SortExpression="District">
                <EditItemTemplate>
                    <asp:TextBox ID="DistTextBox" runat="server" Text='<%# Bind("District") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="DistRequiredFieldValidator" runat="server" ControlToValidate="DistTextBox" ErrorMessage="District is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="DistRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="DistTextBox" ValidationExpression="[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="DistTextBox" runat="server" Text='<%# Bind("District") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="DistInsertRequiredFieldValidator" runat="server" ControlToValidate="DistTextBox" ErrorMessage="District is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="DistInsertRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="DistTextBox" ValidationExpression="[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="DistLabel" runat="server" Text='<%# Bind("District") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%------------City---------%>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="CityRequiredFieldValidator" runat="server" ControlToValidate="CityTextBox" ErrorMessage="City is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="CityRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="CityTextBox" ValidationExpression="^[^\W\d_]+$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="CityInserRequiredFieldValidator" runat="server" ControlToValidate="CityTextBox" ErrorMessage="City is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="CityInsertRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="CityTextBox" ValidationExpression="^[^\W\d_]+$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%-------ZIP Code-----%>
            <asp:TemplateField HeaderText="ZIP Code" SortExpression="ZipCode">
                <EditItemTemplate>
                    <asp:TextBox ID="ZCTextBox" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="ZCRequiredFieldValidator" runat="server" ControlToValidate="ZCTextBox" ErrorMessage="ZIP Code is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ZCRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="ZCTextBox" ValidationExpression="\d{5}-?(\d{4})?$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="ZCTextBox" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="ZCInsertRequiredFieldValidator" runat="server" ControlToValidate="ZCTextBox" ErrorMessage="ZIP Code is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ZCInsertRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="ZCTextBox" ValidationExpression="\d{5}-?(\d{4})?$" Text="!"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ZCLabel" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%-----Additional Numbers------%>
            <asp:TemplateField HeaderText="Additional Numbers" SortExpression="AdditionalNumbers">
                <EditItemTemplate>
                    <asp:TextBox ID="ANTextBox" runat="server" Text='<%# Bind("AdditionalNumbers") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="ANRequiredFieldValidator" runat="server" ControlToValidate="ANTextBox" ErrorMessage="Additional Number is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ANRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="ANTextBox" ValidationExpression="^\d+" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="ANTextBox" runat="server" Text='<%# Bind("AdditionalNumbers") %>'></asp:TextBox> <asp:RequiredFieldValidator ID="ANInsertRequiredFieldValidator" runat="server" ControlToValidate="ANTextBox" ErrorMessage="Additional Number is requiered" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ANInsertRegularExpressionValidator" runat="server" ErrorMessage="Invalid Input" ControlToValidate="ANTextBox" ValidationExpression="^\d+" Text="!"></asp:RegularExpressionValidator>

                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ANLabel" runat="server" Text='<%# Bind("AdditionalNumbers") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="white" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="white" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:DetailsView>
    <asp:EntityDataSource ID="AddressEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Addresses" EnableInsert="True" EnableUpdate="True"></asp:EntityDataSource>

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

 <%------Client Info Tabs------%>
 <asp:Content ID="tab" ContentPlaceHolderID="client_tabs" runat="server">
                 <div class="sidebar2">
                     <ul class="tt">
                     <li><a href="/ClientGeneralInformation">
                        <span class="tab">General Information</span></a>
                     </li>
                     <li><a href="/ClientIdentification">
                        <span class="tab">Identification</span></a>
                     </li>
                     <li><a href="/">
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