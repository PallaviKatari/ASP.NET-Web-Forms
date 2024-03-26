using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class LoginDBSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Application["Counter"] == null)
                {
                    Application["Counter"] = 0;
                }

                int counter = (int)Application["Counter"];
                counter++;
                Application["Counter"] = counter;

                Response.Write( "Visits: " + counter+"<br>");
            }
            Response.Write("The num of users online=" + Application["user"].ToString() + "<br>");
            Response.Write(Application["startMessage"].ToString() + "<br>");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
        "Server=CGVAK-LT156\\SQLEXPRESS2019;Database=WebForms;Trusted_Connection=True;TrustServerCertificate=True;");
            SqlCommand cmd = new SqlCommand("select * from LoginSession where Username=@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["name"] = TextBox1.Text; //Jane
                Response.Redirect("Dashboard.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "You're username and word is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}