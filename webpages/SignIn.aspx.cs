using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class webpages_SignIn_SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userInfo"] != null)
        {

            Response.Redirect("User.aspx");

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginConnectionString"].ConnectionString);
        con.Open();
        string cmdStr = "select count(*) from nice where Username='" + txtuser.Text + "'";
        SqlCommand Checkuser = new SqlCommand(cmdStr, con);
        int temp = Convert.ToInt32(Checkuser.ExecuteScalar().ToString());
        if(temp == 1)
        {
            string cmdStr2 = "Select Password From nice where Username='" + txtuser.Text + "'";
            SqlCommand pass = new SqlCommand(cmdStr2, con);
            string password = pass.ExecuteScalar().ToString();
            con.Close();
            
            

            if(password == txtpass.Text)
            {
                Session["Login"] = txtuser.Text;

                HttpCookie cookie = new HttpCookie("userInfo");
                cookie["Login"] = txtuser.Text;
                Response.Cookies.Add(cookie);
                cookie.Expires = DateTime.Now.AddMinutes(3);
                Response.Redirect("User.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Password!";
            }
        }
            else
            {
                 Label1.Visible = true;
                Label1.Text = "Invalid Username!";
            }
        }
        

    }
