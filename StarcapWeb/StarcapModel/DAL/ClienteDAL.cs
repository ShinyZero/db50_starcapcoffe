using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarcapModel.DAL
{
    public class ClienteDAL
    {
        private static List<Cliente> clientes = new List<Cliente>();

        public void Add(Cliente c)
        {
            clientes.Add(c);
        }

        public List<Cliente> GetAll()
        {
            return clientes;
        }

        public void Remove(String rut)
        {
            Cliente cliente = clientes.Find(c=> c.Rut == rut);
            clientes.Remove(cliente);
        }

        public List<Cliente> GetAll(int nivel)
        {
            return clientes.FindAll(c => c.Nivel == nivel);
        }
    }
}
