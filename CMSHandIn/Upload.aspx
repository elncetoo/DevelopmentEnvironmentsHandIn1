<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="CMSHandIn.Upload1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <div style="text-align: center">
            <br />
            <asp:Label ID="Label1Upload" runat="server" Text="Upload new image" CssClass="item-h2"></asp:Label>
            <br />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="313px" Font-Names="lato" Font-Size="Small" CssClass="auto-style1" />
            <br />
            <br />
            <asp:Label ID="Label1Name" runat="server" Text="File name" Font-Names="lato" CssClass="item-txt"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Name" runat="server" Width="312px" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1Descr" runat="server" Text="Caption:" CssClass="item-txt"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Text" runat="server" Height="50px" Width="312px" CssClass="auto-style2"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1UploadPic" runat="server" OnClick="Button1UploadPic_Click" Text="Upload to Pictures" CssClass="btn" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1UploadJoke" runat="server" OnClick="Button1UploadJoke_Click" Text="Upload to Jokes" CssClass="btn" />
            <br />
            <br />
            <asp:Label ID="Label1Feedback" runat="server"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder8" runat="server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder10" runat="server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="ContentPlaceHolder11" runat="server">
</asp:Content>
<asp:Content ID="Content13" ContentPlaceHolderID="ContentPlaceHolder12" runat="server">
</asp:Content>
<asp:Content ID="Content14" ContentPlaceHolderID="ContentPlaceHolder13" runat="server">
</asp:Content>
<asp:Content ID="Content15" ContentPlaceHolderID="ContentPlaceHolder14" runat="server">
</asp:Content>
<asp:Content ID="Content16" ContentPlaceHolderID="footer" runat="server">
    <div style="padding-left:42%; background-color:#ffe4c4; font-family: Lato;font-weight:300;"> 
        <br />
            <asp:Label ID="LabelFooter" runat="server" Text="Student Project Cphbusiness 2018" style="text-align: center"></asp:Label>
        <br />
        <br />
    </div>
</asp:Content>
