<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeInformation.aspx.cs" Inherits="EmployeeInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/admin.css" rel="stylesheet" type="text/css" media="all" />	
    <style>    
    .style1
        {
           width: 40%;
           border-style: solid;
           border-width: 1px;
           background-color:Silver;
           height: 152px;
           padding:20px;
           margin:20px auto;
        }
        .style2
        {
           width: 295px;
        }
        .style3
        {
           width: 754px;
        }
   </style>
</head>
<body>
   <form id="form1" runat="server">
   <div>
       <div class="container">
       <table class="style1">
           <tr>
               <td class="style2">
                   &nbsp;</td>
               <td class="style3">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee_Information</td>
           </tr>
           <tr>
               <td class="style2">
                    Name:</td>
               <td class="style3">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="style2">
                    Emp_Id:</td>
               <td class="style3">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
                <td class="style2">
                    Employee role:</td>
               <td class="style3">
                   <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="132px">
                       <asp:ListItem>--SELECT--</asp:ListItem>
                       <asp:ListItem>COOK</asp:ListItem>
                       <asp:ListItem>WAITER</asp:ListItem>
                       <asp:ListItem>SENIOR COOK</asp:ListItem>
                       <asp:ListItem>MANAGER</asp:ListItem>
                       <asp:ListItem>INTERN COOK</asp:ListItem>
                       <asp:ListItem>SENIOR WAITER</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td class="style2">
                   &nbsp;</td>
               <td class="style3">
                   <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
                   <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show"/>
               </td>
           </tr>
       </table>
       <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" RepeatDirection="Vertical"
style="margin-right: 175px; margin-left: 458px" Width="223px">
          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"/>
           <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"/>
           <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510"/>
           <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"/>
           <ItemTemplate>
           <hrsize=0 />
             Name:<%#DataBinder.Eval(Container.DataItem,"name")%><br/>Emp_id:<%#DataBinder.Eval(Container.DataItem,"Emp_id")%></a><br/>Employee role:<%#DataBinder.Eval(Container.DataItem,"Qualification")%><br/>
           </ItemTemplate> 
       </asp:DataList>
   <br />
           </div>
       
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       
   </div>
       <br />
       <br />
       <br />
       <br />
       <br />
       
       <div>
           <p>
                <asp:Button ID="Button3" runat="server" CssClass="button-3d" Text="Return" OnClick="Button3_Click" />
           </p>
          
       </div>
   </form>
</body>
</html>

