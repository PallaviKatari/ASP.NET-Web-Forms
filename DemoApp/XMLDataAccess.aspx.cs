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
    public partial class XMLDataAccess : System.Web.UI.Page
    {
        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Create the connection object
            using (SqlConnection connection = new SqlConnection(ConString))
            {
                //Create a DataSet store XML Data which contains multiple DataTables 
                DataSet dataSet = new DataSet();
                //Complete Path of the XML File
                string XMLFilePath = @"E:\EmployeeDepartmentDetails.xml";
                //Fill The DataSet using the ReadXml Method by passing the Complete XML File Path
                //ReadXml: Reads XML schema and data into the DataSet from the specified XML file.
                dataSet.ReadXml(XMLFilePath);
                //Store the Departments Data in a separate Data table i.e. DepartmentsDataTable
                DataTable DepartmentsDataTable = dataSet.Tables["Department"];
                //Store the Employees Data in a separate Data table i.e. EmployeesDataTable
                DataTable EmployeesDataTable = dataSet.Tables["Employee"];
                //Display the Departments data
                Response.Write("Departments List:"+"<br>");
                foreach (DataRow row in DepartmentsDataTable.Rows)
                {
                    Response.Write($"ID: {row["ID"]}, Name: {row["Name"]}, Location: {row["Location"]}" + "<br>" +"<hr>");
                }
                //Display the Employees data
                Response.Write("\nEmployees List:" + "<br>");
                foreach (DataRow row in EmployeesDataTable.Rows)
                {
                    Response.Write($"ID: {row["ID"]}, Name: {row["Name"]}, Gender: {row["Gender"]},  DepartmentId: {row["DepartmentId"]}"+"<br>");
                }
                //Opening the connection object as we are going to interact with the database
                connection.Open();
                //Copying the Departments DataTable Data into the Departments Database Table
                using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(connection))
                {
                    //Provide the Destination Database Table Name i.e. Departments Database Table
                    sqlBulkCopy.DestinationTableName = "Departments";
                    //Column Mapping is Optional as both Source and Destination same number, name and type of columns
                    sqlBulkCopy.ColumnMappings.Add("ID", "ID");
                    sqlBulkCopy.ColumnMappings.Add("Name", "Name");
                    sqlBulkCopy.ColumnMappings.Add("Location", "Location");
                    //Pass the DataTable whose data you want to copy into the Destination Departments Database Table
                    sqlBulkCopy.WriteToServer(DepartmentsDataTable);
                }
                //Copying the Employees DataTable Data into the Employees Database Table
                using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(connection))
                {
                    //Provide the Destination Database Table Name i.e. Employees Database Table
                    sqlBulkCopy.DestinationTableName = "EmployeeDetails";
                    //Column Mapping is Optional as both Source and Destination same number, name and type of columns
                    sqlBulkCopy.ColumnMappings.Add("ID", "ID");
                    sqlBulkCopy.ColumnMappings.Add("Name", "Name");
                    sqlBulkCopy.ColumnMappings.Add("Gender", "Gender");
                    sqlBulkCopy.ColumnMappings.Add("DepartmentId", "DepartmentId");
                    //Pass the DataTable whose data you want to copy into the Destination Employees Database Table
                    sqlBulkCopy.WriteToServer(EmployeesDataTable);
                }
            }
        }

    }
}
