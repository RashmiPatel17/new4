using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace khedutupdate
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        //SqlCommand cmd = new SqlCommand();
        //string query = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand cmd1 = new SqlCommand("insert into media(m_type,source,description,path,datetime,crop) values(@m_type,@source,@description,@path,@datetime,@crop)");
            //con.Open();
            //cmd1.Connection = con;
            //cmd1.CommandType = CommandType.Text;

            //cmd1.Parameters.AddWithValue("@m_type", m_type.Text.Trim().ToString());
            //cmd1.Parameters.AddWithValue("@source", source.Text.Trim().ToString());
            //cmd1.Parameters.AddWithValue("@description", description.Text.Trim().ToString());
            //cmd1.Parameters.AddWithValue("@path", path.ToString());
            //cmd1.Parameters.AddWithValue("@datetime", DateTime.Now);
            //cmd1.Parameters.AddWithValue("@crop", crop.Text.Trim().ToString());


            //int row;
            //try
            //{

            //    row = cmd1.ExecuteNonQuery();
            //    if (row > 0)
            //    {
            //        l1.Text = "<b>data sucess fully enter</b>";

            //        //Response.Write("data sucess fully enter");
            //        // Response.Redirect("login.aspx");
            //    }
            //    else
            //    {
            //        l1.Text = "<b>data sucess fully enter</b>";
            //        l1.ForeColor = System.Drawing.Color.DarkSlateBlue;
            //    }


            //    //else
            //    //{
            //    //    Response.Write("data not insert");
            //    //}
            //}

            //catch (Exception)
            //{
            //    throw;

            //}
            //finally

            //{

            //    if (con.State == ConnectionState.Open)
            //        con.Close();
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (path.HasFile)
            {
                string str = path.FileName;
                path.PostedFile.SaveAs(Server.MapPath(".") + "//image//" + str);
                string a = "~//image//" + str.ToString();

                //cat = DropDownList1.SelectedValue.Trim().ToString();,'" + a.ToString() + "'

                con.Open();
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "";
                //object quantity = null;
                cmd1.CommandText = "insert into media values('" + m_type.Text + "','" + source.Text + "','" + description.Text + "','" + a.ToString() + "','" + DateTime.Now + "','" + crop.Text + "',0)";
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("upload successfully");
            }

            else
            {
                Response.Write("plz upload your image");
            }

            //string fullname;
            //string contact;
            //// string mobileno;
            //// String mycon = "Data Source=(LocalDB)\MSSQLLocalDB; Initial Catalog=|DataDirectory|\Database1.mdf; Integrated Security=True";
            //String myquery = "Select * from registration";
            //// SqlConnection con = new SqlConnection(mycon);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = myquery;
            //cmd.Connection = con;
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = cmd;
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //int nrow;
            //nrow = ds.Tables[0].Rows.Count;
            //int i = 0;
            //while (i < nrow)
            //{
            //    fullname = ds.Tables[0].Rows[i]["fullname"].ToString();
            //    contact = ds.Tables[0].Rows[i]["contact"].ToString();
            //    sendsms(contact, fullname);
            //    ListBox1.Items.Add(contact + " " + fullname);

            //    i = i + 1;
            //}
            //l1.Text = "SMS Sent Successfully to All farmer";
            //con.Close();
            //GridView1.Visible = false;
            //ListBox1.Visible = true;


        }


        //private void sendsms(string mnumber, string sname)
        //{
        //    string destinationaddr = "91" + mnumber;
        //    string message = description.Text;
        //    string result;
        //    String message1 = HttpUtility.UrlEncode(message);
        //    using (var wb = new WebClient())
        //    {
        //        byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
        //        {
        //        {"apikey" , "4fmFHie+FKc-h66RQdUThZN6f9INcuav1KZUhnctQ1"},
        //        {"numbers" , destinationaddr},
        //        {"message" , message1},
        //        {"sender" , "TXTLCL"}
        //        });
        //        result = System.Text.Encoding.UTF8.GetString(response);



        //    }
        //}

        //private void savedata()
        //{
        //    String myquery = "insert into media(m_type,source,description,datetime,crop) values('" + m_type.Text + "','" + source.Text + "','" + description.Text + "','" + DateTime.Now + "','" + crop.Text + "',)";
        //    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        //    //SqlConnection con = new SqlConnection();
        //    con.Open();
        //    SqlCommand cmd1 = new SqlCommand();
        //    cmd1.CommandText = myquery;
        //    cmd1.Connection = con;
        //    cmd1.Parameters.AddWithValue("@source", source.Text);
        //    cmd1.ExecuteNonQuery();

        //    l2.Text = "you have successfully registered for contest-thank you";
        //}
        protected void Button2_Click(object sender, EventArgs e)
        {

          GridView1.Visible = true;
        }
    }
}