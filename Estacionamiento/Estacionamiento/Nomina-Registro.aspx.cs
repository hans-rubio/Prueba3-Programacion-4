using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Estacionamiento
{
    public partial class Nomina_Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (EstacionamientoEntities3 bd = new EstacionamientoEntities3())
            {

                dg_Nomina_Registro.DataSource = bd.Registro.ToList();
                dg_Nomina_Registro.DataBind();
            }
        }
    }
}