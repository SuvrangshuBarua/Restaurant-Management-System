<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="webpages_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--for-mobile-apps-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<!--//for-mobile-apps-->
<script src="../js/jquery.min.js"></script>
<!---->
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700,300,200' rel='stylesheet' type='text/css'/>
    <style>
.clockStyle {
	background-color:hsl(0, 0%, 18%);
	padding:6px;
	color:#f0f0f5;
	font-family:"Arial Black", Gadget, sans-serif;
    font-size:16px;
    font-weight:bold;
	letter-spacing: 2px;
	display:inline;
}
.formclass
        {
            padding:10px;
            margin:20px;
            background:#a2a2a2;
            width:400px;
            height: 596px;
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="banner">
			<div class="header-top">
				<div class="container">
					<div class="indicat">
						<div id="clockDisplay" class="clockStyle"></div>
<script>
    function renderTime() {
        var currentTime = new Date();
        var diem = "AM";
        var h = currentTime.getHours();
        var m = currentTime.getMinutes();
        var s = currentTime.getSeconds();
        setTimeout('renderTime()', 1000);
        if (h == 0) {
            h = 12;
        } else if (h > 12) {
            h = h - 12;
            diem = "PM";
        }
        if (h < 10) {
            h = "0" + h;
        }
        if (m < 10) {
            m = "0" + m;
        }
        if (s < 10) {
            s = "0" + s;
        }
        var myClock = document.getElementById('clockDisplay');
        myClock.textContent = h + ":" + m + ":" + s + " " + diem;
        myClock.innerText = h + ":" + m + ":" + s + " " + diem;
    }
    renderTime();
</script>
					</div>
					<div class="detail">
						<ul>
                            <li><asp:Button ID="Button1" CssClass="button-3d" runat="server" Text="Logout" OnClick="Button1_Click" /></li>
							<li><asp:Label ID="txtuser" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="container">
				<div class="navigation navi">
					<div class="logo">
						<h1><a href="../index.html">Turno's kitchen</a></h1>
					</div>
					<div class="navigation-right">
						<span class="menu"><img src="../images/menu.png" alt=" " /></span>
						<nav class="link-effect-3" id="link-effect-3">
							<ul class="nav1 nav nav-wil" >
								<li><a data-hover="About" href="../about.aspx">About</a></li>
								<li><a data-hover="Gallery" href="gallary.aspx">Gallery</a></li>
								<li><
                                    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Search"></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="TextBox1" MinimumPrefixLength="1" CompletionInterval="1000" ServiceMethod="GetNames"></ajaxToolkit:AutoCompleteExtender>
                                    <asp:Button ID="Button2" runat="server"  Text="search" OnClick="Button2_Click" />
								</li>
							</ul>
						</nav>
								<!-- script-for-menu -->
									<!--<script>
									    $("span.menu").click(function () {
									        $("ul.nav1").slideToggle(300, function () {
									            // Animation complete.
									        });
									    });
									</script>-->
								<!-- /script-for-menu -->
					</div>
					<div class="clearfix"></div>
				</div>
				
			</div>
		</div>
        <div>

        </div>
    </div>

            
<div class="container">
    <div style="text-align: center">
        <!-- search -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [grid] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" Height="88px" Width="1140px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Image") %>' Width="300px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
    <div class="formclass">
       
  Select Table : <asp:DropDownList ID="DropDownList1" runat="server" Visible="true">
            <asp:ListItem Value="Please Choose">Please Choose</asp:ListItem>
            <asp:ListItem Value="1">Table 1</asp:ListItem>
            <asp:ListItem Value="2">Table 2</asp:ListItem>
            <asp:ListItem Value="3">Table 3</asp:ListItem>
            <asp:ListItem Value="4">Table 4</asp:ListItem>
            <asp:ListItem Value="5">Table 5</asp:ListItem>
            <asp:ListItem Value="6">Table 6</asp:ListItem>
            <asp:ListItem Value="7">Table 7</asp:ListItem>
            <asp:ListItem Value="8">Table 8</asp:ListItem>
        </asp:DropDownList>
        </br></br>
        Customer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></br></br>
        Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="102px"></asp:TextBox>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/images/icon.png" OnClick="ImageButton1_Click" Width="25px" />
                    <br />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" CellPadding="4" Height="187px" Width="313px" BackColor="White" BorderColor="#999999" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
        From:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="Please Choose">Please Choose</asp:ListItem>
            <asp:ListItem Value="0">12 pm</asp:ListItem>
            <asp:ListItem Value="1">1 pm</asp:ListItem>
            <asp:ListItem Value="2">2 pm</asp:ListItem>
            <asp:ListItem Value="3">3 pm</asp:ListItem>
            <asp:ListItem Value="4">4 pm</asp:ListItem>
            <asp:ListItem Value="5">5 pm</asp:ListItem>
            <asp:ListItem Value="6">6 pm</asp:ListItem>
            <asp:ListItem Value="7">7 pm</asp:ListItem>
            <asp:ListItem Value="8">8 pm</asp:ListItem>
            <asp:ListItem Value="9">9 pm</asp:ListItem>
            <asp:ListItem Value="10">10 pm</asp:ListItem>
            <asp:ListItem Value="11">11 pm</asp:ListItem>
            <asp:ListItem Value="12">12 pm</asp:ListItem>
        </asp:DropDownList></br></br>
        To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="Please Choose">Please Choose</asp:ListItem>
            <asp:ListItem Value="0">12 pm</asp:ListItem>
            <asp:ListItem Value="1">1 pm</asp:ListItem>
            <asp:ListItem Value="2">2 pm</asp:ListItem>
            <asp:ListItem Value="3">3 pm</asp:ListItem>
            <asp:ListItem Value="4">4 pm</asp:ListItem>
            <asp:ListItem Value="5">5 pm</asp:ListItem>
            <asp:ListItem Value="6">6 pm</asp:ListItem>
            <asp:ListItem Value="7">7 pm</asp:ListItem>
            <asp:ListItem Value="8">8 pm</asp:ListItem>
            <asp:ListItem Value="9">9 pm</asp:ListItem>
            <asp:ListItem Value="10">10 pm</asp:ListItem>
            <asp:ListItem Value="11">11 pm</asp:ListItem>
            <asp:ListItem Value="12">12 pm</asp:ListItem>
        </asp:DropDownList></br>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Smaller"></asp:Label>
        <br />
        </br>
        <asp:Button ID="Button3" runat="server" Text="Reserve" CssClass="btn-success" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="Check Availability" Width="134px" CssClass="btn-primary" OnClick="Button4_Click"/>
       
        </br>
        </br>
        <asp:Button ID="Button5" runat="server" CssClass="btn-warning" Text="see your reservations" OnClick="Button5_Click" />
       

    </div>
        <div class="content">
			
				<div class="about-w3ls">
					<div class="container">
						<h2 class="tittle">About Us</h2>
						<div class="about-grids">
							<div class="col-md-4 about-grid">
								<img src="../images/a1.jpg" class="img-responsive gray" alt=""/>
							</div>
							<div class="col-md-4 about-grid">
								<img src="../images/a2.jpg" class="img-responsive gray" alt=""/>
							</div>
							<div class="col-md-4 about-grid">
								<h4>Best Ingridients</h4>
								<p>We are always careful about the quality of the ingridients and meats we cook.Best cooks are hired to fullfill your monsterous hunger.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			
				<div class="what-w3">
					<div class="container">
						<h3 class="tittle1">What we do</h3>
						<div class="what-grids">
							<div class="col-md-6 what-grid">
								<img src="../images/g1.jpg" class="img-responsive gray" alt=""/>
								<div class="what-bottom">
									<h4>Best Dishes Served</h4>
									<p>The choices of our delicious menu is according to our valuable customers needs and taste.We always care about your taste and hunger.</p>
								</div>
							</div>
							<div class="col-md-6 what-grid">
								<div class="what-bottom1">
									<h4>Restore Apetite</h4>
									<p>Fullfill your all temptation on food and refreshment on our restaurent. Please leave your feedbacks as they are very important to us.</p>
								</div>
								<img src="../images/g4.jpg" class="img-responsive gray" alt=""/>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>		
			<div class="team">
				<div class="container">
					<h3 class="tittle1">Our Cooks</h3>
					<div class="team-grids">
						<div class="col-md-3 team-gd">
							<img src="../images/t1.jpg" class="img-responsive" alt="">
							
								<h4>Manan Chakma</h4>
									<span>Manager</span>
								<p>Directs the whole system of Turno's Restaurent</p>
								<div class="social-icon">
									<a href="#"><i class="icon1"></i></a>
									<a href="#"><i class="icon2"></i></a>
									<a href="#"><i class="icon3"></i></a>
									<a href="#"><i class="icon"></i></a>
							</div>
						</div>
						<div class="col-md-3 team-gd">
							<img src="../images/t2.jpg" class="img-responsive" alt="">
									<h4>Farhana Mouli</h4>
								<span>Cook</span>
								<p>Best chef in asia renoun for spicy ingridients.</p>
								<div class="social-icon">
									<a href="#"><i class="icon1"></i></a>
									<a href="#"><i class="icon2"></i></a>
									<a href="#"><i class="icon3"></i></a>
									<a href="#"><i class="icon"></i></a>
							</div>
						</div>
						<div class="col-md-3 team-gd">
							<img src="../images/t3.jpg" class="img-responsive" alt="">
								<h4>Maria Rahman</h4>
								<span>Senior Cooks</span>
								<p>Cooks responsively maintaining every possible quality.</p>
								<div class="social-icon">
									<a href="#"><i class="icon1"></i></a>
									<a href="#"><i class="icon2"></i></a>
									<a href="#"><i class="icon3"></i></a>
									<a href="#"><i class="icon"></i></a>
							</div>
						</div>
						<div class="col-md-3 team-gd">
							<img src="../images/t4.jpg" class="img-responsive" alt="">
								<h4>Dhruba Jotee</h4>
								<span>Cook</span>
								<p>Italian best chef in europe.Dedicated and Responsible</p>
								<div class="social-icon">
									<a href="#"><i class="icon1"></i></a>
									<a href="#"><i class="icon2"></i></a>
									<a href="#"><i class="icon3"></i></a>
									<a href="#"><i class="icon"></i></a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>

				</div>
			</div>

			
		</div>
		
			<div class="footer-w3l">
				<div class="container">
					<div class="footer-grids">
						<div class="col-md-3 footer-grid">
							<h4>About</h4>
							<ul>
								<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>516 WEST BSMRH, KUET</li>
								<li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>015-214-884-38</li>
								<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:turnaallow12@gmail.com"> turnaallow12@gmail.com</a></li>
								<li><i class="glyphicon glyphicon-time" aria-hidden="true"></i>Mon-Sun 12:00 pm to 12:00 am</li>
							</ul>
							<div class="social-icon">
								<a href="#"><i class="icon"></i></a>
								<a href="#"><i class="icon1"></i></a>
								<a href="#"><i class="icon2"></i></a>
								<a href="#"><i class="icon3"></i></a>
							</div>
						</div>
						<div class="col-md-3 footer-grid">
							<h4>Our Special</h4>
							<ul>
								<li>Hydrabadi biriyani</li>
								<li>Chicken biriyani</li>
								<li>Dahi Fuchka</li>
								<li>Masala Pani Puri</li>
								<li>Paneer Tikka</li>
								
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4>Popular</h4>
							<ul>
								<li>Desserts</li>
								<li>Biriyani</li>
								<li>Chicken</li>
								<li>Pizza</li>
								<li>Burger</li>
								
							</ul>
						</div>
						
						<div class="clearfix"></div>
					</div>
				</div>
			</div>

      </div>      

    </form>
</body>
</html>
