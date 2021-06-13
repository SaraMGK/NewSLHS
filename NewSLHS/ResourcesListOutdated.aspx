<%--Resources List: It contains all the resources--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResourcesListOutdated.aspx.cs" Inherits="SLHSClinic.ResourcesList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Resources</h1>

    <%--Search Panel--%>
    <div class="search-div">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="small-search-bar"></asp:TextBox>

        <button class="small-search-button" type="button"><i class="fa fa-search"></i></button>
    </div>
    <div class="all-res-div">
    <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label1" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label2" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image1" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label3" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button1" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
    </div>
    
    <%--Second Resource--%>
    <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label4" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label5" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image2" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label6" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button2" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
    </div>

    <%--Third Resource--%>
    <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label7" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label8" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image3" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label9" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button3" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
        </div>

    <%--Fourth Resource--%>
    <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label10" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label11" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image4" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label12" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button4" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
        </div>

    <%--Fifth Resource--%>
    <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label13" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label14" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image5" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label15" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button5" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
     </div>
    <%--Sixth Resource--%>
    <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label16" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label17" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image6" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label18" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button6" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
    </div>
   
        <%--Seventh Resource--%>
        <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label19" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label20" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image7" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label21" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button7" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
     </div>

        <%--Eighth Resource--%>
        <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label22" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label23" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image8" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label24" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button8" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
    </div>

        <%--Nineth Resource--%>
        <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label25" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label26" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image9" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label27" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button9" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
     </div>
        <%--Tenth Resource--%>
        <%--Resource Div--%>
    <div class="resource-div">
        <%--Image Div--%>
        <div class="image2-div">
            <img alt="Resource Image" class="resource-image2" src="/Images/LetterM.png" />
        </div>
        <%--Resource Name Div--%>
        <div class="image-title">
            <asp:Label ID="Label28" runat="server" CssClass="img-label" Text="Fun Deck Letter B"></asp:Label>
        </div>
        <%--Discription Div--%>
        <div class="discr-div">
            <asp:Label ID="Label29" runat="server" CssClass="discr-label" Text="56 photo-word cards contains (M) "></asp:Label>
        </div>
        <%--Quantiy, Availbilty, & Button Div--%>
        <div class="quan-ava-btn-div">
            <%--Availabe Icon --%>
            <div class="avail-icon-div">
                <asp:Image ID="Image10" CssClass="avail-icon" runat="server" src="/Images/availableIcon.png" />
            </div>
            <%--Quantity Label--%>
            <div class="quan-div">
                <asp:Label ID="Label30" CssClass="quan-lb" runat="server" Text="5"></asp:Label>
            </div>
            <%--Request Button--%>
            <div class="req-btn-div">
                <asp:Button ID="Button10" CssClass="req-btn" runat="server" Text="Request" />
            </div>
        </div>
    </div>
</div>
    
</div>


    


</asp:Content>
