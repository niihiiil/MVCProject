using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Database;

namespace ExamenProgWeb.Controllers
{
    public class SuppliersController : Controller
    {
        // GET: Suppliers
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GetSuppliers()
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.GetSuppliers();
            return View(resultado);
        }
        [HttpPost]
        public ActionResult SuppliersByName(string NombreProv)
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.SuppliersByName(NombreProv);
            return View(resultado);
        }

        [HttpPost]
        public ActionResult SuppliersByCompany(string Empresa)
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.SuppliersByCompany(Empresa);
            return View(resultado);
        }

    }
   
}