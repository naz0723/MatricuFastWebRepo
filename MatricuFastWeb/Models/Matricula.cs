using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MatricuFastWeb.Models
{
    public class Matricula
    {
        public int MatriculaID { get; set; }
        public int EstudianteID { get; set; }
        public int CursoID { get; set; }
        public DateTime FechaMatricula { get; set; }

        // Campos de auditoría
        public string AdicionadoPor { get; set; }
        public DateTime FechaAdicion { get; set; }
        public string ModificadoPor { get; set; }
        public DateTime? FechaModificacion { get; set; }

        public Matricula()
        {
            FechaAdicion = DateTime.Now;
        }
    }
}