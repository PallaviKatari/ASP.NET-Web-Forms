using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class AjaxCall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string GetData()
        {
            // Simulate getting data from the server
            return "This is the data from the server.";
        }
    }
}