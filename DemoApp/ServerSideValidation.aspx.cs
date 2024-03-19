using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class ServerSideValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ValidateCourse(object source, ServerValidateEventArgs args)
        {
            try
            {
                String str = args.Value;
                str = str.Trim();
                if (str.Equals("MCA") || str.Equals("BCA"))
                    args.IsValid = true;
                else
                    args.IsValid = false;
            }
            catch (Exception ex)
            {
                args.IsValid = false;
            }
        }
    }
}