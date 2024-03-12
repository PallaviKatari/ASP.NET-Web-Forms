using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace DemoApp
{
    public partial class StoredProcedure : System.Web.UI.Page
    {
        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                FillGrid();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtProductPrice.Text == null || txtProductName.Text == null ||
                txtProductPrice.Text.ToString().Trim().Equals("") || txtProductName.Text.ToString().Trim().Equals(""))
                    lblInfo.Text = "Please enter all fields";
                else
                {
                    con = new SqlConnection(ConString);
                    cmd = new SqlCommand();
                    cmd.Connection = con;
                    con.Open();
                    cmd.CommandText = "sp_AddProducts";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProName", txtProductName.Text.ToString());
                    cmd.Parameters.AddWithValue("@ProPrice", txtProductPrice.Text);
                    cmd.ExecuteNonQuery();

                    //Disconnected Data
                    SqlDataAdapter adapter = new SqlDataAdapter(new SqlCommand("Select ProductName,ProductPrice from Products", con));
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    proDataGrid.DataSource = dt;
                    proDataGrid.DataBind();
                    adapter.Dispose();
                    cmd.Dispose();
                    con.Close();

                    lblInfo.Text = "Added Successfully";
                    txtProductPrice.Text = "";
                    txtProductName.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblInfo.Text = "Error:" + ex.Message.ToString();
            }
        }

        public void FillGrid()
        {
            try
            {
                con = new SqlConnection(ConString);
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(new SqlCommand("Select ProductName,ProductPrice from Products", con));
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                proDataGrid.DataSource = dt;
                proDataGrid.DataBind();
                adapter.Dispose();
                con.Close();
            }
            catch (Exception ex)
            {
                lblInfo.Text = "Error:" + ex.Message.ToString();
            }
        }
    }
}
