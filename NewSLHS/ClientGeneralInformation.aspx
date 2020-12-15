<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientGeneralInformation.aspx.cs" Inherits="NewSLHS.ClientGeneralInformation" %>

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
                <td style="width: 347px" ><input id="FNText" type="text" class="option2" /></td>
            </tr>
            <tr> 
                <td><asp:Label ID="MNLabel" runat="server" Text="Middle Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px" ><input id="MNText" type="text" class="option2" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="LNLabel" runat="server" Text="Last Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><input id="LNText" type="text" class="option2" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="EmailLabel" runat="server" Text="Email" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><input id="EmailText" type="text" class="option2" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="MobileLabel" runat="server" Text="Mobile" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><input id="MobileText" type="text" class="option2" /></td>
                <td style="width: 347px"></td>
            </tr>
            <tr>
                <td><asp:Label style="padding-bottom: 25px" ID="AddressLabel" runat="server" Text="Address" CssClass="label2"></asp:Label></td>
                
                <td style="width: 347px"><input id="AddressText" type="text" class="option2" /> 
                    <asp:Label Text="Building Number" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><input id="StNText" type="text" class="option2" />
                    <asp:Label Text="Street Name" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><input id="DistText" type="text" class="option2" />
                    <asp:Label Text="District" runat="server" CssClass="address-title" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="width: 347px"><input id="CityText" type="text" class="option2" />
                    <asp:Label Text="City" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><input id="ZipCText" type="text" class="option2" />
                    <asp:Label Text="Zip Code" runat="server" CssClass="address-title" />
                </td>
                <td style="width: 347px"><input id="AddNumText" type="text" class="option2" />
                    <asp:Label Text="Additonal Numbers" runat="server" CssClass="address-title" />
                </td>
            </tr>
        </table>

    </form>
    
    <%--Button--%>
    <div class="next-button-div">
        <button class="next-button">Next</button>
    </div>
    

</asp:Content>
