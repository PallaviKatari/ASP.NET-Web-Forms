using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class ViewStateControlState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if there is a value stored in ViewState and restore it
                if (ViewState["TextBoxValue"] != null)
                {
                    TextBox1.Text = ViewState["TextBoxValue"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Save the value of the TextBox control in ViewState
            ViewState["TextBoxValue"] = TextBox1.Text;
            // Do other processing
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            // Navigate to the destination page with QueryString parameters
            Response.Redirect("ClientSideState.aspx?param1=value1&param2=value2");
        }

        //EXAMPLE WITHOUT VIEWSTATE
        // Declaration of 'a' and 'b'
        public string a, b;

        protected void Button3_Click(object sender, EventArgs e)
        {
            // TextBox2 and TextBox3 values are assigned to the variables 'a' and 'b'
            a = TextBox2.Text;
            b = TextBox3.Text;

            // After clicking on Button, TextBox values will be cleared
            TextBox2.Text = TextBox3.Text = string.Empty;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // Values of variables 'a' and 'b' are assigned to TextBox2 and TextBox3
            TextBox2.Text = a;
            TextBox3.Text = b;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // Value of TextBox4 and TextBox5 is assigned to the ViewState
            ViewState["name"] = TextBox4.Text;
            ViewState["password"] = TextBox5.Text;

            // After clicking on Button, TextBox value will be cleared
            TextBox4.Text = TextBox5.Text = string.Empty;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            // If ViewState values are not null, assign them to TextBoxes
            if (ViewState["name"] != null)
            {
                TextBox4.Text = ViewState["name"].ToString();
            }

            if (ViewState["password"] != null)
            {
                TextBox5.Text = ViewState["password"].ToString();
            }
        }
    }
}