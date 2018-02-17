<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Selection.aspx.cs" Inherits="CMSHandIn.Selection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 540px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 540px;
        }
        .auto-style4 {
            margin-left: 540px;
        }
        .auto-style5 {
            margin-left: 540px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>
    </p>
      <div class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Select items" CssClass="item-h2"></asp:Label>
    </div>    
    <div class="mytable" style="padding-top:2%;">
        <br />
        <div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="selectionID" DataSourceID="SqlDataSource1" Height="121px" Width="463px" CssClass="auto-style1">
            <Fields>
                <asp:BoundField DataField="selectionID" HeaderText="selectionID" InsertVisible="False" ReadOnly="True" SortExpression="selectionID" />
                <asp:BoundField DataField="mainItem" HeaderText="Main Item" SortExpression="mainItem" />
                <asp:BoundField DataField="secondItem" HeaderText="Second Item" SortExpression="secondItem" />
                <asp:BoundField DataField="thirdItem" HeaderText="Third Item" SortExpression="thirdItem" />
                <asp:BoundField DataField="jokeId" HeaderText="Joke Id" SortExpression="jokeId" />
            </Fields>
            <RowStyle Height="35px" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Selection]"></asp:SqlDataSource>
        </div>  
    </div>
    <div style="padding:3% 1% 1% 32%;">
    <asp:Label ID="LabelSelFeedback" runat="server" CssClass="item-txt" ></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <br /><br />
    <div class="auto-style2">
    <asp:Label ID="Label2" runat="server" CssClass="item-txt" Text="Main Item"></asp:Label>
    </div>
    <div>
    <asp:DropDownList ID="DropDownListMain" runat="server" CssClass="auto-style3" DataSourceID="SqlDataSource2" DataTextField="headline" DataValueField="itemID" Height="30px" Width="461px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [itemID] = @itemID" InsertCommand="INSERT INTO [Items] ([category], [headline], [picture], [text]) VALUES (@category, @headline, @picture, @text)" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [category] = @category, [headline] = @headline, [picture] = @picture, [text] = @text WHERE [itemID] = @itemID">
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
    </div>
    <br /><br />
    <div class="auto-style2">
        <asp:Label ID="Label3" runat="server" CssClass="item-txt" Text="Second Item"></asp:Label>
    </div>
    <div>
        <asp:DropDownList ID="DropDownListSecond" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSource2" DataTextField="headline" DataValueField="itemID" Width="461px" Height="30px">
        </asp:DropDownList>
    </div>
<br /><br />
    <div class="auto-style2">
        <asp:Label ID="Label4" runat="server" CssClass="item-txt" Text="Third Item"></asp:Label>
        <br />
    </div>
    <div>   
    <asp:DropDownList ID="DropDownListThird" runat="server" CssClass="auto-style5" DataSourceID="SqlDataSource2" DataTextField="headline" DataValueField="itemID" Width="461px" Height="30px">
    </asp:DropDownList>
    </div>
<br /><br />
    <div class="auto-style2">
    <asp:Label ID="Label5" runat="server" CssClass="item-txt" Text="Joke"></asp:Label>
        <br />
    </div>
    <asp:DropDownList ID="DropDownListJokes" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSource3" DataTextField="caption" DataValueField="jokeID" Width="461px" Height="30px">
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [Jokes]"></asp:SqlDataSource>
<br /><br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <div class="auto-style2">
        <asp:Button ID="ButtonChooseSelection" runat="server" Text="Choose Selection" CssClass="btn" OnClick="ButtonChooseSelection_Click" />
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
     <div style="padding-left:44%; background-color:#ffe4c4; font-family: Lato;font-weight:300;"> 
        <br />
            <asp:Label ID="LabelFooter" runat="server" Text="Student Project Cphbusiness 2018" style="text-align: center"></asp:Label>
        <br />
        <br />
    </div>

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
</asp:Content>
