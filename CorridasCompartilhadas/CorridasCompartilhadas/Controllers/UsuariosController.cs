using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Services.Description;
using System.Web.UI.WebControls.WebParts;
using CorridasCompartilhadas.DAL;
using CorridasCompartilhadas.Model;

namespace CorridasCompartilhadas.Controllers
{
    public class UsuariosController : Controller
    {
        private DatabaseContext db = new DatabaseContext();

        // GET: Usuarios
        public ActionResult Index()
        {
            return View(db.Usuarios.ToList());
        }

        // GET: Usuarios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usuarios usuarios = db.Usuarios.Find(id);
            if (usuarios == null)
            {
                return HttpNotFound();
            }
            return View(usuarios);
        }

        public List<Usuarios> getAllUsers()
        {
            try
            {

                string queryString = "select IdUsuario, FirstName, LastName, CPF, DataNascimento, Sexo, Telefone, Status, TipoUsuario from Usuarios";
                string connectionString = "data source=DESKTOP-H0IUICA;initial catalog=CorridasCompartilhadas;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";
                List<Usuarios> usuarios = new List<Usuarios>();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using(SqlCommand cmd = new SqlCommand(queryString, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            // Call Read before accessing data.

                            if(reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    usuarios.Add(new Usuarios(){ 
                                    IdUsuario = Convert.ToInt32(reader["IdUsuario"]),
                                    FirstName = reader["FirstName"].ToString(),
                                    LastName = reader["LastName"].ToString(),
                                    DataNascimento = Convert.ToDateTime(reader["DataNascimento"].ToString()),
                                    Sexo = reader["Sexo"].ToString(),
                                    CPF = reader["CPF"].ToString(),
                                    Telefone = reader["Telefone"].ToString(),
                                    Status = Convert.ToBoolean(reader["Status"]),
                                    TipoUsuario = (tipo)(reader["TipoUsuario"])
                                    });
                                }
                            }
                            
                        }
                    }
                }
                    return usuarios;
            }
            catch(Exception ex) 
            {
                throw ex;
            }
        }

        // GET: Usuarios/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Usuarios/Create
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdUsuario,FirstName,LastName,CPF,DataNascimento,Sexo,Telefone,Status,TipoUsuario")] Usuarios usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Usuarios.Add(usuarios);
                //if (usuarios.TipoUsuario.ToString().Equals("Passageiro"))
                //{
                    Passageiros passageiros = new Passageiros();
                    passageiros.IdUsuario = usuarios.IdUsuario;
                    db.Passageiros.Add(passageiros);
                    db.SaveChanges();
                //}          
                return RedirectToAction("Index");
            }

            return View(usuarios);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdMotorista,ModeloCarro,Placa,IdUsuario")] Motoristas motoristas, Usuarios usuarios, string placa, string modelo)
        {
            if (ModelState.IsValid)
            {
                db.Usuarios.Add(usuarios);
                db.Motoristas.Add(motoristas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdMotoristaUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName", motoristas.IdUsuario);
            return View(motoristas);
        }

        // GET: Usuarios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usuarios usuarios = db.Usuarios.Find(id);
            if (usuarios == null)
            {
                return HttpNotFound();
            }
            return View(usuarios);
        }

        // POST: Usuarios/Edit/5
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdUsuario,FirstName,LastName,CPF,DataNascimento,Sexo,Telefone,Status,TipoUsuario")] Usuarios usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(usuarios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(usuarios);
        }

        // GET: Usuarios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usuarios usuarios = db.Usuarios.Find(id);
            if (usuarios == null)
            {
                return HttpNotFound();
            }
            return View(usuarios);
        }

        // POST: Usuarios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Usuarios usuarios = db.Usuarios.Find(id);
            db.Usuarios.Remove(usuarios);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
