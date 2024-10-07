using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MatricuFastWeb.Models
{
    public class Estudiante
    {
        public int EstudianteID { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Carrera { get; set; }
        public int AnioIngreso { get; set; }

        // Campos de auditoría
        public string AdicionadoPor { get; set; }
        public DateTime FechaAdicion { get; set; }
        public string ModificadoPor { get; set; }
        public DateTime? FechaModificacion { get; set; }

        public Estudiante()
        {
            FechaAdicion = DateTime.Now;
        }
    }
}