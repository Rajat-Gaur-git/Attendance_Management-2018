using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Registeration : System.Web.UI.Page
{
    SqlConnection cn = Class1.getconnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = cn;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        FileUpload1.SaveAs(Server.MapPath("../Attendence_Management/StuPics")+"/"+FileUpload1.FileName);
        Literal1.Text = "../Attendence_Management/StuPics" + "/"+FileUpload1.FileName;
        cmd.CommandText = "insert into Student values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "'," + TextBox5.Text + "," + TextBox6.Text + ",'" + TextBox7.Text + "','" + FileUpload1.FileName + "')";
        cmd.ExecuteNonQuery();
        cmd.CommandText = "insert into Login values('" + TextBox1.Text.Replace("'", "''") + "','" + TextBox7.Text.Replace("'", "''") + "','stu')";
        cmd.ExecuteNonQuery(); 
        Literal1.Text = "Record Saved";
        

        cn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }

    
}