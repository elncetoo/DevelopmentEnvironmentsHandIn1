<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Select.aspx.cs" Inherits="CMSHandIn.Select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 590px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style1" DataKeyNames="selectionID" DataSourceID="SqlDataSource1" Height="50px" Width="339px">
                <Fields>
                    <asp:BoundField DataField="mainItem" HeaderText="Main Item" SortExpression="mainItem" />
                    <asp:BoundField DataField="secondItem" HeaderText="Second Item" SortExpression="secondItem" />
                    <asp:BoundField DataField="thirdItem" HeaderText="Third Item" SortExpression="thirdItem" />
                    <asp:BoundField DataField="jokeId" HeaderText="Joke" SortExpression="jokeId" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [Selection] WHERE [selectionID] = @selectionID" InsertCommand="INSERT INTO [Selection] ([mainItem], [secondItem], [thirdItem], [jokeId]) VALUES (@mainItem, @secondItem, @thirdItem, @jokeId)" SelectCommand="SELECT * FROM [Selection]" UpdateCommand="UPDATE [Selection] SET [mainItem] = @mainItem, [secondItem] = @secondItem, [thirdItem] = @thirdItem, [jokeId] = @jokeId WHERE [selectionID] = @selectionID">
                <DeleteParameters>
                    <asp:Parameter Name="selectionID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="mainItem" Type="Int32" />
                    <asp:Parameter Name="secondItem" Type="Int32" />
                    <asp:Parameter Name="thirdItem" Type="Int32" />
                    <asp:Parameter Name="jokeId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="mainItem" Type="Int32" />
                    <asp:Parameter Name="secondItem" Type="Int32" />
                    <asp:Parameter Name="thirdItem" Type="Int32" />
                    <asp:Parameter Name="jokeId" Type="Int32" />
                    <asp:Parameter Name="selectionID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2Main" runat="server" Text="Main item:"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListMain" runat="server" DataSourceID="SqlDataSource2" DataTextField="headline" DataValueField="itemID" Height="50px" Width="333px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="LabelSecond" runat="server" Text="Second Item:"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListSecond" runat="server" DataSourceID="SqlDataSource2" DataTextField="headline" DataValueField="itemID" Width="333px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LabelThird" runat="server" Text="Third item:"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListThird" runat="server" DataSourceID="SqlDataSource2" DataTextField="headline" DataValueField="itemID" Width="333px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LabelJoke" runat="server" Text="Joke:"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListJokes" runat="server" DataSourceID="SqlDataSource3" DataTextField="caption" DataValueField="jokeID" Width="333px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Jokes]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="ButtonChooseSelection" runat="server" OnClick="ButtonChooseSelection_Click" Text="Choose selection" />
            <br />
            <br />
            <asp:Label ID="LabelSelFeedback" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="ButtonGoToUpld" runat="server" PostBackUrl="~/Upload.aspx" Text="Go to upload" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonGoToEditor" runat="server" PostBackUrl="~/Editor.aspx" Text="Go To Editor" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonGoToIndex" runat="server" PostBackUrl="~/Index.aspx" Text="Go to index" />
        </div>
    </form>
</body>
</html>
