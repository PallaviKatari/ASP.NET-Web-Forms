using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Warn("Trace Warn Demo");
            Trace.Write("Trace Write Demo");
            //Response.Write("Welcome to Web Forms");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            //Response.Redirect("Contact.aspx");
            Server.Transfer("Contact.aspx");
        }
    }
}