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
    public partial class Dataset : System.Web.UI.Page
    {
        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConString))
                {
                    SqlDataAdapter sde = new SqlDataAdapter("Select * from emp28", con);
                    //Disconnected Data
                    DataSet ds = new DataSet();
                    sde.Fill(ds);
                    EmployeeDetails.DataSource = ds;
                    EmployeeDetails.DataBind();
                }
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("Name");
            table.Columns.Add("Email");
            table.Rows.Add("101", "John", "john@example.com");
            table.Rows.Add("102", "Sam", "sam@example.com");
            table.Rows.Add("103", "Dean", "dean@example.com");
            table.Rows.Add("104", "Paul", "paul@example.com");
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select name from Employees", con);
                string result = (string)cmd.ExecuteScalar();
                if (!string.IsNullOrEmpty(result))
                {
                    lblDetails.Text = result;
                }
                else
                {
                    lblDetails.Text = "No value Selected";
                }
                con.Close();
            }

        }

        protected void DataTableDemo()
        {
            // Create a new DataTable
            DataTable table = new DataTable("EmployeeDetails");

            // Add columns to the DataTable
            DataColumn columnID = new DataColumn("EmployeeID", typeof(int));
            DataColumn columnName = new DataColumn("Name", typeof(string));
            DataColumn columnDepartment = new DataColumn("Department", typeof(string));

            // Add the columns to the DataTable
            table.Columns.Add(columnID);
            table.Columns.Add(columnName);
            table.Columns.Add(columnDepartment);

            // Create some rows and add them to the table
            DataRow row1 = table.NewRow();
            row1["EmployeeID"] = 1;
            row1["Name"] = "John Doe";
            row1["Department"] = "HR";

            DataRow row2 = table.NewRow();
            row2["EmployeeID"] = 2;
            row2["Name"] = "Jane Doe";
            row2["Department"] = "IT";

            // Add the rows to the table
            table.Rows.Add(row1);
            table.Rows.Add(row2);

            // Display the contents of the DataTable
            Response.Write("EmployeeID\tName\t\tDepartment" + "<br>");
            foreach (DataRow row in table.Rows)
            {
                Response.Write($"{row["EmployeeID"]}\t\t{row["Name"]}\t\t{row["Department"]}" + "<br>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTableDemo();
        }

        protected void SelectCommandDemo()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConString))
                {

                    SqlDataAdapter da = new SqlDataAdapter("sp_GetEmployees", connection);
                    da.SelectCommand.CommandType = CommandType.StoredProcedure;

                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    foreach (DataRow row in dt.Rows)
                    {
                        Response.Write(row["id"] + ",  " + row["name"] + ",  " + row["email"]+"<br>");
                    }
                }
            }
            catch (Exception e)
            {
                Response.Write("OOPs, something went wrong.\n" + e);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SelectCommandDemo();
        }

        private void UpdateCommandDemo()
        {
            try
            { 
                // Connect to the EmployeeDB database.  
                using (SqlConnection connection = new SqlConnection(ConString))
                {
                    // Create a SqlDataAdapter  
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM EMPLOYEES", connection);
                    //Fetch the Employee Data and Store it in the DataTable
                    DataTable dataTable = new DataTable();
                    //The Fill method will open the connection, fetch the data, fill the data in
                    //the data table and close the connection automatically
                    adapter.Fill(dataTable);
                    // Set the UPDATE command and parameters.
                    string UpdateQuery = "UPDATE Employees SET name=@name  WHERE id=@id;";
                    adapter.UpdateCommand = new SqlCommand(UpdateQuery, connection);
                    adapter.UpdateCommand.Parameters.Add("@name", SqlDbType.VarChar, 50, "name");
                    adapter.UpdateCommand.Parameters.Add("@id", SqlDbType.Int, 4, "id");
                    //Set UpdatedRowSource value as None
                    //Any Returned parameters or rows are Ignored.
                    adapter.UpdateCommand.UpdatedRowSource = UpdateRowSource.None;
                    //Change the Column Values of Few Rows
                    DataRow Row1 = dataTable.Rows[0];
                    Row1["name"] = "John";
                    // Execute the update.  
                    //The Update method will open the connection, execute the Update command by taking
                    //the data table data and then close the connection automatically
                    adapter.Update(dataTable);
                    Response.Write($"Updated Data Saved into the DataBase");
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Exception Occurred: {ex.Message}");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            UpdateCommandDemo();
        }
    }
}