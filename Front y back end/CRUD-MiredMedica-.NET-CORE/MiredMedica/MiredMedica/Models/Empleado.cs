using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MiredMedica.Models
{
    public partial class Empleado
    {
        public int Idempleado { get; set; }
        [Required (ErrorMessage ="Esta campo es necesario")]
        public string Nombre { get; set; }
        [Required(ErrorMessage = "Esta campo es necesario")]
        public string Paterno { get; set; }
        [Required(ErrorMessage = "Esta campo es necesario")]
        public string Materno { get; set; }
        [Phone (ErrorMessage = "Solo se aceptan numeros")]
        public string Telefono { get; set; }
        [EmailAddress (ErrorMessage ="No cumple con el formato de un correo electronico")]
        public string Correo { get; set; }
        public int? Idempresa { get; set; }

        public Empresa IdempresaNavigation { get; set; }
    }
}
