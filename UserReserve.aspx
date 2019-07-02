<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserReserve.aspx.cs" Inherits="Dolla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>see reservations</title>
    <link href="css/admin.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body style="background:url('images/dish.jpg') no-repeat center center fixed;">
    <form id="form1" runat="server">
        <h1 style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="text-align: center"></asp:Label>
        </h1>
    <div style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" DeleteCommand="DELETE FROM [ReserveTable] WHERE [ReserveID] = @ReserveID" InsertCommand="INSERT INTO [ReserveTable] ([TableNo], [Customer], [InTime], [OutTime], [Date]) VALUES (@TableNo, @Customer, @InTime, @OutTime, @Date)" SelectCommand="SELECT * FROM [ReserveTable] WHERE ([Customer] = @Customer)" UpdateCommand="UPDATE [ReserveTable] SET [TableNo] = @TableNo, [Customer] = @Customer, [InTime] = @InTime, [OutTime] = @OutTime, [Date] = @Date WHERE [ReserveID] = @ReserveID">
            <DeleteParameters>
                <asp:Parameter Name="ReserveID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TableNo" Type="Int32" />
                <asp:Parameter Name="Customer" Type="String" />
                <asp:Parameter Name="InTime" Type="Int32" />
                <asp:Parameter Name="OutTime" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Date" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Customer" SessionField="Login" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TableNo" Type="Int32" />
                <asp:Parameter Name="Customer" Type="String" />
                <asp:Parameter Name="InTime" Type="Int32" />
                <asp:Parameter Name="OutTime" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="ReserveID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ReserveID" DataSourceID="SqlDataSource1" EnableModelValidation="True" style="margin-left: 602px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ReserveID" HeaderText="ReserveID" InsertVisible="False" ReadOnly="True" SortExpression="ReserveID" />
                <asp:BoundField DataField="TableNo" HeaderText="TableNo" SortExpression="TableNo" />
                <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" />
                <asp:BoundField DataField="InTime" HeaderText="InTime" SortExpression="InTime" />
                <asp:BoundField DataField="OutTime" HeaderText="OutTime" SortExpression="OutTime" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
        <div style="text-align: center">
            </br>
            </br>
            </br>
            <asp:Button ID="Button1" runat="server" Text="Return" style="text-align: center" CssClass="button-3d" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
