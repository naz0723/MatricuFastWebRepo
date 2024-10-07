using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MatricuFastWeb.Models
{
    public class Curso
    {
        public int CursoID { get; set; }
        public string NombreCurso { get; set; }
        public int Creditos { get; set; }
        public int Horas { get; set; }

        // Campos de auditoría
        public string AdicionadoPor { get; set; }
        public DateTime FechaAdicion { get; set; }
        public string ModificadoPor { get; set; }
        public DateTime? FechaModificacion { get; set; }

        public Curso()
        {
            FechaAdicion = DateTime.Now;
        }
    }
}