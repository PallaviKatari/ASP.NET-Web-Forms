using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class ADOBasics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CreateTable();
        }
        public void CreateTable()
        {
            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection("Server=CGVAK-LT156\\SQLEXPRESS2019;Database=WebForms;Trusted_Connection=True;TrustServerCertificate=True;");
                // writing sql query  
                SqlCommand cm = new SqlCommand("create table WebFormTraining(id int not null, name varchar(100))", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();
                // Displaying a message  
                Response.Write("Table created Successfully");
            }
            catch (Exception e)
            {
                Response.Write("OOPs, something went wrong." + e);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }
        public void InsertRecord()
        {
            SqlConnection con = null;
            try
            {
                string name = TextBox4.Text;//John
                int id = Convert.ToInt32(TextBox5.Text);//1
                string email= TextBox6.Text;//john@gmail.com
                string date = TextBox7.Text;//01-01-01
                // Creating Connection  
                con = new SqlConnection("Server=CGVAK-LT156\\SQLEXPRESS2019;Database=WebForms;Trusted_Connection=True;TrustServerCertificate=True;");
                // writing sql query  
                SqlCommand cm = new SqlCommand("insert into Employees (id, name, email, join_date) values (@id,@name,@email,@date)", con);
                cm.Parameters.AddWithValue("@id", id);
                cm.Parameters.AddWithValue("@name", name);
                cm.Parameters.AddWithValue("@email", email);
                cm.Parameters.AddWithValue("@date", date);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();
                // Displaying a message  
                Response.Write("Record Inserted Successfully");
            }
            catch (Exception e)
            {
                Response.Write("OOPs, something went wrong." + e);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            InsertRecord();
        }

        //Read the Connection String from the Configuration File
        string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Button3_Click(object sender, EventArgs e)
        {
            DisplayData();
        }
        public void DisplayData()
        {
            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection(ConString);
                // writing sql query  
                SqlCommand cm = new SqlCommand("Select * from Employees", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                SqlDataReader sdr = cm.ExecuteReader();//Select * from Employees
                Response.Write("EMPLOYEE DETAILS" + "<br>");
                Response.Write("------------------------" + "<br>");
                // Iterating Data  
                while (sdr.Read())
                {                  
                        // Displaying Record  
                        Response.Write(Environment.NewLine);
                        Response.Write(sdr["id"] + " - " + sdr["name"] + " - " + sdr["email"] + " - " + sdr["join_date"] + "<br>");
                }
            }
            catch (Exception e)
            {
                Response.Write("OOPs, something went wrong." + e);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            EditData();
        }

        public void EditData()
        {
            SqlConnection con = null;
            try
            {
                string id=TextBox2.Text;
                string name =TextBox1.Text;
                // Creating Connection  
                con = new SqlConnection(ConString);
                // writing sql query  
                SqlCommand cm = new SqlCommand("UPDATE Employees SET name=@name WHERE id=@id", con);
                cm.Parameters.AddWithValue("@id", id);
                cm.Parameters.AddWithValue("@name", name);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();
                // Displaying a message  
                Response.Write("Record Updated Successfully");
            }
            catch (Exception e)
            {
                Response.Write("OOPs, something went wrong." + e);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            DeleteData();
        }

        public void DeleteData()
        {
            SqlConnection con = null;
            try
            {
                string id = TextBox3.Text;
                // Creating Connection  
                con = new SqlConnection(ConString);
                // writing sql query  
                SqlCommand cm = new SqlCommand("Delete from Employees WHERE id=@id", con);
                cm.Parameters.AddWithValue("@id", id);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();
                // Displaying a message  
                Response.Write("Record Deleted Successfully");
            }
            catch (Exception e)
            {
                Response.Write("OOPs, something went wrong." + e);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }
    }
}