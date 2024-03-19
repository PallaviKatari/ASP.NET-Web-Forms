using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class Substitution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected static string GetTime(HttpContext context)
        {
            return DateTime.Now.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(TextBox1.Text))
            {
                Label5.Text = "Please Enter Some Values";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                a = int.Parse(TextBox4.Text);
                b = int.Parse(TextBox1.Text);
            }
        }
        static int a, b;
        public static String GetAdd(HttpContext context)
        {
            return (a + b).ToString();
        }
    }
}