//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Estacionamiento
{
    using System;
    using System.Collections.Generic;
    
    public partial class Registro
    {
        public int Id { get; set; }
        public string Patente { get; set; }
        public Nullable<System.DateTime> Fecha_ingreso { get; set; }
        public Nullable<System.DateTime> Fecha_salida { get; set; }
        public string Estado { get; set; }
        public Nullable<decimal> Tiempo { get; set; }
        public Nullable<decimal> Monto_Pagar { get; set; }
    }
}