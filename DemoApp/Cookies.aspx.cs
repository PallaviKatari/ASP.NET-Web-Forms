using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the cookie exists
                if (Request.Cookies["Username"] != null)
                {
                    // Retrieve the value from the cookie and display it
                    string username = Request.Cookies["Username"].Value;
                    UsernameLabel.Text = "Welcome back, " + username + "!";
                }
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Create a new cookie
            HttpCookie cookie = new HttpCookie("Username");
            // Set the value of the cookie
            cookie.Value = UsernameTextBox.Text;
            // Set optional properties like expiration date
            cookie.Expires = DateTime.Now.AddMonths(1);
            // Add the cookie to the response
            Response.Cookies.Add(cookie);
            UsernameLabel.Text = cookie.Value;
            // Display a message
            MessageLabel.Text = "Username saved successfully!";
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            // Check if the cookie exists
            if (Request.Cookies["Username"] != null)
            {
                // Delete the cookie by setting its expiration date to a past date
                HttpCookie cookie = new HttpCookie("Username");
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);//cookie.value=John

                // Display a message
                MessageLabel.Text = "Username cookie deleted!";
                // Clear the displayed username
                UsernameLabel.Text = "";
            }
        }
    }
}