using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerControl
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:ServerControl1 runat=server></{0}:ServerControl1  >")]

    public class ServerControl1 : WebControl
    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]

        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? "[" + this.ID + "]" : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            if (this.checkpanlindrome())
            {
                output.Write("This is a palindrome: <br />");
                output.Write("<FONT size=5 color=Blue>");
                output.Write("<B>");
                output.Write(Text);
                output.Write("</B>");
                output.Write("</FONT>");
            }
            else
            {
                output.Write("This is not a palindrome: <br />");
                output.Write("<FONT size=5 color=red>");
                output.Write("<B>");
                output.Write(Text);
                output.Write("</B>");
                output.Write("</FONT>");
            }
        }

        protected bool checkpanlindrome()
        {
            if (this.Text != null)
            {
                String str = this.Text;
                String strtoupper = Text.ToUpper();
                char[] rev = strtoupper.ToCharArray();
                Array.Reverse(rev);
                String strrev = new String(rev);

                if (strtoupper == strrev)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    }
}
