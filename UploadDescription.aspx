<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadDescription.aspx.cs" Inherits="UploadDescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload</title>
    <link href="css/admin.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        .auto-style1 {
            width: 46%;
        }
        .auto-style2 {
            width: 770px;
        }
        .auto-style3 {
            width: 770px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
            width: 375px;
        }
        .auto-style5 {
            width: 375px;
        }
    </style>

</head>
<body style="font-weight: 700; font-size: large; color: #000000; background-color: #666666">
    <form id="form1" runat="server">
    <div>
   
        <h1 style="text-align: center; font-size: large">Insert Menu Items Into Database<br />
        </h1>
   
    </div>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">Item name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Description&nbsp; :<asp:TextBox ID="TextBox2" runat="server" Height="22px" style="margin-left: 26px" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Upload image :&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" Height="29px" style="margin-left: 0px; margin-bottom: 4px" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Price :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="23px" style="margin-left: 14px" Width="251px"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" style="margin-left: 5px; top: 0px; left: 0px; width: 99px;" CssClass="button-3d" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" EnableTheming="True" Font-Bold="True" Font-Names="Copperplate Gothic Bold" Font-Size="Large" ForeColor="#333333" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [grid]"></asp:SqlDataSource>
        <div style="text-align: center">
            </br>
            <br />
            <br />
            </br>
            <asp:Button ID="Button2" runat="server" Text="Return" CssClass="button-3d" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
