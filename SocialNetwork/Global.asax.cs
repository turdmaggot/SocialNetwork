using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace SocialNetwork
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoute(System.Web.Routing.RouteTable.Routes);
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
            new ScriptResourceDefinition
            {
                Path = "/~assets/js/jquery.min.js"
            }
    );
        }

        protected static void RegisterRoute(System.Web.Routing.RouteCollection routeCollection)
        {
            routeCollection.MapPageRoute("home page", "home", "~/Default.aspx");
            routeCollection.MapPageRoute("my dashboard", "dashboard", "~/subpages/Dash.aspx");
            routeCollection.MapPageRoute("reset password", "resetpass", "~/ext/ResetPassword.aspx");
        }
    }
}