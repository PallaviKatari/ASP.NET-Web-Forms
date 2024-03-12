using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataviewDemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string ConnectionString = @"Server=CGVAK-LT156\SQLEXPRESS2019;Database=WebForms;Trusted_Connection=True;TrustServerCertificate=True;";
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    //Create the SqlDataAdapter instance by specifying the command text and connection object
                    SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT id,name,email FROM Employees", connection);
                    //Creating DataTable Object
                    DataTable EmployeeDataTable = new DataTable();
                    //Filling the DataTable using the Fill Method of SqlDataAdapter object
                    dataAdapter.Fill(EmployeeDataTable);
                    //Creating DataView instance using DataView Constructor
                    //Initializes a new instance of the DataView class with the specified DataTable.
                    DataView dataView1 = new DataView(EmployeeDataTable);
                    Console.WriteLine("Accessing DataView using For Loop:");
                    for (int i = 0; i < dataView1.Count; i++)
                    {
                        Console.WriteLine($"Id: {dataView1[i]["id"]}, Name: {dataView1[i]["name"]}, Email: {dataView1[i]["email"]}");
                    }
                    //Creating DataView instance using DefaultView property of Data Table
                    DataView dataView2 = EmployeeDataTable.DefaultView;
                    Console.WriteLine("\nAccessing DataView using Foreach Loop:");
                    foreach (DataRowView rowView in dataView2)
                    {
                        DataRow row = rowView.Row;
                        Console.WriteLine($"Id: {row["Id"]}, Name: {row["name"]}");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception Occurred: {ex.Message}");
            }
            Console.ReadKey();
        }
    }
}

