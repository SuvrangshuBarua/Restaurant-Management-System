<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationReport.aspx.cs" Inherits="ReservationReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
    <link href="css/admin.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="text-align: center">Table Reservation Report</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [TableNo], [Customer], [InTime], [OutTime], [Date] FROM [ReserveTable]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" style="text-align: center; margin-left: 300px" Width="1329px">
            <Columns>
                <asp:BoundField DataField="TableNo" HeaderText="TableNo" SortExpression="TableNo" />
                <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" />
                <asp:BoundField DataField="InTime" HeaderText="InTime" SortExpression="InTime" />
                <asp:BoundField DataField="OutTime" HeaderText="OutTime" SortExpression="OutTime" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>

        <div style="text-align: center">

            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" style="text-align: center; top: 0px; left: 0px;" Text="Return" CssClass="button-3d" OnClick="Button1_Click" />
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
