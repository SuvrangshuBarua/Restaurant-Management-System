using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userInfo_"] == null)
        {
            Response.Redirect("index.aspx");
        }
        if (Request.Cookies["userInfo_"] != null)
        {
            HttpCookie cookie = Request.Cookies["userInfo_"];
            Session["Login_"] = cookie["Login_"];

        }
       
         
            if (Session["Login_"] != null)
            {
                Label1.Text = "Welcome  " + Session["Login_"].ToString();
            }           
        
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();

        if (Request.Cookies["userInfo_"] != null)
        {
            HttpCookie myCookie = new HttpCookie("userInfo_");
            myCookie.Expires = DateTime.Now.AddDays(-30d);
            Response.Cookies.Add(myCookie);
        }

        Response.Redirect("index.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("UploadDescription.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReservationReport.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserInfo.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeInformation.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminPass.aspx");
    }
}