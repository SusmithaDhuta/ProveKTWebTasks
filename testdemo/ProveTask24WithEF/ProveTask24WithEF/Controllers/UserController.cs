using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProveTask24WithEF.Models;

namespace ProveTask24WithEF.Controllers
{
    
    public class UserController : Controller
    {
        [HttpGet]
        public ActionResult AddOrEdit(int Id=0)
        {
            user usermodel = new user();

            return View(usermodel);
        }
        [HttpPost]
        public ActionResult AddOrEdit(user usermodel)
        {
            using(MVCDBEntities  mvcdb = new MVCDBEntities())
            {
                mvcdb.users.Add(usermodel);
                mvcdb.SaveChanges();
            }
            ModelState.Clear();
            ViewBag.SuccessMessage = "Registration Successful";
            return View ("AddOrEdit", new user());
        }

      
            public ViewResult Display(int Id)
            {
            MVCDBEntities mvcdb = new MVCDBEntities();
            var user = mvcdb.users.Find(Id);
                return View(user);
            }

        }
    }

