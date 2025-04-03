using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Samet_Cakmak_PMTP
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Uygulama başlangıcında çalışan kod
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            // Remove or comment out this entire block if it's causing loops
            // if (Request.Path.ToLower().EndsWith("login.aspx")) return;
            // ...
            // if (!Request.IsAuthenticated) {
            //    Response.Redirect("~/Login.aspx", false);
            //    Context.ApplicationInstance.CompleteRequest();
            // }
        }
    }
}