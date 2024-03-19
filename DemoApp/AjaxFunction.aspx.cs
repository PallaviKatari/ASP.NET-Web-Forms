using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class AjaxFunction : System.Web.UI.Page
    {
        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["WebFormsConnectionString3"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConString);
            string qry = "Insert into Customers(Name,Country) Values(@name,@country)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", TextBoxName.Text);
            cmd.Parameters.AddWithValue("@country", TextBoxCountry.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            //The processing happens pretty fast.
            //Therefore, added a line of code to the end of the ButtonSave_Click event to pause the server-side processing.
            //You can simply put the thread to sleep for a few seconds to see the working of UpdateProgress
            System.Threading.Thread.Sleep(2000);
        }
    }
}