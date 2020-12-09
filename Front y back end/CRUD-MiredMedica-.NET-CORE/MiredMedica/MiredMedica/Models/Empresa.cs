using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MiredMedica.Models
{
    public partial class Empresa
    {
        public Empresa()
        {
            Empleado = new HashSet<Empleado>();
        }

        public int Idempresa { get; set; }
        [Required(ErrorMessage = "Esta campo es necesario")]
        public string Nombre { get; set; }

        public ICollection<Empleado> Empleado { get; set; }
    }
}
