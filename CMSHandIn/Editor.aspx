<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="CMSHandIn.Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editor page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Info edit"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="itemID" DataSourceID="SqlDataSource1" Width="731px">
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
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="itemID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="483px">
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
            <asp:Button ID="ButtonToSelect" runat="server" PostBackUrl="~/Select.aspx" Text="To Select" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonToUpload" runat="server" PostBackUrl="~/Upload.aspx" Text="To Upload" />
&nbsp;&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
