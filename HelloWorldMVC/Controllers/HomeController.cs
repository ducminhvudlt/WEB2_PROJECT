using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HelloWorldMVC.Models;

namespace HelloWorldMVC.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewBag.XinChao = "Chao cac ban, bay gio la: ";
            ViewBag.BayGio = DateTime.Now;
            return View();
        }

        [HttpGet]
        public ActionResult RsvpForm()
        {
            return View();
        }

        [HttpPost]
        public ActionResult RsvpForm(GuestRespone guestRespone)
        {
            if (ModelState.IsValid)
            {
                //string name = guestRespone.Name;
                //string phone = guestRespone.Phone;
                //string email = guestRespone.Email;
                //bool? willattend = guestRespone.WillAttend;
                return View("Thanks",guestRespone);
            }
            else
            {
                return View();
            }
            
            
        }
    }
}