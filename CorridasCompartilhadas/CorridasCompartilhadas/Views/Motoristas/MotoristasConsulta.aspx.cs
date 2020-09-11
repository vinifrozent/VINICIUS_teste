using CorridasCompartilhadas.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CorridasCompartilhadas.Views.MotoristasConsulta
{
    public partial class MotoristasConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getMotoristas();
            }
        }
        public void getMotoristas()
        {
            DataTable table = new DataTable();
            MotoristasController getMotorista = new MotoristasController();

            table = getMotorista.getAllMotoristas();

            if (table != null)
            {

                GridView1.DataSource = table;
                GridView1.DataBind();
            }

        }
    }
}