using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Estacionamiento
{
    public partial class Form_Registro_Ingreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack) 
            {
                string patente = txt_patente.Text;
                
                
                Registro pat = new Registro()
                {
                    Patente = patente,
                    Fecha_ingreso = DateTime.Now
                };

                using (EstacionamientoEntities3 a = new EstacionamientoEntities3())
                {
                    a.Registro.Add(pat);
                    a.SaveChanges();
                    Response.Redirect("Nomina-Registro.aspx");
                }                
            }
        }
    }
}