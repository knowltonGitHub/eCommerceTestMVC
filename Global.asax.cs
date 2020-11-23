using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;



//Make an MVC app
//require authentication. registration would be nice but not required.
//simple object - call it what you like.
//required name
//required type of thing. if object was car - type of Economy, truck, full size
//required image saved in the db
//should be a parent child relationship
//parent object must support between 1 to infinite children
//want to see a paginated list with image and name
//search by name
//delete from list
//edit and create - edit/create page should have basic validation - required, max length. image is required.
//provide script to create required db schema

namespace eCommerceGitHub
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}
