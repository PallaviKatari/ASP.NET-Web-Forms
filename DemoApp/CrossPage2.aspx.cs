using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class CrossPage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)

            {

                TextBox tb = new TextBox(); // this is a object for texbox  
                TextBox tb1 = new TextBox();
                tb = (TextBox)(PreviousPage.FindControl("TextBox1"));//Jane Doe
                tb1 = (TextBox)(PreviousPage.FindControl("TextBox2"));//Jane Doe

                Label1.Text = tb.Text;
                Label2.Text = tb1.Text;


            }
        }
    }
}