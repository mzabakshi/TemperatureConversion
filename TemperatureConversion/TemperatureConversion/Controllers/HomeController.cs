using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TemperatureConversion.ViewModels; 
using Microsoft.AspNet.Identity;
using TemperatureConversion.Models;

namespace TemperatureConversion.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Index()
        {
            var model = new ConverterViewModel() {
                Celsius = 0,
                Fahrenheit = 32
            };

            return View(model);
        }

        [HttpPost]
        [Authorize]
        public ActionResult Index(ConverterViewModel model)
        {
            if (ModelState.IsValid)
            {
                var userId = User.Identity.GetUserId();
                using (var context = new TemperatureContext()) {
                    context.TemperatureRecords.Add(new TemperatureRecord() {
                        Celsius = model.Celsius,
                        Fahrenheit = model.Fahrenheit,
                        UserId = userId,
                        CreatedDate = DateTime.Today.ToString()
                    });
                    context.SaveChanges();
                }
            }

            return View(model);
        }
        [HttpGet]
        [Authorize]
        public ActionResult Records()
        {
            var model = new List<ConverterViewModel>();
            var userId = User.Identity.GetUserId();
            using (var context = new TemperatureContext())
            {
                var records = context.TemperatureRecords.Where(x => x.UserId == userId);
                foreach (var item in records)
                {
                    model.Add(new ConverterViewModel() {
                        Fahrenheit = item.Fahrenheit,
                        Celsius = item.Celsius,
                        Date = Convert.ToDateTime(item.CreatedDate)
                    });
                }
            }

            return View(model);
        }


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
    }
}