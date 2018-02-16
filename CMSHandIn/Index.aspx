<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CMSHandIn.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:28%;">
        <asp:Repeater ID="RepeaterMainItem" runat="server">
            <HeaderTemplate>
                <table class="mytable" style="text-align: center; width: 63%;">
                    <tr>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <td class="container">
                    <div class="item item-h2">
                        <asp:Label ID="LabelMainHeadline" runat="server" Text="" SkinID="ItemHeadline" ><%# Eval("headline") %><br /></asp:Label>
                    </div>
                    <div class="item item-cat">
                        <asp:Label ID="LabelMainCategory" runat="server" Text="" ><%# Eval("category") %><br /></asp:Label></div>
                    <div class="item">
                        <img src="Pictures/<%# Eval("picture") %>" alt="" width="450px" height="350px" /><br /></div>
                    <div class="item item-txt">
                        <asp:Label ID="LabelMainText" runat="server" Text=""><%# Eval("text") %><br /></asp:Label></div>
                </td>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>    
         </asp:Repeater>    
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left:49%; ">
        <asp:Image ID="Image1" src="Pictures/more.png" runat="server" Height="50px" />
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <div style="margin-left:28%;">
        <asp:Repeater ID="RepeaterSecond" runat="server">
            <HeaderTemplate>
                <table class="mytable" style="text-align: center; width: 63%;">
                    <tr>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <td class="container">
                    <div class="item item-h2"><asp:Label ID="LabelSecHeadline" runat="server" Text=""><%# Eval("headline") %><br /></asp:Label></div>
                    <div class="item item-cat"><asp:Label ID="LabelSecCategory" runat="server" Text=""><%# Eval("category") %><br /></asp:Label></div>
                    <div class="item"><img src="Pictures/<%# Eval("picture") %>" alt=""  width="450px" height="350px"/><br /></div>
                    <div class="item item-txt"><asp:Label ID="LabelSecText" runat="server" Text=""><%# Eval("text") %><br /></asp:Label></div>
                </td>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater> 
    <br />
        </div>
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
        <div style="margin-left:49%; ">
        <asp:Image ID="Image2" src="Pictures/more.png" runat="server" Height="50px" />
    </div>

</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
    <div style="margin-left:28%;">    
        <asp:Repeater ID="RepeaterThird" runat="server">
                <HeaderTemplate>
                    <table class="mytable" style="text-align: center; width: 63%;">
                        <tr>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <td class="container">
                        <div class="item item-h2"><asp:Label ID="LabelMainHeadline" runat="server" Text=""><%# Eval("headline") %><br /></asp:Label></div>
                        <div class="item item-cat"><asp:Label ID="LabelMainCategory" runat="server" Text=""><%# Eval("category") %><br /></asp:Label></div>
                        <div class="item"><img src="Pictures/<%# Eval("picture") %>" alt="" width="450px" height="350px"/><br /></div>
                        <div class="item item-txt"><asp:Label ID="LabelMainText" runat="server" Text=""><%# Eval("text") %><br /></asp:Label></div>
                    </td>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater> 
        <br />
    </div>
</asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder10" runat="server">
        <div style="margin-left:49%; ">
        <asp:Image ID="Image3" src="Pictures/more.png" runat="server" Height="50px" />
    </div>

</asp:Content>

<asp:Content ID="Content14" ContentPlaceHolderID="footer" runat="server">
   <div style="margin-left:35%;">
        <asp:Repeater ID="RepeaterJoke" runat="server">
            <HeaderTemplate>
                <table class="mytable" style="text-align: center; width: 63%;">
                    <tr>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <td class="container">
                    <div class="item item-h2"><asp:Label ID="LabelCaption" runat="server" Text=""><%# Eval("caption") %><br /></asp:Label></div>
                    <div class="item"><img src="Jokes/<%# Eval("img") %>" alt="" width="450px" height="150px"/><br /></div>
                </td>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater> 
        <br />
    <br />
    </div>
    <div style="padding-left:44%; background-color:#ffe4c4; font-family: Lato;"> 
    <br />
    <asp:Label ID="LabelFooter" runat="server" Text="Student Project Cphbusiness 2018" style="text-align: center"></asp:Label>
        <br />
    <br />
    </div>
</asp:Content>
