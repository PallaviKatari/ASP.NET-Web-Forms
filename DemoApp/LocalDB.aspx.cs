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
    public partial class LocalDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LocalDBDemo;Integrated Security=True;"))
                {
                    SqlDataAdapter sde = new SqlDataAdapter("Select * from Emp", con);
                    //Disconnected Data
                    DataSet ds = new DataSet();
                    sde.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
            }

        }
    }
}