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
    public class PassageirosController : Controller
    {
        private DatabaseContext db = new DatabaseContext();

        // GET: Passageiros
        public ActionResult Index()
        {
            var passageiros = db.Passageiros.Include(p => p.Usuarios);
            return View(passageiros.ToList());
        }

        // GET: Passageiros/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Passageiros passageiros = db.Passageiros.Find(id);
            if (passageiros == null)
            {
                return HttpNotFound();
            }
            return View(passageiros);
        }

        public DataTable getAllPassageiro()
        {
            try
            {

                string queryString = "SELECT Passageiros.IdPassageiro, Usuarios.FirstName, Usuarios.LastName, Usuarios.DataNascimento, Usuarios.CPF,Usuarios.Sexo, Usuarios.Telefone FROM Usuarios INNER JOIN Passageiros ON Passageiros.IdUsuario = Usuarios.IdUsuario";
                string connectionString = "data source=DESKTOP-H0IUICA;initial catalog=CorridasCompartilhadas;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";

                DataTable Passageiros = new DataTable();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, connection))
                    {
                        connection.Open();
                        using (SqlDataAdapter reader = new SqlDataAdapter(cmd))
                        {                            
                            if (reader != null)
                            {
                                reader.Fill(Passageiros);
                                return Passageiros;
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

        // GET: Passageiros/Create
        public ActionResult Create()
        {
            ViewBag.IdPassageiroUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName");
            return View();
        }

        // POST: Passageiros/Create
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdPassageiro,IdPassageiroUsuario")] Passageiros passageiros)
        {
            if (ModelState.IsValid)
            {
                db.Passageiros.Add(passageiros);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdPassageiroUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName", passageiros.IdUsuario);
            return View(passageiros);
        }

        // GET: Passageiros/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Passageiros passageiros = db.Passageiros.Find(id);
            if (passageiros == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdPassageiroUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName", passageiros.IdPassageiro);
            return View(passageiros);
        }

        // POST: Passageiros/Edit/5
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdPassageiro,IdPassageiroUsuario")] Passageiros passageiros)
        {
            if (ModelState.IsValid)
            {
                db.Entry(passageiros).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdPassageiroUsuario = new SelectList(db.Usuarios, "IdUsuario", "FirstName", passageiros.IdUsuario);
            return View(passageiros);
        }

        // GET: Passageiros/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Passageiros passageiros = db.Passageiros.Find(id);
            if (passageiros == null)
            {
                return HttpNotFound();
            }
            return View(passageiros);
        }

        // POST: Passageiros/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Passageiros passageiros = db.Passageiros.Find(id);
            db.Passageiros.Remove(passageiros);
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
