using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class LoginAuthenticate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (FormsAuthentication.Authenticate(Login1.UserName,Login1.Password))
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
            }
            else
            {
                Msg.Text = "Invalid User Name and/or Password";
            }

        }
    }
}