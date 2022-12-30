using Microsoft.AspNetCore.DataProtection.KeyManagement;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using ProveTask20.Models;
using Microsoft.Extensions.Logging;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace ProveTask20.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        [HttpGet]
        public IActionResult Index()
        {
            FormClass form = new FormClass();

            return View();
        }
        [HttpPost]
        public IActionResult Index(FormClass form)
        {
            CookieOptions nameCookie = new CookieOptions();

            nameCookie.Expires = DateTime.Now.AddMinutes(5);

            Response.Cookies.Append("Username", form.Username, nameCookie);

            Console.WriteLine("Cookie Value : " + Request.Cookies["Username"]);

            return RedirectToAction("Index");
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        //public ActionResult register()
        //{

        //    var PrefCountries = GetPrefCountries();
        //    var model = new FormClass();
        //    // Get list of SelectListItems
        //    model = GetOptionList(PrefCountries);
        //    return View(model);
        //}

        //[HttpPost]
        //public ActionResult register(FormClass model)
        //{
        //    // Get all roles again
        //    var PrefCountries = GetPrefCountries();
        //    // Set these roles on the model. We need to do this because
        //    // only the selected value from the DropDownList is posted back, not the whole
        //    // list of roles.
        //    model.PrefCountries = GetOptionList(PrefCountries);
        //    // In case everything is fine - i.e. both "Name" and "Role" are entered/selected,
        //    // redirect employee to the "Successful" page, and pass the employee object along via Session
        //    if (Model.Countries.IsValid)
        //    {
        //        Session["FormClass"] = model;
        //        return RedirectToAction("Successful");
        //    }
        //    // Something is not right - so render the registration page again,
        //    // keeping the data employee has entered by supplying the model.
        //    return View("register", model);
        //}

        //public ActionResult Successful()
        //{
        //    // Get Employee Registration information from the session
        //    var model = Session["FormClass"] as FormClass;
        //    // Display Successful.html page that shows Name and selected Role.
        //    return View(model);
        //}
        //private System.Collections.Generic.IEnumerable<string> GetPrefCountries()
        //{
        //    return new List<string>
        //       {"U.S.A","Canada","Astralia", "Japan" };

        //}


        //private IEnumerable<SelectListItem> GetOptionList(IEnumerable<string> elements)
        //{
        //    var PrefCountriesList = new List<SelectListItem>();
        //    foreach (var element in elements)
        //    {
        //        PrefCountriesList.Add(new SelectListItem
        //        {
        //            Value = element,
        //            Text = element
        //        });
        //    }
        //    return PrefCountriesList;
        //}
    }
}

