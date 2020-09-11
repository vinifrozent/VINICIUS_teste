using CorridasCompartilhadas.Controllers;
using CorridasCompartilhadas.Model;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CorridasCompartilhadas.Views.CorridasConsulta
{
    public partial class CorridasConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCorridas();
            }
        }

        public void getCorridas()
        {
            DataTable table = new DataTable();
            CorridasController getCorrida = new CorridasController();

            table = getCorrida.getAllCorridas();

            if (table != null)
            {
                GridView1.DataSource = table;
                GridView1.DataBind();
            }

        }

    }
}