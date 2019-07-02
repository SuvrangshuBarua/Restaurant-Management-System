<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Turno's kitchen</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<script src="js/jquery.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700,300,200' rel='stylesheet' type='text/css'/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script src="js/jquery.vide.min.js"></script>
	<div data-vide-bg="video/tr">
		<div class="banner">
			<div class="header-top">
				<div class="container">
					<div class="indicat">
						<span><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>516 West BSMRH KUET KHULNA</span>
					</div>
					<div class="detail">
						<ul>
							<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i> + 0 152-148-8438</li>
							<li><i class="glyphicon glyphicon-time" aria-hidden="true"></i> Mon-Sun 12:00 pm to 0:00 am </li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="container">
				<div class="navigation">
					<div class="logo">
						<h1><a href="index.html">Turno's Kitchen</a></h1>
					</div>
					<div class="navigation-right">
						<span class="menu"><img src="images/menu.png" alt=" " /></span>
						<nav class="link-effect-3" id="link-effect-3">
							<ul class="nav1 nav nav-wil">
								<li class="active"><a data-hover="Home" href="index.aspx">Home</a></li>
								
								<li><a data-hover="Register" href="webpages/register.aspx" >Register</a></li>
								
								<li><a data-hover="Signin" href="webpages/SignIn.aspx">Signin</a></li>
								<li><a data-hover="Admin" href="AdminLogin.aspx">Admin</a></li>
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
                    <div>
                    </div>
				</div>
				<div class="w3ls_banner_info">
					<h3>Welcome To  Turno's Kitchen </h3>
					<p>It's my privilege to welcome you all here. All my kuetian brothers and sisters are welcome and as well as my hounourable professors . Happy meal</p>
				</div>
			</div>
		</div>
	</div>
	<!--banner-->
	<!--content-->
	<div class="content">
		<!--best-->
		<div class="best-w3">
			<div class="container">
				<h2 class="tittle">Best Restaurant in Khulna Town </h2>
				<div class="best-grids">
					<div class="col-md-4 best-grid1">
						<img src="images/cookie.jpg" class="img-responsive gray" alt=""/>
					</div>
					<div class="col-md-8 best-grid">
						<h4>what we offer </h4>
						<p>Everything you need to fullfill your hunger.We are always give priority to your choice.</p>
						<div class="best-bottom">
							<div class="col-md-6 best-left">
								<div class="icons">
									<i class="glyphicon glyphicon-cutlery" aria-hidden="true"></i>
								</div>
								<h5>Cook with passion</h5>
								<p>We hired the best chefs of Bangladesh . each chef and assistants are highly trained in management education and well mannered</p>
							</div>
							<div class="col-md-6 best-right">
								<div class="icons">
									<i class="glyphicon glyphicon-filter" aria-hidden="true"></i>
								</div>
								<h5>Best Hygienic Enviorment</h5>
								<p>Every ingridents are best all over the world . We maintain best quality ingridients and veges</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="best-bottom">
							<div class="col-md-6 best-left">
								<div class="icons">
									<i class="glyphicon glyphicon-headphones" aria-hidden="true"></i>
								</div>
								<h5>Best Enviroment</h5>
								<p>Top chefs in Bangladesh cooks with immense passion.Cooking in there blood makes the bond more stronger.</p>
							</div>
							<div class="col-md-6 best-right">
								<div class="icons">
									<i class="glyphicon glyphicon-time" aria-hidden="true"></i>
								</div>
								<h5>No Waiting</h5>
								<p>We try as soon as possible to serve our delicious meal to you.Its our great privilege to serve you.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--best-->
		<!--menu-->
		
			<div class="container">
				<h3 class="tittle1">Special Menu</h3>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [Name], [Description], [Image], [Price] FROM [grid]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" Height="1140px" Width="1200px">
                    <Columns>
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
			
		
		<!--menu-->
		<!--special dishes-->
			<div class="dishes-w3ls">
				<div class="container">
					<h3 class="tittle1">Featured Dishes</h3>
					<div class="dishes-grids">
						<div class="col-md-8 dishes-grid1">
							<div class="dishes-top">
								<div class="col-md-6 dishes-left">
									<img src="images/d1.jpg" class="img-responsive gray" alt=""/>
								</div>
								<div class="col-md-6 dishes-right">
									<img src="images/d2.jpg" class="img-responsive gray" alt=""/>
									<img src="images/d3.jpg" class="img-responsive gray" alt=""/>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-md-4 dishes-grid">
							<img src="images/d4.jpg" class="img-responsive gray" alt=""/>
								<h4>special dishes</h4>
							<p>Tuna pasta salad
                                </br>
                               Persian noodles
                                
							</p>
								<a href="#" class="button1 hvr-sweep-to-top">500৳</a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<!--special dishes-->
	</div>
		<!--footer-->
			
		<!--footer-->
		<!--copy-->
			<div class="copy-section">
				<div class="container">
					<div class="footer-top">
						<p>&copy; 2017 Roasting. All rights reserved | Design by Turno</p>
					</div>
				</div>
			</div>
		<!--copy-->
    </div>
    </form>
</body>
</html>
