using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;




public partial class webpages_User : System.Web.UI.Page
{
    SqlConnection von = new SqlConnection("Data Source=ADMINRG-Q1509TJ\\SQLEXPRESS;Initial Catalog=log;Persist Security Info=True;User ID=luka;Password=6540");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Calendar1.Visible = false;
        }
        if (Request.Cookies["userInfo"] == null)
        {
            Response.Redirect("../index.aspx");
        }

        if (Request.Cookies["userInfo"] != null)
        {
            HttpCookie cookie = Request.Cookies["userInfo"];
            Session["Login"] = cookie["Login"];

        }

        if (Session["Login"] != null)
        {
            txtuser.Text = "Welcome  " + Session["Login"].ToString();
        }
        if (Session["Login"] != null)
        {
            TextBox2.Text = Session["Login"].ToString();
        }
        

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();


        if (Request.Cookies["userInfo"] != null)
        {
            HttpCookie myCookie = new HttpCookie("userInfo");
            myCookie.Expires = DateTime.Now.AddMinutes(-3);
            Response.Cookies.Add(myCookie);
        }

        Response.Redirect("../index.aspx");

        
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetNames(string prefixText)
    {
        SqlConnection con = new SqlConnection("Data Source=ADMINRG-Q1509TJ\\SQLEXPRESS;Initial Catalog=log;Persist Security Info=True;User ID=luka;Password=6540");
        con.Open();
        SqlCommand cmd = new SqlCommand("select Name from grid where Name like @Name+'%'", con);
        cmd.Parameters.AddWithValue("@Name", prefixText);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        List<string> Name = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Name.Add(dt.Rows[i][0].ToString());
        }
        return Name;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if(Calendar1.Visible == false)
        {
            Calendar1.Visible = true;
        }
        else
        {
            Calendar1.Visible = false;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
            if(DropDownList2.SelectedItem.Value.ToString() == "Please Choose")
            {
                Response.Write("<script>alert('Error Occured')</script>");
            }
            else
            {
                von.Open();
                SqlCommand cmd = new SqlCommand("select * from ReserveTable", von);
                SqlDataReader dr;

                int from = int.Parse(DropDownList2.SelectedItem.Value);
                int to = int.Parse(DropDownList3.SelectedItem.Value);
                int table = int.Parse(DropDownList1.SelectedItem.Value);
                string date = TextBox3.Text;



                int count = 0;


                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    int from1 = dr.GetInt32(dr.GetOrdinal("InTime"));
                    int to1 = dr.GetInt32(dr.GetOrdinal("OutTime"));
                    int table1 = dr.GetInt32(dr.GetOrdinal("TableNo"));
                    string date1 = dr.GetDateTime(dr.GetOrdinal("Date")).ToString();
                    string dat = "";
                    int i = 0;
                    while (date1[i] != ' ') dat += date1[i++];


                    if (table == table1 && date == dat && ((from >= from1 && from <= to1) || (to >= from1 && to <= to1) || (from < from1 && to >to1 )))
                    {
                        count++;
                    }
                    

                }
                dr.Close();
                von.Close();

                if (count != 0)
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Reservation slot not available";
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Blue;
                    Label1.Text = "Reservation successful";
                }


                if (count == 0)
                {
                    SqlCommand xp = new SqlCommand("insert into ReserveTable(TableNo, Customer, Date, InTime, OutTime) values(@TableNo, @Customer, @Date, @InTime, @OutTime)", von);
                    xp.Parameters.AddWithValue("@TableNo", DropDownList1.SelectedItem.Value);
                    xp.Parameters.AddWithValue("@Customer", TextBox2.Text);
                    xp.Parameters.AddWithValue("@Date", TextBox3.Text);
                    xp.Parameters.AddWithValue("@InTime", DropDownList2.SelectedItem.Value);
                    xp.Parameters.AddWithValue("@OutTime", DropDownList3.SelectedItem.Value);

                    von.Open();
                    xp.ExecuteNonQuery();
                    von.Close();
                }
            }
           
        
      
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedItem.Value.ToString() == "Please Choose")
        {
            Response.Write("<script>alert('Error Occured')</script>");
        }
        else
        {
            int[] times = new int[12];

            von.Open();
            SqlCommand cmd = new SqlCommand("select * from ReserveTable", von);
            SqlDataReader dr;

            int table = int.Parse(DropDownList1.SelectedItem.Value);
            string date = TextBox3.Text;




            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int table1 = dr.GetInt32(dr.GetOrdinal("TableNo"));
                string date1 = dr.GetDateTime(dr.GetOrdinal("Date")).ToString();
                string dat = "";
                int i = 0;
                while (date1[i] != ' ') dat += date1[i++];


                if (table == table1 && date == dat)
                {
                    int from1 = dr.GetInt32(dr.GetOrdinal("InTime"));
                    int to1 = dr.GetInt32(dr.GetOrdinal("OutTime"));
                    for (int j = from1; j <= to1; j++) times[j] = 1;
                }

            }

            dr.Close();
            von.Close();
            string x = "";
            if (times[0] == 0) x += 12.ToString() + "pm ";
            for (int i = 1; i <= 11; i++)
            {
                if (times[i] == 0)
                    x += i.ToString() + "pm ";
            }
            Label1.Text = x;
        
           
        }
            
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("../UserReserve.aspx?Login=" + TextBox2.Text);
    }
}
