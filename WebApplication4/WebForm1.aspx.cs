using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new
       SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into dev values('" + txtfname.Text + "','" +
           txtlname.Text + "','" + txtcity.Text + "','" + txtgender.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Your Data has been added successfully ";
            Label3.Visible = true;
            Label3.Text = "First Name    : " + txtfname.Text;
            Label4.Visible = true;
            Label4.Text = "LastName      : " + txtlname.Text;
            Label2.Visible = true;
            Label2.Text = "CITY          : " + txtcity.Text;

        }
    }
}
