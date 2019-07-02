using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UploadDescription : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["loginConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (Session["Login_"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
            string path = "~//uploads//" + str.ToString();           
            SqlCommand cmd = new SqlCommand("insert into grid values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + path + "','" + TextBox3.Text + "')", con);
            str.Replace("'", "''");
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Information inserted successfully";

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Attemp failed!!";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}