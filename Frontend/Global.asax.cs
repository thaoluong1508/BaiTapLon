    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace Frontend
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
           new ScriptResourceDefinition
           {
               Path = "~/scripts/jquery-1.7.2.min.js",
               DebugPath = "~/scripts/jquery-1.7.2.js",
               CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.1.min.js",
               CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.1.js"
           });

            Application.Lock();
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("SL.txt"));
            string s = sr.ReadLine();
            sr.Close();
            Application["SlOnline"] = 0;
            Application["SL"] = s;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application["SL"] = int.Parse(Application["SL"].ToString()) + 1;
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("SL.txt"));
            sw.Write(Application["SL"].ToString());
            sw.Close();
            Application["SlOnline"] = (int)Application["SlOnline"] + 1;

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["SlOnline"] = (int)Application["SlOnline"] - 1;
            Application.UnLock();
        }
    }
}