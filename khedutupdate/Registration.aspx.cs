using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;


namespace khedutupdate
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            {


                var pn = email.Text;
                SqlConnection db1 = new SqlConnection();
                db1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                //try
                //{
                SqlCommand cmd = new SqlCommand("select * from registration where email=@email", db1);
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                //cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                //cmd1.Parameters.AddWithValue("@F_name", Textfn.Text.Trim());
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = db1;
                db1.Open();
                SqlDataReader drr = cmd.ExecuteReader();
                if (drr.HasRows)
                {
                    //Response.Redirect("managehouse.aspx");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('email is already exist!!');window.location='Registration.aspx';", true);

                }

                else
                {


                    var pn1 = contact.Text;
                    SqlConnection db2 = new SqlConnection();
                    db2.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    //try
                    //{
                    SqlCommand cmd3 = new SqlCommand("select * from registration where contact=@contact", db2);
                    cmd3.Parameters.AddWithValue("@contact", contact.Text.Trim());
                    //cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                    //cmd1.Parameters.AddWithValue("@F_name", Textfn.Text.Trim());
                    cmd3.CommandType = System.Data.CommandType.Text;
                    cmd3.Connection = db2;
                    db2.Open();
                    SqlDataReader drrr = cmd3.ExecuteReader();
                    if (drrr.HasRows)
                    {
                        //Response.Redirect("managehouse.aspx");
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('pleas check your contact number!!');window.location='Registration.aspx';", true);

                    }

                    else
                    {


                        drrr.Close();

                        //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["rashmi"].ToString());

                        SqlCommand cmd1 = new SqlCommand("insert into registration(fullname,address,contact,village,city,district,state,email,password) values(@fullname,@address,@contact,@village,@city,@district,@state,@email,@password)");
                        con.Open();
                        cmd1.Connection = con;
                        cmd1.CommandType = CommandType.Text;

                        cmd1.Parameters.AddWithValue("@fullname", fullname.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@address", address.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@contact", contact.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@village", village.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@city", city.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@district", district.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@state", state.Text.Trim().ToString());
                        //cmd1.Parameters.AddWithValue("@crop", crop.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@email", email.Text.Trim().ToString());
                        cmd1.Parameters.AddWithValue("@password", password.Text.Trim().ToString());

                        int row;
                        try
                        {

                            row = cmd1.ExecuteNonQuery();
                            if (row > 0)
                            {
                                // lbltxt.Text = "<b>data sucess fully enter</b>";
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration Successfully');window.location ='Registration.aspx';", true);

                                //Response.Write("data sucess fully enter");
                                // Response.Redirect("login.aspx");
                            }
                            else
                            {
                                lbltxt.Text = "<b>data sucess fully enter</b>";
                                lbltxt.ForeColor = System.Drawing.Color.DarkSlateBlue;
                            }


                            //else
                            //{
                            //    Response.Write("data not insert");
                            //}
                        }

                        catch (Exception)
                        {
                            throw;

                        }
                        finally

                        {

                            if (con.State == ConnectionState.Open)
                                con.Close();
                        }
                        //fullname.Text = string.Empty;
                        //address.Text = string.Empty;
                        //village.Text = string.Empty;
                        //city.Text = string.Empty;
                        //state.Text = string.Empty;
                        //district.Text = string.Empty;
                        //contact.Text = string.Empty;
                        //email.Text = string.Empty;
                        //password.Text = string.Empty;
                        //cpassword.Text = string.Empty;
                        //crop.Text = string.Empty;


                    }
                }
            }
        }
    }
}
             

        
        //protected void Button2_Click(object sender, EventArgs e)
        //{
            

        //    string st = "";
        //    if (CheckBox1.Checked)
        //    {
        //        st += CheckBox1.Text + ",";
        //    }
        //    if (CheckBox2.Checked)
        //    {
        //        st += CheckBox2.Text + ",";
        //    }
        //    if (CheckBox3.Checked)
        //    {
        //        st += CheckBox3.Text + ",";
        //    }
        //    if (CheckBox4.Checked)
        //    {
        //        st += CheckBox4.Text + ",";
        //    }
        //    if (CheckBox5.Checked)
        //    {
        //        st += CheckBox5.Text + ",";
        //    }
        //    if (CheckBox6.Checked)
        //    {
        //        st += CheckBox6.Text + ",";
        //    }
        //    if (CheckBox7.Checked)
        //    {
        //        st += CheckBox7.Text + ",";
        //    }
        //    if (CheckBox8.Checked)
        //    {
        //        st += CheckBox8.Text + ",";
        //    }

        //    crop.Text = st.ToString();
        //}

    

// protected void crop_SelectedIndexChanged(object sender, EventArgs e)
//{
//Message.Text = "Selected Item(s):<br /><br />";

//// Iterate through the Items collection of the CheckBoxList 
//// control and display the selected items.
//for (int i = 0; i < crop.Items.Count; i++)
//{

//    if (crop.Items[i].Selected)
//    {

//        Message.Text += crop.Items[i].Text + "<br />";

//    }

//}

//}