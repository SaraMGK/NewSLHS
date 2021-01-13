<%--Parental History Page - Part Case History: It has client's parent info--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParentalHistory.aspx.cs" Inherits="NewSLHS.ParentalHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--Page Header--%>
    <h1>Client Details</h1>
    <h6 class="sub-head">Parental History</h6>
    <br />
    <br />

    <%-----------form----------%>
    <form>

        <table class="form-table" style="width: 70%;">
            <%--Relation--%>
            <tr>
                <td style="padding-bottom:10px;" class="td-class"><asp:Label ID="RelationLb" runat="server" Text="Relation" CssClass="label2"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" style="width: 100px;" CssClass="option2">
                     <asp:ListItem disabled selected hidden Value="Select">---Select---</asp:ListItem>
                        <asp:ListItem Value="Father">Father</asp:ListItem>
                        <asp:ListItem Value="Mother">Mother</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <%--First Name--%>
            <tr>
                <td style="padding-bottom:10px;" class="td-class"><asp:Label ID="FNLabel" runat="server" Text="First Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="FNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Middle Name--%>
            <tr> 
                <td><asp:Label ID="MNLabel" runat="server" Text="Middle Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="MNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Last Name--%>
            <tr>
                <td><asp:Label ID="LNLabel" runat="server" Text="Last Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="LNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Email--%>
            <tr>
                <td><asp:Label ID="EmailLabel" runat="server" Text="Email" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="EmailTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Phone--%>
            <tr>
                <td><asp:Label style="padding-bottom: 25px" ID="PhoneLabel" runat="server" Text="Phone" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="HomeTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Home Number" runat="server" CssClass="address-title" />
                </td>
                <td style="width: 347px"><asp:TextBox ID="ParentMobileTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Mobile Number" runat="server" CssClass="address-title" />
                </td>
            </tr>
            <%------Address------%>
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
                <%--City--%>
                <td style="width: 347px"><asp:TextBox ID="CityTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="City" runat="server" CssClass="address-title" />
                </td>
                <%--Zip Code--%>
                <td style="width: 347px"><asp:TextBox ID="ZipTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Zip Code" runat="server" CssClass="address-title" />
                </td>
                <%--Additional Number--%>
                <td style="width: 347px"><asp:TextBox ID="AddNumTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Additonal Numbers" runat="server" CssClass="address-title" />
                </td>
            </tr>
            <%--Space Row--%>
            <tr>
                <td></td>
            </tr>
            <%--Date of Birth--%>
            <tr>
                <td><asp:Label ID="BirthDLb" runat="server" Text="Date of Birth" CssClass="label2"></asp:Label></td>
                <td><asp:TextBox ID="BirthDTxt" runat="server" CssClass="option2" TextMode="Date"></asp:TextBox></td>
            </tr>
            <%--Education--%>
            <tr>
                <td><asp:Label ID="EducationLb" runat="server" Text="Education" CssClass="label2"></asp:Label></td>
                <td><asp:TextBox ID="EducationTxt" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Occupation--%>
            <tr>
                <td><asp:Label style="padding-bottom: 25px" ID="OccupationLb" runat="server" Text="Occupation" CssClass="label2"></asp:Label></td>
                <td><asp:TextBox ID="OccupationTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="OccupationLb2" runat="server" Text="Occupation" CssClass="address-title"></asp:Label>
                </td>
                <td><asp:TextBox ID="PlaceTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="PlaceLb" runat="server" Text="Place of Employment" CssClass="address-title"></asp:Label>
                </td>
                <td><asp:TextBox ID="WorkPhoneTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="WorkPhoneLb" runat="server" Text="Work Phone" CssClass="address-title"></asp:Label>
                </td>
            </tr>
            <%--Marital Status--%>
            <tr>
            <td><asp:Label ID="MaritalLabel" runat="server" Text="Marital Status" CssClass="label2"></asp:Label></td>
            <td><asp:DropDownList ID="MaritalDropDownList" style="width: 100px;" runat="server" AppendDataBoundItems="true" DataSourceID="MaritalStatusEntityDataSource" DataTextField="MartialStatus" DataValueField="MaritalStatusID" CssClass="option2">
                <Items>
                    <asp:ListItem disabled selected hidden Value="Select">Select</asp:ListItem>
                </Items>
                </asp:DropDownList>
                <asp:EntityDataSource ID="MaritalStatusEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Marital_Status"></asp:EntityDataSource>
            </td>
        </tr>
        </table>

    </form>
    
</asp:Content>
