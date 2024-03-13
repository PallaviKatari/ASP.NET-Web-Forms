using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DemoApp
{
    public partial class DataView : System.Web.UI.Page
    {
        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatasetDemo();
                DataViewDemo();
            }
       
        }
        private void DatasetDemo()
        {
            {
                SqlConnection con = new SqlConnection(ConString);
                string strSQL = "Select * from Employees";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds, "Employees");
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        private void DataViewDemo()
        {
            //SqlConnection con = new SqlConnection(ConString);
            //string strSQL = "Select * from Employees";
            //SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
            //DataSet ds = new DataSet();
            //dt.Fill(ds, "Employees");
            //con.Close();
            //DataView dv = new DataView();
            //GridView2.DataSource = ds.Tables[0].DefaultView;
            //GridView2.DataBind();

        }
       
    }
}