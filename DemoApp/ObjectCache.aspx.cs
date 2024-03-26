using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class ObjectCache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                lblinfo.Text += "Page Posted Back.<br/>";
            }
            else
            {
                lblinfo.Text += "page Created.<br/>";
            }

            if (Cache["testitem"] == null)
            {
                lblinfo.Text += "Creating test item.<br/>";
                DateTime testItem = DateTime.Now;
                lblinfo.Text += "Storing test item in cache ";
                lblinfo.Text += "for 30 seconds.<br/>";
                Cache.Insert("testitem", testItem, null,
                DateTime.Now.AddSeconds(30), TimeSpan.Zero);
            }
            else
            {
                lblinfo.Text += "Retrieving test item.<br/>";
                DateTime testItem = (DateTime)Cache["testitem"];
                lblinfo.Text += "Test item is: " + testItem.ToString();
                lblinfo.Text += "<br/>";
            }

            lblinfo.Text += "<br/>";

        }
    }
}