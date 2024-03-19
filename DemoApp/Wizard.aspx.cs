using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class Wizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void StepChanged(object sender, EventArgs e)
        {
            Label1.Text += "<br /><b>Steps changed.<b />";
        }

        // Fires when Side bar links are clicked
        protected void SideBarLinksClicked(object sender, EventArgs e)
        {
            Label1.Text = "<b>Side bar link clicked.<b />";
        }

        // Fires when Finish button clicked
        protected void FinishButtonClicked(object sender, WizardNavigationEventArgs e)
        {
            Label1.Text = "Following are your details: <br />" +
                "Name: " + txtName.Text + "<br />" +
                "Contact Number: " + txtNumber.Text + "<br />" +
                "Email: " + txtEmail.Text + "<br />" +
                "Address: " + txtAddress.Text + "<br />" +
                "City: " + txtCity.Text;
        }
    }
}