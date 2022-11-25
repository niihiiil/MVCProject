using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Database;

namespace ExamenProgWeb.Controllers
{
    public class SellerController : Controller
    {
       
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GetSellers()
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.GetSellers(); //declarado en repositorio
            return View(resultado);
        }
        [HttpPost]
        public ActionResult SellersByName(string NombreVend)
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.SellersByName(NombreVend);
            return View(resultado);
        }
        [HttpPost]
        public ActionResult SellersByState(bool Estado)
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.SellersByState(Estado);
            return View(resultado);
        }
    }
}