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
    public partial class SQLBulkInsertUpdate : System.Web.UI.Page
    {

        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Creating Data Table
                DataTable TraineesDataTable = new DataTable("Trainees");
                //Add Columns to the Data Table as per the columns defined in the Table Type Parameter
                DataColumn Id = new DataColumn("Id");
                TraineesDataTable.Columns.Add(Id);
                DataColumn Name = new DataColumn("Name");
                TraineesDataTable.Columns.Add(Name);
                DataColumn Email = new DataColumn("Email");
                TraineesDataTable.Columns.Add(Email);
                DataColumn Mobile = new DataColumn("Mobile");
                TraineesDataTable.Columns.Add(Mobile);
                //Adding Multiple Rows into the DataTable
                //Following Rows are going to be updated
                TraineesDataTable.Rows.Add(100, "Johnny", "johnny@mail.com", "12345");
                TraineesDataTable.Rows.Add(101, "Jane Doe", "janedoe@mail.com", "12345");
                //Following Rows are going to be Inserted
                TraineesDataTable.Rows.Add(104, "Jamie", "jamie@mail.com", "12345");
                TraineesDataTable.Rows.Add(105, "Dean", "dean@mail.com", "11223");
                TraineesDataTable.Rows.Add(106, "Shaun", "shaun@mail.com", "23432");
                //Creating the connection object
                using (SqlConnection connection = new SqlConnection(ConString))
                {
                    //You can pass any stored procedure
                    //Stored Procedure which uses MERGE Function
                    using (SqlCommand cmd = new SqlCommand("SP_Bulk_Insert_Update_Trainees", connection))
                    {
                        //Set the command type as StoredProcedure
                        cmd.CommandType = CommandType.StoredProcedure;
                        //Add the input parameter required by the stored procedure
                        cmd.Parameters.AddWithValue("@Trainees", TraineesDataTable);
                        //Open the connection
                        connection.Open();
                        //Execute the command
                        cmd.ExecuteNonQuery();
                    }
                }
                Response.Write("BULK INSERT UPDATE Successful");
            }
            catch (Exception ex)
            {
                Response.Write($"Exception Occurred: {ex.Message}");
            }
        }
    }
}
