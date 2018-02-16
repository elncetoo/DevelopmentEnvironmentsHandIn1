<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="CMSHandIn.Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editor page</title>
    <link href="~/App_Themes/styleMaster.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 224px;
        }
        .auto-style3 {
            margin-left: 447px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
                      <br />
                      <br />
                      <asp:Button ID="Button1" runat="server" PostBackUrl="~/Index.aspx" Text="Back To Index" CssClass="btn" />
                      <br />
                      <br />
  <br />
            
            <asp:Label ID="Label1" runat="server" Text="Edit information:" Font-Names="lato" Font-Size="Medium"></asp:Label>
        <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="itemID" DataSourceID="SqlDataSource1" Width="1000px" CssClass="auto-style2" Height="342px" Font-Names="lato" Font-Size="Medium">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="itemID" HeaderText="itemID" InsertVisible="False" ReadOnly="True" SortExpression="itemID" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                    <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" />
                    <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [itemID] = @itemID" InsertCommand="INSERT INTO [Items] ([category], [headline], [picture], [text]) VALUES (@category, @headline, @picture, @text)" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [category] = @category, [headline] = @headline, [picture] = @picture, [text] = @text WHERE [itemID] = @itemID">
                <DeleteParameters>
                    <asp:Parameter Name="itemID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="headline" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="headline" Type="String" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="text" Type="String" />
                    <asp:Parameter Name="itemID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="itemID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="598px" CssClass="auto-style3" Font-Names="lato" Font-Size="Medium">
                <Fields>
                    <asp:BoundField DataField="itemID" HeaderText="itemID" InsertVisible="False" ReadOnly="True" SortExpression="itemID" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                    <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" />
                    <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <asp:Button ID="ButtonToSelect" runat="server" PostBackUrl="~/Select.aspx" Text="To Select" CssClass="btn" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonToUpload" runat="server" PostBackUrl="~/Upload.aspx" Text="To Upload" CssClass="btn" />
&nbsp;&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
