using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class IsPostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["ControlInfo"] = "Test Data";//control is being loaded for the first time
            }
            else
            {
                var expectedControl = ViewState["ControlInfo"];
                Response.Write(expectedControl.ToString());
                // Compare with actual postback source
            }
        }
    }
}