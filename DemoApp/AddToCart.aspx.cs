using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Display the total item count on the webpage
            int totalItems = (int)(Application["TotalItems"] ?? 0);
            //Response.Write("Total Items in Carts: " + totalItems.ToString() + "<br>");
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["Id"]); //2
                DataTable dt = GetData(id); //2
                gvDetails.DataSource = dt;
                gvDetails.DataBind();
            }
        }
        protected void Add(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]); //1
            DataTable dt = GetData(id); //1

            if (Session["Data"] != null)
            {
                DataTable dx = (DataTable)Session["Data"];
                dx.Merge(dt);
                Session["Data"] = dx;
                gvCartItems.DataSource = dx;
                gvCartItems.DataBind();
            }
            else
            {
                Session["Data"] = dt;
                gvCartItems.DataSource = dt;
                gvCartItems.DataBind();
            }
            // Increment total item count in application state
            if (Application["TotalItems"] == null)
            {
                Application["TotalItems"] = 1;
                Response.Write("Total Items in Carts: " + Application["TotalItems"].ToString() + "<br>");
            }
            else
            {
                Application.Lock(); // Lock application state to prevent concurrent access
                Application["TotalItems"] = (int)Application["TotalItems"] + 1;
                Response.Write("Total Items in Carts: " + Application["TotalItems"].ToString() + "<br>");
                Application.UnLock(); // Unlock application state after modification
            }
        }

        protected void Continue(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        private DataTable GetData(int id)//2
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "SELECT * FROM Products WHERE ProductId = @prodid";
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@prodid", id);
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}