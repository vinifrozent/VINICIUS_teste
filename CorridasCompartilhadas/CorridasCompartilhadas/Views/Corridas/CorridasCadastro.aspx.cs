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

namespace CorridasCompartilhadas.Views.CorridasCadastro
{
    public partial class CorridasCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CorridasController getMotoristasAndPassageiros = new CorridasController();
                var tableMotoristas = getMotoristasAndPassageiros.getAllMotoristas();
                var tablePassageiros = getMotoristasAndPassageiros.getAllPassageiros();

                if (tableMotoristas != null)
                {
                    var consulta = from motorista in tableMotoristas.AsEnumerable() select motorista;

                    foreach (var dr in consulta)
                    {
                        string name = dr.Field<string>("FirstName") + " " + dr.Field<string>("LastName");
                        selectMotorista.Items.Add(new ListItem(name,dr.Field<int>("IdMotorista").ToString()));
                    }
                }

                if (tablePassageiros != null)
                {
                    var consulta = from passageiro in tablePassageiros.AsEnumerable() select passageiro;

                    foreach (var dr in consulta)
                    {
                        string name = dr.Field<string>("FirstName") + " " + dr.Field<string>("LastName");
                        selectPassageiro.Items.Add(new ListItem(name, dr.Field<int>("IdPassageiro").ToString()));
                    }
                }
            }
        }
        protected void BtnCadastro_Click(object sender, EventArgs e)
        {
            try
            {
                CorridasController actionCreateCorrida = new CorridasController();

                Corridas corridas = new Corridas();

                corridas.ValorCorrida = inputValor.Text;
                corridas.Origem = inputCidadeOrigem.Text;
                corridas.EstadoOrigem = selectUfOrigem.Value.ToString();
                corridas.Destino = inputCidadeFinal.Text;
                corridas.EstadoDestino = selectUfFinal.Value.ToString();
                corridas.IdMotorista = Convert.ToInt32(selectMotorista.Value.ToString());
                corridas.IdPassageiro = Convert.ToInt32(selectPassageiro.Value.ToString());

                actionCreateCorrida.Create(corridas);
                cleanCampos();
                ClientScript.RegisterStartupScript(GetType(), "teste", "succesCadastro();", true);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        public void cleanCampos()
        {
            inputValor.Text = string.Empty;
            inputCidadeOrigem.Text = string.Empty;
            inputCidadeFinal.Text = string.Empty;
            selectMotorista.SelectedIndex = -1;
            selectPassageiro.SelectedIndex = -1;
            selectUfFinal.SelectedIndex = -1;
            selectUfOrigem.SelectedIndex = -1;
        }
    }
}