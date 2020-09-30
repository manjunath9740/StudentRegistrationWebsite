using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using MySql.Data.Types;

namespace StudentRegistrationWebsite
{
    public partial class Register : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3307;Initial Catalog=aspcoredb;user Id=root;password= ");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable= false;
                e.Cell.BackColor = System.Drawing.Color.Aquamarine;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" && TextBox2.Text == "" && TextBox3.Text == "" && TextBox4.Text == "" && TextBox5.Text == "" && TextBox6.Text == "")
            {
                Label2.Text = "You Enter All Details Correctly";
            }
            else
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into student(name,class,dob,mothername,fathername,mobilenumber,address) values('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "'," +
                                 "'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "You Registered Successfully!!!!";
            }
            
        }
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox1.Focus();
            TextBox2.Focus();
            TextBox3.Focus();
            TextBox4.Focus();
            TextBox5.Focus();
            TextBox6.Focus();


        }
    }
}
