<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminPass.aspx.cs" Inherits="adminPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Pass</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body style="background-color: #999999">
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center">Change password or username</h1>
        </div>
    <div style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" DeleteCommand="DELETE FROM [admin] WHERE [ID] = @ID" InsertCommand="INSERT INTO [admin] ([ID], [pass]) VALUES (@ID, @pass)" SelectCommand="SELECT * FROM [admin]" UpdateCommand="UPDATE [admin] SET [pass] = @pass WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" style="margin-left: 885px" Height="171px" Width="196px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
        <div style="text-align: center">
            </br>
            </br>
            </br>
            <asp:Button ID="Button1" runat="server" Text="Return" CssClass="btn-primary" OnClick="Button1_Click" />
        </div>
    </form>
    
</body>
</html>
