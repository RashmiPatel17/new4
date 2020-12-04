using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace khedutupdate
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            DataTable DT = new DataTable();
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from admin where password='" + opwd.Text + "'", cnn);

            SQLAdapter.Fill(DT);
            //SQLAdapter1.Fill(DT);

            if (DT.Rows.Count == 0)
            {
                //lblmsg.Text = "Invalid current password";
                //lblmsg.ForeColor = System.Drawing.Color.Red;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter correct Current password ');window.location ='changepassword.aspx';", true);

            }
            else if (Session["admin"] != null)
            {
                SQLAdapter = new SqlDataAdapter("update admin set password='" + npwd.Text + "' where email='" + Session["admin"].ToString() + "'", cnn);
                SQLAdapter.Fill(DT);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password changed Successfully ');window.location ='changepassword.aspx';", true);

            }

        }
    }
}