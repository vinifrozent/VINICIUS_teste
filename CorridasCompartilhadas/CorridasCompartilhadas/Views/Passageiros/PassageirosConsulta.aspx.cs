using CorridasCompartilhadas.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CorridasCompartilhadas.Views.PassageirosConsulta
{
    public partial class PassageirosConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getPassageiros();
            }
        }

        public void getPassageiros()
        {
            DataTable table = new DataTable();
            PassageirosController getPassageiros = new PassageirosController();

            table = getPassageiros.getAllPassageiro();

            if (table != null)
            {
                  
                GridView1.DataSource = table;
                GridView1.DataBind();
            }

        }
    }
}