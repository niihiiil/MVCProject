using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Database;

namespace ExamenProgWeb.Controllers
{
    public class ClientsController : Controller
    {
        // GET: Clients
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult GetClients()
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.GetClients(); //declarado en repositorio
            return View(resultado);
        }
        [HttpPost]
        public ActionResult ClientsByName(string NombreClient)
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.ClientsByName(NombreClient);
            return View(resultado);
        }
        [HttpPost]
        public ActionResult ClientsByCompany (string EmpresaCliente)
        {
            var Repositorio = new Database.Respository();
            var resultado = Repositorio.ClientsByCompany(EmpresaCliente);
            return View(resultado);
        }
    }
}