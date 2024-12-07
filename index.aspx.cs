using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MelodyHub
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}

namespace MelodyHub
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombre"] == null)
            {
                Response.Redirect("Index.aspx");
            }
        }
        protected void BtnSalir_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}
