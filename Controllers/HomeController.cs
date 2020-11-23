using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace eCommerceGitHub.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

       // POST: Home/Register
       [HttpPost]
        public ActionResult Register(FormCollection collection)
        {
            try
            {
                Models.UsersTable u = new Models.UsersTable();

                CarRentalTables crt = new CarRentalTables();

                DbSet<UsersTable> dbs = crt.UsersTable;

                u = dbs.Create<UsersTable>();

                u.FirstName = collection["FirstName"];
                u.LastName = collection["LastName"];
                u.UserEmail = collection["UserName"];
                u.UserPassword = collection["UserPassword"];
                u.CanRentCar = true;

                eCommerceGitHub.BusinessLayer businessLayer = new BusinessLayer();

                businessLayer.AddNewUser(u);


                return View("Index");
            }
            catch
            {
                return View();
            }
        }

        //[HttpPost]
        //public ActionResult Register(string FirstName, string LastName, string UserName, string UserPassword)
        //{
        //    try
        //    {
        //        User u = new User();

        //        CarRentalTables crt = new CarRentalTables();

        //        DbSet<User> dbs = crt.Users;

        //        u = dbs.Create<User>();

        //        u.FirstName = FirstName;
        //        u.LastName = LastName;
        //        u.UserEmail = UserName;
        //        u.UserPassword = UserPassword;
        //        u.CanRentCar = true;

        //        return View("Index");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        //public ActionResult Login()
        //{
        //    ViewBag.Message = "Login page.";

        //    return View("ModalPopup");

        //   // return View();
        //}

        public ActionResult ModalPopUp()
        {
            return View();
        }
    }
}