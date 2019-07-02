<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/admin.css" rel="stylesheet" type="text/css" media="all" />	
    <style>
        .formclass
        {
            padding:20px;
            margin:0px auto;          
            background:#999999;                   
            width:250px;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
        <div class="formclass">
    <div style="color: #000000; background-color: #999999">
    
        <h1>Admin Login:</h1>
        <p>
            admin ID:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="ID requied!!"></asp:RequiredFieldValidator>
        </p>
        <p>
            password:
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Passwoed required"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="color: #FFFFFF; background-color: #333333" Text="Login" />
        </p>
    </div>
    </div>
    </form>
</body>
</html>
