<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CMSHandIn.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Repeater ID="RepeaterMainItem" runat="server">
                <HeaderTemplate>
                    <table class="mytable" style="text-align: center; width: 63%;">
                        <tr>
                            <td class="myheader">Category</td>
                            <td class="myheader">Headline</td>
                            <td class="myheader">Image</td>
                            <td class="myheader">Text</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myitem"><%# Eval("category") %></td>
                        <td class="myitem"><%# Eval("headline") %></td>
                        <td class="myitem">
                            <img src="Pictures/<%# Eval("picture") %>" alt="" />
                        </td>
                        <td class="myitem"><%# Eval("text") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>    
       <br />
    <asp:Label ID="LabelMainCategory" runat="server" Text=""></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="LabelMainHeadline" runat="server" Text=""></asp:Label>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Image ID="ImageMain" runat="server" Height="200px" Width="200px" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <asp:TextBox ID="TextBoxMain" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <asp:Repeater ID="RepeaterSecond" runat="server">
                <HeaderTemplate>
                    <table class="mytable" style="text-align: center; width: 63%;">
                        <tr>
                            <td class="myheader">Category</td>
                            <td class="myheader">Headline</td>
                            <td class="myheader">Image</td>
                            <td class="myheader">Text</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myitem"><%# Eval("category") %></td>
                        <td class="myitem"><%# Eval("headline") %></td>
                        <td class="myitem">
                            <img src="Pictures/<%# Eval("picture") %>" alt="" />
                        </td>
                        <td class="myitem"><%# Eval("text") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater> 
    
    
    <br />
    <asp:Label ID="LabelSecCategory" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <asp:Label ID="LabelSecHeadline" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <asp:Image ID="ImageSec" runat="server" Height="200px" Width="200px" />
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder8" runat="server">
    <asp:TextBox ID="TextBoxSec" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
    <asp:Repeater ID="RepeaterThird" runat="server">
                <HeaderTemplate>
                    <table class="mytable" style="text-align: center; width: 63%;">
                        <tr>
                            <td class="myheader">Category</td>
                            <td class="myheader">Headline</td>
                            <td class="myheader">Image</td>
                            <td class="myheader">Text</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myitem"><%# Eval("category") %></td>
                        <td class="myitem"><%# Eval("headline") %></td>
                        <td class="myitem">
                            <img src="Pictures/<%# Eval("picture") %>" alt="" />
                        </td>
                        <td class="myitem"><%# Eval("text") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater> 
    
    <br />
    <asp:Label ID="LabelThirdCategory" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder10" runat="server">
    <asp:Label ID="LabelThirdHeadline" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="ContentPlaceHolder11" runat="server">
    <asp:Image ID="ImageThird" runat="server" Height="200px" Width="200px" />
</asp:Content>
<asp:Content ID="Content13" ContentPlaceHolderID="ContentPlaceHolder12" runat="server">
    <asp:TextBox ID="TextBoxThird" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
</asp:Content>

<asp:Content ID="Content14" ContentPlaceHolderID="ContentPlaceHolder13" runat="server">
    <asp:Image ID="ImageJoke" runat="server" Height="400px" Width="400px" style="margin-left: 404px" />
</asp:Content>
<asp:Content ID="Content15" ContentPlaceHolderID="footer" runat="server">
    <asp:Repeater ID="RepeaterJoke" runat="server">
                <HeaderTemplate>
                    <table class="mytable" style="text-align: center; width: 63%;">
                        <tr>
                            <td class="myheader"></td>
                            <td class="myheader"></td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myitem"><%# Eval("caption") %></td>
                        <td class="myitem">
                            <img src="Pictures/<%# Eval("img") %>" alt="" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater> 
    <br />
    <asp:Label ID="LabelFooter" runat="server" Text="Student Project Cphbusiness 2018" style="text-align: center"></asp:Label>
    <br />
</asp:Content>
