using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Timers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace DemoApp
{
    public partial class Caching : System.Web.UI.Page
    {
        //The Thread.Sleep() method stops the process thread for the specified time.
        //In this example, the thread is stopped for 10 seconds, so when the page is 
        //loaded for first time, it takes 10 seconds.However, next time you refresh the
        //page it does not take any time, as the page is retrieved from the cache without
        //being loaded.
        protected void Page_Load(object sender, EventArgs e)
        {
            Thread.Sleep(10000);
            Response.Write("This page was generated and cache at:" +
            DateTime.Now.ToString());
            lbltime.Text = String.Format("Page posted at: {0}", DateTime.Now.ToLongTimeString());

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<br><br>");
            Response.Write("<h2> Hello, " + this.TextBox1.Text + "</h2>");
        }
    }
}