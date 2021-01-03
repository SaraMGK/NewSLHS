<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OldClientGeneralInformation.aspx.cs" Inherits="NewSLHS.ClientGeneralInformation" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Client Details</h1>
    <h6 class="sub-head">General Information</h6>


    <%--Button--%>
    <div class="next-button-div">
        <button class="save-button">Save & Continue Later</button>
    </div>
   

    <%-----------form----------%>
    <form>

        <table class="form-table" style="width: 70%;">
            <tr>
                <td style="padding-bottom:10px;" class="td-class"><asp:Label ID="FNLabel" runat="server" Text="First Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="FNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            
            <tr> 
                <td><asp:Label ID="MNLabel" runat="server" Text="Middle Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="MNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="LNLabel" runat="server" Text="Last Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="LNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="EmailLabel" runat="server" Text="Email" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="EmailTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="MobileLabel" runat="server" Text="Mobile" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="MobileTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
                <td style="width: 347px"></td>
            </tr>
            <tr>
                <td><asp:Label style="padding-bottom: 25px" ID="AddressLabel" runat="server" Text="Address" CssClass="label2"></asp:Label></td>
                
                <td style="width: 347px"><asp:TextBox ID="AddressTextBox" runat="server" CssClass="option2"></asp:TextBox> 
                    <asp:Label Text="Building Number" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><asp:TextBox ID="StreetTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Street Name" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><asp:TextBox ID="DistTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="District" runat="server" CssClass="address-title" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="width: 347px"><asp:TextBox ID="CityTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="City" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><asp:TextBox ID="ZipTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Zip Code" runat="server" CssClass="address-title" />
                </td>
                <td style="width: 347px"><asp:TextBox ID="AddNumTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Additonal Numbers" runat="server" CssClass="address-title" />
                </td>
            </tr>
        </table>

    </form>
    
    <%--Button--%>
    <div class="next-button-div">
        <button class="next-button">Next</button>
    </div>
    
    <asp:DetailsView ID="DetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="EntityDataSource" DataKeyNames="ClientID">
        <Fields>
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" SortExpression="ClientID" FooterText="Client ID" />
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="You must fill all fields" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z\s]+$" Text="!"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MiddleName" SortExpression="MiddleName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MiddleName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MiddleName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MiddleName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email format is incorrect" ControlToValidate="TextBox4" Text="*" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Email format is incorrect" ControlToValidate="TextBox4" Text="*" ValidationExpression="^([\+]?[0-9]{1,3}[\s.-][0-9]{1,12})([\s.-]?[0-9]{1,4}?)$"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" ReadOnly="False" SortExpression="AddressID" />
            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-btn" ButtonType="Button">
                <ControlStyle CssClass="edit-btn"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField ShowInsertButton="True" />
            
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EntitySetName="Clients" EnableInsert="True" EnableUpdate="True" EnableFlattening="False" OnSelecting="EntityDataSource_Selecting" Include="Address" ></asp:EntityDataSource>
   <%-- <asp:DetailsView ID="AddressDetailsView" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="AddressEntityDataSource" Where="it.[FirstName] = @FirstName">
        <Fields>
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" ReadOnly="True" SortExpression="AddressID" />
            <asp:BoundField DataField="BuildingNumber" HeaderText="BuildingNumber" ReadOnly="True" SortExpression="BuildingNumber" />
            <asp:BoundField DataField="StreetName" HeaderText="StreetName" ReadOnly="True" SortExpression="StreetName" />
            <asp:BoundField DataField="District" HeaderText="District" ReadOnly="True" SortExpression="District" />
            <asp:BoundField DataField="City" HeaderText="City" ReadOnly="True" SortExpression="City" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" ReadOnly="True" SortExpression="ZipCode" />
            <asp:BoundField DataField="AdditionalNumbers" HeaderText="AdditionalNumbers" ReadOnly="True" SortExpression="AdditionalNumbers" />
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource ID="AddressEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Addresses" Select="it.[AddressID], it.[BuildingNumber], it.[StreetName], it.[District], it.[City], it.[ZipCode], it.[AdditionalNumbers]"></asp:EntityDataSource>--%>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="236px" AutoGenerateRows="False" DataKeyNames="ClientID" DataSourceID="EntityDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" SortExpression="ClientID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" SortExpression="AddressID" />
        </Fields>
        <FooterTemplate>
<%--            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Address") %>'></asp:Label>--%>
        </FooterTemplate>
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Clients" OnSelecting="EntityDataSource1_Selecting"></asp:EntityDataSource>
</asp:Content>
