<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link href="css/admin.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        .auto-style1 
        {
            width: 40%;     
        }
    </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form1" runat="server">
    <div>
        <p style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="text-align: left; font-weight: 700; text-shadow: 0 0 3px #FF0000; font-size: xx-large;" Font-Size="Larger"></asp:Label>
        </p>
        
    
        <table align="center" class="auto-style1">
            <tr>
                <td style="text-align: center">
                    <br />
                    <asp:Button ID="Button2" CssClass="button-3d" runat="server" Text="Update Info" OnClick="Button2_Click" />
                    <br />
                    <br />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button3" CssClass="button-3d" runat="server" Text="See Reservations" OnClick="Button3_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button4" CssClass="button-3d" runat="server" Text="User Info" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
        <div style="text-align: center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" CssClass="button-3d" Text="Employee Information" OnClick="Button6_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" CssClass="button-3d" Text="Menu" OnClick="Button5_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button7" runat="server" CssClass="button-3d" Text="Change Password" OnClick="Button7_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="button-3d" Text="Logout" OnClick="Button1_Click" />
        </div>
    
    </div>
    </form>
     
</body>
</html>
