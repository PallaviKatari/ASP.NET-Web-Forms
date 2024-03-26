using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class ControlState : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (HiddenField1.Value != null)
            {
                int newVal = Convert.ToInt32(HiddenField1.Value) + 1;
                HiddenField1.Value = newVal.ToString();
                Label1.Text = newVal.ToString();
            }
            // Retrieve QueryString parameters and display them
            if (!IsPostBack)
            {
                if (Request.QueryString["param1"] != null && Request.QueryString["param2"] != null)
                {
                    string param1Value = Request.QueryString["param1"];
                    string param2Value = Request.QueryString["param2"];
                    Label2.Text = "Param1: " + param1Value + ", Param2: " + param2Value;
                }
            }

        }

    }
}