<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CMSHandIn.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="auto-style1">
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="item-h2" Text="Edit information:" Font-Size="60px"></asp:Label>
            <br />
            <br />
            <br />
            <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="itemID" DataSourceID="SqlDataSource1" Width="1000px" CssClass="gridview" Height="342px" Font-Names="lato" Font-Size="Medium" CellPadding="3" CellSpacing="1" ForeColor="#666666" style="margin-left: 270px" HorizontalAlign="Center">
                <AlternatingRowStyle BorderColor="#666699" Font-Size="Medium" HorizontalAlign="Center" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="itemID" HeaderText="Item ID" InsertVisible="False" ReadOnly="True" SortExpression="itemID" ItemStyle-Width="80px" >
<ItemStyle Width="80px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="category" HeaderText="Item Category" SortExpression="category" ItemStyle-Width="130px">
<ItemStyle Width="130px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="headline" HeaderText="Item Headline" SortExpression="headline" ItemStyle-Width="110px" >
<ItemStyle Width="110px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="picture" HeaderText="Item Picture" SortExpression="picture" ItemStyle-Width="100px">
<ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="text" HeaderText="Item Text" SortExpression="text" />
                </Columns>
                <EditRowStyle HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" />
                <SelectedRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            </div>
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
        </div>
    <p>
    </p>
        <div style="margin-left:48%; ">
            <br />
          <asp:Image ID="Image3" src="Pictures/more.png" runat="server" Height="50px" />
        </div>
    <p>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style1">
        <asp:Label ID="Label1" runat="server" CssClass="item-h2" Text="Insert Item:"></asp:Label>
        <br />
    </p>
    <p>
    </p>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p class="auto-style2">
        <div> 
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="itemID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="517px" CssClass="auto-style3" Font-Names="lato" Font-Size="Medium" BorderStyle="Inset" ForeColor="#666666" HorizontalAlign="Center" style="margin-left: 470px" CellPadding="1">
                <AlternatingRowStyle Height="50px" HorizontalAlign="Center" />
                <EditRowStyle Height="50px" HorizontalAlign="Center" />
                <Fields>
                    <asp:BoundField DataField="itemID" HeaderText="Item ID" InsertVisible="False" ReadOnly="True" SortExpression="itemID" />
                    <asp:BoundField DataField="category" HeaderText="Item Category" SortExpression="category" />
                    <asp:BoundField DataField="headline" HeaderText="Item Headline" SortExpression="headline" />
                    <asp:BoundField DataField="picture" HeaderText="Item Picture" SortExpression="picture" />
                    <asp:BoundField DataField="text" HeaderText="Item Text" SortExpression="text" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
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
            <br />
        </div>
    </p>
    <p>
    </p>
 
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
        
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
   <div style="margin-left:47%; ">
     <br />
      <asp:Image ID="Image1" src="Pictures/more.png" runat="server" Height="50px" />
   </div>

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
