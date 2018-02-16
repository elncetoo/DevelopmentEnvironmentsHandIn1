<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="CMSHandIn.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Index.aspx" Text="Go to Index" Width="169px" />
            <br />
            <br />
            <asp:Label ID="Label1Upload" runat="server" Text="Upload new joke or picture"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1Category" runat="server" Text="Category"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Category" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1Headline" runat="server" Text="Headline"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Headline" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Picture link"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="412px" />
            <br />
            <br />
            <asp:Label ID="Label1Name" runat="server" Text="Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Name" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1Descr" runat="server" Text="Description"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1Text" runat="server" Height="78px" Width="437px"></asp:TextBox>
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
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Editor.aspx" Text="Go to Editor" Width="169px" />
&nbsp;&nbsp;&nbsp;
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
