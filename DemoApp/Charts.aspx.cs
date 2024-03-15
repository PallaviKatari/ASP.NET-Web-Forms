using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace DemoApp
{
    public partial class Charts : System.Web.UI.Page
    {
        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from ChartDemo", ConString);
            da.Fill(ds);
            Chart1.DataSource = ds;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D == false)
            {
                Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D == true)
            {
                Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
            }
        }
    }
}