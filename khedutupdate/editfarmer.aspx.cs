using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

namespace khedutupdate
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        SqlCommand cmd = new SqlCommand();
        //string query = string.Empty;

        //static String imagelink;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["user"] != null)
                {
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select fullname,address,contact,village,city,district,state,crop,email,password from registration where email='" + Session["user"].ToString() + "' ";
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            fullname.Text = dr["fullname"].ToString();
                            address.Text = dr["address"].ToString();
                            contact.Text = dr["contact"].ToString();
                            village.Text = dr["village"].ToString();
                            city.Text = dr["city"].ToString();
                            district.Text = dr["district"].ToString();
                            state.Text = dr["state"].ToString();
                            crop.Text = dr["crop"].ToString();
                            email.Text = dr["email"].ToString();
                            password.Text = dr["password"].ToString();

                            //image.ImageUrl = dr["image"].ToString();
                            //imagelink = dr["image"].ToString();
                            // image.ImageUrl = imagelink + "?n=" + DateTime.Now.Second.ToString();

                        }
                    }

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //byte[] bytes = Encoding.Default.GetBytes(String);
           // String = Encoding.UTF8.GetString(bytes);

            String updatedata = "Update registration set fullname='" + fullname.Text + "', address='" + address.Text + "', contact='" + contact.Text + "', village='" + village.Text + "', city='" + city.Text + "', district='" + district.Text + "', state='" + state.Text + "', crop='" + crop.Text + "', email='" + email.Text + "', password='" + password.Text + "' where email=@email";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@email", email.Text);
            //cmd.Parameters.AddWithValue("@d_t", DateTime.Now);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Profile Updated Successfully');window.location ='editfarmer.aspx';", true);

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            string st = "";
            if (CheckBox1.Checked)
            {
                st += CheckBox1.Text + ",";
            }
            if (CheckBox2.Checked)
            {
                st += CheckBox2.Text + ",";
            }
            if (CheckBox3.Checked)
            {
                st += CheckBox3.Text + ",";
            }
            if (CheckBox4.Checked)
            {
                st += CheckBox4.Text + ",";
            }
            if (CheckBox5.Checked)
            {
                st += CheckBox5.Text + ",";
            }
            if (CheckBox6.Checked)
            {
                st += CheckBox6.Text + ",";
            }
            if (CheckBox7.Checked)
            {
                st += CheckBox7.Text + ",";
            }
            if (CheckBox8.Checked)
            {
                st += CheckBox8.Text + ",";
            }

            crop.Text = st.ToString();
        }
    }
}