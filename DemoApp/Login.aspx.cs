﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username=TextBox1.Text;
            string password=TextBox2.Text;
            if(username=="admin" && password=="admin")
            {
                Response.Redirect("About.aspx");
            }
            else
            {
                Response.Write("Invalid Credentials");
            }
        }
    }
}