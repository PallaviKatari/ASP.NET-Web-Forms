using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class Multilingual : System.Web.UI.Page
    {
        ResourceManager rm;
        CultureInfo ci;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Lang"] == null)
            {
                Session["Lang"] = Request.UserLanguages[0];
            }

            if (!IsPostBack)
            {
                LoadString(); //This function is used to translate languages based on selected languages  
            }
        }

        private void LoadString()
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
            //en-US ta-IN
            rm = new ResourceManager("DemoApp.App_GlobalResources.Lang", Assembly.GetExecutingAssembly()); //we configure resource manages for mapping with resource files in App_GlobalResources folder.  
            ci = Thread.CurrentThread.CurrentCulture;//en-US ta-IN
            lblAddress.Text = rm.GetString("Address", ci); //en-US - Coimbatore
            Label1.Text= rm.GetString("Id", ci);
        }

        protected void ddLang_SelectedIndexChanged(object sender, EventArgs e) //this event for showing selected language.  
        {
            Session["Lang"] = ddLang.SelectedValue; //ta-IN
            LoadString();
        }
    }
}
