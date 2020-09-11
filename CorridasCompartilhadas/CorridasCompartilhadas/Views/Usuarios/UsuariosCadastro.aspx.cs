using System;
using CorridasCompartilhadas.Model;
using System.Data.Entity;
using CorridasCompartilhadas.Controllers;
using CorridasCompartilhadas.DAL;
using System.Linq;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Data;

namespace CorridasCompartilhadas.Views.UsuariosCadastro
{
    public partial class UsuariosCadastro : System.Web.UI.Page
    {
        private DatabaseContext db = new DatabaseContext();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnCadastro_Click(object sender, EventArgs e)
        {           

            try
            {
                if (!formValidations())
                {
                    Usuarios usuarios = new Usuarios();
                    UsuariosController actionResultController = new UsuariosController();

                    usuarios.FirstName = inputFirstName.Text;
                    usuarios.LastName = inputLastName.Text;

                    var teste = inputDay.SelectedIndex.ToString();

                    var day = inputDay.Value.ToString();
                    var month = inputMonth.Value.ToString();
                    var year = inputYear.Value.ToString();
                    var dateFormat = day + '/' + month + '/' + year;
                    var date = Convert.ToDateTime(dateFormat);
                    usuarios.DataNascimento = date;

                    usuarios.Sexo = selectSexo.Value.ToString();
                    usuarios.CPF = inputCPF.Text;
                    usuarios.Telefone = inputPhone.Text;
                    usuarios.Status = false;

                    if (selectTipoUsuario.Value.Contains("Passageiro"))
                    {
                        usuarios.TipoUsuario = 0;
                        actionResultController.Create(usuarios);
                    }
                        

                    if (selectTipoUsuario.Value.Contains("Motorista"))
                    {
                        string placa = inputPlaca.Text;
                        string modelo = inputModelo.Text;
                        Motoristas motoristas = new Motoristas();
                        usuarios.TipoUsuario = (tipo)1;
                        motoristas.ModeloCarro = inputModelo.Text;
                        motoristas.Placa = inputPlaca.Text;
                        actionResultController.Create(motoristas,usuarios,placa,modelo);
                    }
                    clearAspTxtBox();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void clearAspTxtBox()
        {
            inputFirstName.Text = string.Empty;
            inputLastName.Text = string.Empty;
            inputPhone.Text = string.Empty;
            inputCPF.Text = string.Empty;
            inputModelo.Text = string.Empty;
            inputPlaca.Text = string.Empty;
            selectSexo.SelectedIndex = -1;
            selectTipoUsuario.SelectedIndex = -1;
            inputDay.SelectedIndex = -1;
            inputMonth.SelectedIndex = -1;
            inputYear.SelectedIndex = -1;

            ClientScript.RegisterStartupScript(GetType(), "telefone", "errorTell();", true);
        }

        public bool formValidations()
        {
            string cpf = inputCPF.Text.ToString();
            string tell = inputPhone.Text.ToString();
            string placa = inputPlaca.Text.ToString();

            if (findCpfAndTell(cpf, tell))
                return true;

            if (idadeMotorista())
                return true;

            return false;
        }

        public bool findCpfAndTell(string cpf, string tell)
        {
            UsuariosController getAllUsers = new UsuariosController();
            List<Usuarios> usuarios = new List<Usuarios>();

            usuarios = getAllUsers.getAllUsers();

            Usuarios usuarioCpf = usuarios.Find(x => x.CPF == cpf);

            Usuarios usuarioTell = usuarios.Find(x => x.Telefone == tell);

            if(usuarios.Contains(usuarioCpf))
            {
                ClientScript.RegisterStartupScript(GetType(), "teste", "errorCPF();", true);
                return true;
            }
            if (usuarios.Contains(usuarioTell))
            {
                ClientScript.RegisterStartupScript(GetType(), "teste", "errorTell();", true);
                return true;
            }

            return false;
        }

        public bool idadeMotorista()
        {
            var anoNascimento = Convert.ToInt32(inputYear.Value.ToString());

            if(selectTipoUsuario.Value.Contains("Motorista") && anoNascimento > 2002)
            {
                ClientScript.RegisterStartupScript(GetType(), "teste", "errorIdadeMotorista();", true);
                return true;
            }
            return false;
        }
    }
}