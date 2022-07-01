using System;
using System.Collections.Generic;
using System.Linq; 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    SqlConnection cn = Class1.getconnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = cn;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            string s = "";
            cmd = new SqlCommand("select * from Login where UserName='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                s = dr["Type"].ToString();
                if (s == "Admin")
                {
                    Session["UserName"] = TextBox1.Text;
                    Response.Redirect("Admin/Home.aspx");
                }
                else if (s == "stu")
                {
                    Session["UserName"] = TextBox1.Text;
                    Response.Redirect("Student/Home.aspx");
                }
                else if (s == "Teacher")
                {
                    Session["UserName"] = TextBox1.Text;
                    Response.Redirect("Teacher/Home.aspx");
                }
                else
                {
                    Label1.Text = "Please enter valid user name and password";
                }

            }
            else
            {
                Label1.Text = "Please enter valid user name and password";
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        catch (Exception ex)
        {

            Label1.Text = "You are not Registered";
        }

    }
}