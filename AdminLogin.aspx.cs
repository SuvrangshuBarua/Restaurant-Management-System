using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (Request.Cookies["userInfo_"] != null)
        {

            Response.Redirect("AdminLogin.aspx");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM admin WHERE ID='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            Session["Login_"] = TextBox1.Text;

            HttpCookie cookie = new HttpCookie("userInfo_");
            cookie["Login_"] = TextBox1.Text;
            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddDays(30d);
            Response.Redirect("AdminPage.aspx");
        }
        else
        {


            Response.Redirect("AdminLogin.aspx");


        }
    }
}