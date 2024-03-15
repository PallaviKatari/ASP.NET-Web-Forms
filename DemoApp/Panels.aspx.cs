using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class Panels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //make the panel visible
            pnldynamic.Visible = chkvisible.Checked;

            //generating the lable controls:
            int n = Int32.Parse(ddllabels.SelectedItem.Value);
            for (int i = 1; i <= n; i++)
            {
                Label lbl = new Label();
                lbl.Text = "Label" + (i).ToString();
                pnldynamic.Controls.Add(lbl);
                //Literal control is one of the rarely used controls but it is very useful.
                //Literal control is light weight control.
                //The Literal Control is useful when you want to add text to the output of the page dynamically(from the server).
                //With that you can even programmatically manipulate the Literal text from the code behind.
                pnldynamic.Controls.Add(new LiteralControl("<br />"));
            }

            //generating the text box controls:

            int m = Int32.Parse(ddltextbox.SelectedItem.Value);
            for (int i = 1; i <= m; i++)
            {
                TextBox txt = new TextBox();
                txt.Text = "Text Box" + (i).ToString();
                pnldynamic.Controls.Add(txt);
                pnldynamic.Controls.Add(new LiteralControl("<br />"));
            }
        }
    }
}
