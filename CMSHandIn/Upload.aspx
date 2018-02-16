<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="CMSHandIn.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload page</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Index.aspx" Text="Back to Index" Width="160px" />
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="Label1Upload" runat="server" Text="Upload new image"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
            <br />
            <br />
            <asp:Label ID="Label1Name" runat="server" Text="File name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Name" runat="server" Width="300px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1Descr" runat="server" Text="Caption"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Text" runat="server" Height="50px" Width="300px" CssClass="auto-style1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1UploadPic" runat="server" OnClick="Button1UploadPic_Click" Text="Upload to Pictures" Width="169px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1UploadJoke" runat="server" OnClick="Button1UploadJoke_Click" Text="Upload to Jokes" />
            <br />
            <br />
            <asp:Label ID="Label1Feedback" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Editor.aspx" Text="Go to Editor" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3Select" runat="server" PostBackUrl="~/Select.aspx" Text="Go to Select" Width="160px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
