using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Database;

namespace ExamenProgWeb.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GetProducts()
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.GetProducts();
            return View(resultado);
        }
        [HttpPost]
        public ActionResult ProductsByName(string NombreProd)
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.ProductsByName(NombreProd);
            return View(resultado);
        }
    }
}