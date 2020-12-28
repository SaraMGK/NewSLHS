<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="NewSLHS.test" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater id="Repeater1" runat="server">
    <ItemTemplate>
        <div class="commentBody">
            <span class="commentSender"><%# DataBinder.Eval(Container.DataItem,"aucommentSenderid") %></span>
            <span class="commentDate"><%# DataBinder.Eval(Container.DataItem,"aucommentDateid") %></span>
            <span class="commentText"><%# DataBinder.Eval(Container.DataItem,"aucommentTextid") %></span>
        </div>
    </ItemTemplate>
</asp:Repeater>


</asp:Content>
