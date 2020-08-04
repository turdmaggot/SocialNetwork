using System;
using System.Web.Security;
using SocialNetwork.services;
using SocialNetwork.models;


namespace SocialNetwork
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dobCalendar.EndDate = DateTime.Now;

            // if logged in, redirect to dashboard.
            if (Request.IsAuthenticated)
            {
                Response.Redirect("~/dashboard");
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtUsername.Text.Trim();
                User user = UserService.GetUserByUsername(username);
                if (user != null)
                {
                    if (BCrypt.Net.BCrypt.Verify(txtPassword.Text, user.PassHash))
                    {
                        FormsAuthentication.RedirectFromLoginPage(user.UserID, cbxRememberMe.Checked);
                    }
                    else
                    {
                        lblLoginAlert.Text = "Sorry, but your password is incorrect.";
                    }
                }
                else
                {
                    lblLoginAlert.Text = "The user " + username + " does not exist.";
                }
            }
            catch
            {
                lblLoginAlert.Text = "Something went wrong while logging you in. Please try again later.";
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                string newUsername = txtNewUser.Text.Trim();    
                User checkUser = UserService.GetUserByUsername(newUsername);

                if (checkUser != null)
                {
                    lblRegAlert.Text = "Sorry but the username " + newUsername + " is already taken. Please pick another one.";
                    return;
                }
                else
                {
                    string newUserID = UserService.CreateUser(newUsername, txtNewPwd.Text, txtFN.Text, txtLN.Text,
                        ddlGender.SelectedValue, DateTime.Parse(txtDOB.Text.Trim()),
                        int.Parse(ddlCountry.SelectedValue), txtEmail.Text);
                    FormsAuthentication.RedirectFromLoginPage(newUserID, cbxRememberMe.Checked);
                }
            }
            catch
            {
                lblRegAlert.Text = "Sorry. Something went wrong while creating your account. Please try again later.";
            }
        }
    }
}