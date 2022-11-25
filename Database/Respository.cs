using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Database
{
    public class Respository
    {
        //Proveedores

        public List<Supplier> GetSuppliers()
        {
            var Context = new DBMVCEntities();
            return Context.Suppliers.ToList();
        }

        public List<Supplier> SuppliersByName(string NombreProv)
        {
            var Context = new DBMVCEntities();
            var Proveedores = Context.Suppliers.ToList();
            List<Supplier> ProveedoresName = new List<Supplier> { };
            foreach (var item in Proveedores)
            {
                if (item.Name == NombreProv)
                {
                    ProveedoresName.Add(item);
                }
            }
            return ProveedoresName;
        }
        public List<Supplier> SuppliersByCompany(string Empresa)
        {
            var Context = new DBMVCEntities();
            var Proveedores = Context.Suppliers.ToList();
            List<Supplier> ProveedoresCompany = new List<Supplier> { };
            foreach (var item in Proveedores)
            {
                if (item.Company == Empresa)
                {
                    ProveedoresCompany.Add(item);
                }
            }
            return ProveedoresCompany;
        }

        //Vendedores
        public List<Seller> GetSellers()
        {
            var Context = new DBMVCEntities();
            return Context.Sellers.ToList();
        }
        public List<Seller> SellersByName(string NombreVend)
        {
            var Context = new DBMVCEntities();
            var Vendedores = Context.Sellers.ToList();
            List<Seller> VendedoresName = new List<Seller> { };
            foreach (var item in Vendedores)
            {
                if (item.Name == NombreVend)
                {
                    VendedoresName.Add(item);
                }
            }
            return VendedoresName;
        }

        public List<Seller> SellersByState(bool Estado)
        {
            var Context = new DBMVCEntities();
            var Vendedores = Context.Sellers.ToList();
            List<Seller> VendedoresState = new List<Seller> { };
            foreach (var item in Vendedores)
            {
                if (item.State == Estado)
                {
                    VendedoresState.Add(item);
                }
            }
            return VendedoresState;
        }

        //Clientes

        public List<Client> GetClients()
        {
            var Context = new DBMVCEntities();
            return Context.Clients.ToList();
        }
        public List<Client> ClientsByName(string NombreClient)
        {
            var Context = new DBMVCEntities();
            var Clientes = Context.Clients.ToList();
            List<Client> ClientesName = new List<Client> { };
            foreach (var item in Clientes)
            {
                if (item.Name == NombreClient)
                {
                    ClientesName.Add(item);
                }
            }
            return ClientesName;
        }
        public List<Client> ClientsByCompany(string EmpresaClient)
        {
            var Context = new DBMVCEntities();
            var Clientes = Context.Clients.ToList();
            List<Client> ClientesCompany = new List<Client> { };
            foreach (var item in Clientes)
            {
                if (item.Name == EmpresaClient)
                {
                    ClientesCompany.Add(item);
                }
            }
            return ClientesCompany;
        }
            //Productos

            public List<Product> GetProducts()
            {
                var Context = new DBMVCEntities();
                return Context.Products.ToList();
            }
            public List<Product> ProductsByName(string NombreProd)
            {
                var Context = new DBMVCEntities();
                var Productos = Context.Products.ToList();
                List<Product> ProductosName = new List<Product> { };
                foreach (var item in Productos)
                {
                    if (item.NameProduct == NombreProd)
                    {
                        ProductosName.Add(item);
                    }
                }
                return ProductosName;
            }
        }

    }

