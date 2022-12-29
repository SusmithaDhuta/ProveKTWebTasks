

using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using testdemo.Models;

namespace ProveTasksMVC.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]


        [HttpPost]
        public IActionResult Add()
        {

            int number1 = Convert.ToInt32(HttpContext.Request.Form["txtFirst"].ToString());
            int number2 = Convert.ToInt32(HttpContext.Request.Form["txtSecond"].ToString());
            int result = number1 + number2;
            ViewBag.SumResult = result;
            return View("Index");
        }

        public IActionResult sum()
        {
            return View();
        }
    }
}

