using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CorridasCompartilhadas.DAL;
using CorridasCompartilhadas.Model;

namespace CorridasCompartilhadas.Controllers
{
    public class MotoristasController : Controller
    {
        private DatabaseContext db = new DatabaseContext();

        // GET: Motoristas
        public ActionResult Index()
        {
            var motoristas = db.Motoristas.Include(m => m.Usuarios);
            return View(motoristas.ToList());
        }

        // GET: Motoristas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Motoristas motoristas = db.Motoristas.Find(id);
            if (motoristas == null)
            {
                return HttpNotFound();
            }
            return View(motoristas);
        }

        public DataTable getAllMotoristas()
        {
            try
            {

                string queryString = "SELECT Motoristas.IdMotorista, Usuarios.FirstName, Usuarios.LastName, Usuarios.DataNascimento, Usuarios.CPF,Usuarios.Sexo, Usuarios.Telefone, Motoristas.ModeloCarro, Motoristas.Placa FROM Usuarios INNER JOIN Motoristas ON Motoristas.IdUsuario = Usuarios.IdUsuario";
                string connectionString = "data source=DESKTOP-H0IUICA;initial catalog=CorridasCompartilhadas;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";

                DataTable Motoristas = new DataTable();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, connection))
                    {
                        connection.Open();
                        using (SqlDataAdapter reader = new SqlDataAdapter(cmd))
                        {
                            if (reader != null)
                            {
                                reader.Fill(Motoristas);
                                return Motoristas;
                            }
                            return null;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // GET: Motoristas/Create
        public ActionResult Create()
        {
            ViewBag.IdMotoristaUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName");
            return View();
        }

        // POST: Motoristas/Create
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdMotorista,ModeloCarro,Placa,IdMotoristaUsuario")] Motoristas motoristas)
        {
            if (ModelState.IsValid)
            {
                db.Motoristas.Add(motoristas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdMotoristaUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName", motoristas.IdUsuario);
            return View(motoristas);
        }

        // GET: Motoristas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Motoristas motoristas = db.Motoristas.Find(id);
            if (motoristas == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdMotoristaUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName", motoristas.IdUsuario);
            return View(motoristas);
        }

        // POST: Motoristas/Edit/5
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdMotorista,ModeloCarro,Placa,IdMotoristaUsuario")] Motoristas motoristas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(motoristas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdMotoristaUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName", motoristas.IdUsuario);
            return View(motoristas);
        }

        // GET: Motoristas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Motoristas motoristas = db.Motoristas.Find(id);
            if (motoristas == null)
            {
                return HttpNotFound();
            }
            return View(motoristas);
        }

        // POST: Motoristas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Motoristas motoristas = db.Motoristas.Find(id);
            db.Motoristas.Remove(motoristas);
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
