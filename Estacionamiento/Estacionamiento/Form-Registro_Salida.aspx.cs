using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Estacionamiento
{
    public partial class Form_Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            hdn_id.Value = Request.QueryString["e_registro"];
            //Int32 valor = Convert.ToInt32(hdn_id.Value);

            //using (EstacionamientoEntities3 db = new EstacionamientoEntities3())
            //{
            //    var he = db.Registro.Where(c => c.Id == valor).FirstOrDefault();
            //    txt_hora_entrada.Text = Convert.ToString(he.Fecha_ingreso);
            //}

        }

        
        protected void btn_ingreso_Click(object sender, EventArgs e)
        {

                string estados = Request.Form["txt_estado"].ToString();
                decimal monto_pagar = Convert.ToDecimal(Request.Form["txt_monto_pagar"].ToString());
                int tiempo = Convert.ToInt16(Request.Form["txt_tiempo"].ToString());


                Registro reg = new Registro()
                {
                    
                    Estado = estados,
                    Monto_Pagar = monto_pagar,
                    Tiempo = tiempo,
                    Fecha_salida = DateTime.Now
                   
                };


                using (EstacionamientoEntities3 est = new EstacionamientoEntities3())
                {
                    est.Registro.Add(reg);
                    est.SaveChanges();
                    Response.Redirect("Nomina-Registro.aspx");
                }
                
        }

        protected void btn_cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Nomina-Registro.aspx");
        }

        
   
    }
}