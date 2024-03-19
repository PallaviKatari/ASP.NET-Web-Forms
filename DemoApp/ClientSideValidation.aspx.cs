using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class ClientSideValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string MsgText = "";
            Int32 rsltcount = 0;


            //Age Validation    
            bool ageValStatus = VerifyNumericValue(txtAge.Text);
            if (ageValStatus == false)
            {
                rsltcount += 1;
                MsgText += "Invalid age or age required.</br>";
            }
            if (ageValStatus == true)
            {
                if (Convert.ToDecimal(txtAge.Text) > 100)
                {
                    rsltcount += 1;
                    MsgText += " Check your entered age.</br>";
                }
            }

            //Mobile Validation    
            bool mobileValStatus = VerifyNumericValue(txtMobile.Text);
            if (mobileValStatus == false)
            {
                rsltcount += 1;
                MsgText += "Invalid mobile number or mobile number required.</br>";
            }
            if (mobileValStatus == true)
            {
                if (txtMobile.Text.Length != 10)
                {
                    rsltcount += 1;
                    MsgText += "Check your entered mobile number.</br>";
                }
            }

            //Email ID Validation    
            bool emailidValStatus = VerifyEmailID(txtEmailID.Text);
            if (emailidValStatus == false)
            {
                rsltcount += 1;
                MsgText += "Invalid email id or email id required.</br>";
            }
            lblResultMessage.Font.Bold = false;
            lblResultMessage.Font.Size = 14;
            lblResultMessage.ForeColor = System.Drawing.Color.Red;

        }

        public bool VerifyNumericValue(string ValueToCheck)
        {
            Int32 numval;
            bool rslt = false;

            rslt = Int32.TryParse(ValueToCheck, out numval);

            return rslt;
        }

        public static bool VerifyEmailID(string email)
        {
            string expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, string.Empty).Length == 0)
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