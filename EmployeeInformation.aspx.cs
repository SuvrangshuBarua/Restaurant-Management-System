using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

public partial class EmployeeInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Bind xml data to datalist
            BindDatalist();
        }

        if (Session["Login_"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
    private void BindDatalist()
    {
        XmlTextReader xmlreader = new XmlTextReader(Server.MapPath("Employee.xml"));
        DataSet ds = new DataSet();
        ds.ReadXml(xmlreader);
        xmlreader.Close();
        if (ds.Tables.Count != 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            DataList1.DataSource = null;
            DataList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("Employee.xml"));
        BindDatalist();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("Employee.xml"));
        XmlElement parentelement = xmldoc.CreateElement("Details");
        XmlElement name = xmldoc.CreateElement("Name");
        name.InnerText = TextBox1.Text;
        XmlElement Emp_id = xmldoc.CreateElement("Emp_id");
        Emp_id.InnerText = TextBox2.Text;
        XmlElement Qualification = xmldoc.CreateElement("Qualification");
        Qualification.InnerText = DropDownList1.SelectedItem.Text;
        parentelement.AppendChild(name);
        parentelement.AppendChild(Emp_id);
        parentelement.AppendChild(Qualification);
        xmldoc.DocumentElement.AppendChild(parentelement);
        xmldoc.Save(Server.MapPath("Employee.xml"));
        BindDatalist();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}