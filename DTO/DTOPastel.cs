using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTOPastel
    {
        public DTOPastel()
        {

        }
        private string nombre;

        public string gsNombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        private int tamanio;

        public int gsTamanio
        {
            get { return tamanio; }
            set { tamanio = value; }
        }

        private int idPastel;

        public int gsIdPastel
        {
            get { return idPastel; }
            set { idPastel = value; }
        }
        private bool estado;

        public bool gsEstado
        {
            get { return estado; }
            set { estado = value; }
        }

    }
}
