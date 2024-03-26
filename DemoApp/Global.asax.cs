using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI.DataVisualization.Charting;

namespace DemoApp
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //this event is execute only once when application start and it stores the server memory until the worker process is restart  
            Application["user"] = 0;
            Application["startMessage"] = "The application has started.";
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            //when session in start application variable is increased by 1  
            Application.Lock();
            Application["user"] = (int)Application["user"] + 1;
            Application.UnLock();
        }
        protected void Session_End(object sender, EventArgs e)
        {
            //when session in end application variable is decrease by 1  
            Application.Lock();
            Application["user"] = (int)Application["user"] - 1;
            Application.UnLock();
        }
        protected void Application_End(object sender, EventArgs e)
        {
            Application["endMessage"] = "The application has ended.";
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            HttpException lastErrorWrapper = Server.GetLastError() as HttpException;

            if (lastErrorWrapper.GetHttpCode() == 404)
                Server.Transfer("~/PageNotFound.html");

            Exception exc = Server.GetLastError();
            String str = "";
            str = exc.Message;

            String path = @"E:\AllErrors.txt";
            File.AppendAllText(path, str);
        }
    }
}