using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class AjaxBasicDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDisplayDate.Text = System.DateTime.Now.ToString("T");
            lblDisplayDate1.Text = System.DateTime.Now.ToString("T");

        }

        //protected void btnpartial_Click(object sender, EventArgs e)
        //{
        //    string time = DateTime.Now.ToLongTimeString();
        //    lblpartial.Text = "Showing time from panel" + time;
        //    lbltotal.Text = "Showing time from outside" + time;

        //}

        //protected void btntotal_Click(object sender, EventArgs e)
        //{
        //    string time = DateTime.Now.ToLongTimeString();
        //    lblpartial.Text = "Showing time from panel" + time;
        //    lbltotal.Text = "Showing time from outside" + time;
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:helloWorld(); ", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"var lbl = document.getElementById('lblDisplayDate');");
            sb.Append(@"lbl.style.color='red';");
            sb.Append(@"</script>");

            if (!ClientScript.IsStartupScriptRegistered("JSScript"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());
            }
        }
        protected void btnPostback_Click(object sender, EventArgs e)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"var lbl = document.getElementById('lblDisplayDate1');");
            sb.Append(@"lbl.style.color='blue';");
            sb.Append(@"</script>");

            ScriptManager.RegisterStartupScript(btnPostback, this.GetType(), "JSCR", sb.ToString(), false);

        }
    }
}