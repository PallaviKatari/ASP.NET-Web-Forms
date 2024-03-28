using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class ErrorHandlingDemo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    string selectSQL = "SELECT * FROM EMP2";
                    SqlConnection con = new SqlConnection(ConString);
                    SqlCommand cmd = new SqlCommand(selectSQL, con);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "Employees");
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                catch (Exception)
                {
                    // Log the exception                      
                    Label1.Text = "Unable to fetch records...Please contact Administrator!!!!";
                }
                finally
                {
                }
            }

        }
        protected void Page_Error(object sender, EventArgs e)
        {
            Exception Ex = Server.GetLastError();
            Server.ClearError();
            Response.Redirect("ErrorPage.html");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string selectSQL = "SELECT * FROM PRODUCTS";
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Products");
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
    }
}