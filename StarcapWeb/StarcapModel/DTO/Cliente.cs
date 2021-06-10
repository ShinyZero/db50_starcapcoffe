using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarcapModel
{
    public partial class Cliente
    {
        private string rut;
        private string nombre;
        private int nivel;
        private string codigoBebida;

        public string Rut { get => rut; set => rut = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public int Nivel { get => nivel; set => nivel = value; }
        public string CodigoBebida { get => codigoBebida; set => codigoBebida = value; }
    }
}
