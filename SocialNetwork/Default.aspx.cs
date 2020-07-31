using System;
using System.Web.Security;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SocialNetwork
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dobCalendar.EndDate = DateTime.Now;

            // if logged in, redirect to default page.
            if (Request.IsAuthenticated)
            {
                Response.Redirect("~/dashboard");
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //TODO: Implement your own logic to verify credentials. For now, verification is hard-coded.

            // Three valid username/password pairs: reiner/password, rein/password, and reins/password.
            string[] users = { "reiner", "rein", "reins" };
            string[] passwords = { "password", "password", "password" };
            for (int i = 0; i < users.Length; i++)
            {
                bool validUsername = (string.Compare(txtUsername.Text, users[i], true) == 0);
                bool validPassword = (string.Compare(txtPassword.Text, passwords[i], false) == 0);
                if (validUsername && validPassword)
                {
                    FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, cbxRememberMe.Checked);
                }
            }
            // If we reach here, the user's credentials were invalid
            lblLoginAlert.Visible = true;
        }
    }
}