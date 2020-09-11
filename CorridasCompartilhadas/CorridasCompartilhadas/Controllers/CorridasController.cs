using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Core.EntityClient;
using System.Data.SqlClient;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CorridasCompartilhadas.DAL;
using CorridasCompartilhadas.Model;
using Microsoft.Ajax.Utilities;

namespace CorridasCompartilhadas.Controllers
{
    public class CorridasController : Controller
    {
        private DatabaseContext db = new DatabaseContext();

        // GET: Corridas
        public ActionResult Index()
        {            
            return View(db.Corridas.ToList());
        }

        // GET: Corridas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Corridas corridas = db.Corridas.Find(id);
            if (corridas == null)
            {
                return HttpNotFound();
            }
            return View(corridas);
        }

        public DataTable getAllMotoristas()
        {
            try
            {

                string queryString = "SELECT Motoristas.IdMotorista, Usuarios.IdUsuario, Usuarios.FirstName, Usuarios.LastName FROM Usuarios INNER JOIN Motoristas ON Motoristas.IdUsuario = Usuarios.IdUsuario";
                string connectionString = "data source=DESKTOP-H0IUICA;initial catalog=CorridasCompartilhadas;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";

                DataTable motoristas = new DataTable();
                motoristas.Columns.Add("IdMotorista", typeof(int));
                motoristas.Columns.Add("FirstName", typeof(string));
                motoristas.Columns.Add("LastName", typeof(string));
                motoristas.Columns.Add("IdUsuario", typeof(int));


                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while(reader.Read())
                                {

                                    motoristas.Rows.Add(
                                        Convert.ToInt32(reader["IdMotorista"]),
                                        reader["FirstName"].ToString(),
                                        reader["LastName"].ToString(),
                                        Convert.ToInt32(reader["IdUsuario"])
                                        );
                                }
                                return motoristas;
                            }

                        }
                    }
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getAllPassageiros()
        {
            try
            {
                string queryString = "SELECT Passageiros.IdPassageiro, Usuarios.IdUsuario, Usuarios.FirstName, Usuarios.LastName FROM Usuarios INNER JOIN Passageiros ON Passageiros.IdUsuario = Usuarios.IdUsuario";
                string connectionString = "data source=DESKTOP-H0IUICA;initial catalog=CorridasCompartilhadas;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";

                DataTable passageiros = new DataTable();
                passageiros.Columns.Add("IdPassageiro", typeof(int));
                passageiros.Columns.Add("FirstName", typeof(string));
                passageiros.Columns.Add("LastName", typeof(string));
                passageiros.Columns.Add("IdUsuario", typeof(int));


                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {

                                    passageiros.Rows.Add(
                                        Convert.ToInt32(reader["IdPassageiro"]),
                                        reader["FirstName"].ToString(),
                                        reader["LastName"].ToString(),
                                        Convert.ToInt32(reader["IdUsuario"])
                                        );
                                }
                                return passageiros;
                            }
                        }
                    }
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getAllCorridas()
        {
            try
            {
                string queryString = "Select up.FirstName as pfn, up.LastName as pln, um.FirstName as mfn, um.LastName as mln, m.Placa as Placa, c.ValorCorrida as Valor, "+
                    "c.Origem as Origem, c.EstadoOrigem as ufO, "+
                    "c.Destino as Destino, c.EstadoDestino as ufD from Corridas as c "+
                    "inner join Passageiros as p on p.IdPassageiro = c.IdPassageiro "+
                    "inner join Motoristas as m on m.IdMotorista = c.IdMotorista "+
                    "inner join Usuarios as up on up.IdUsuario = p.IdUsuario "+
                    "inner Join Usuarios as um on um.IdUsuario = m.IdUsuario ";

                string connectionString = "data source=DESKTOP-H0IUICA;initial catalog=CorridasCompartilhadas;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";

                DataTable corridas = new DataTable();
                corridas.Columns.Add("PassFullName", typeof(string));
                corridas.Columns.Add("MotFullName", typeof(string));
                corridas.Columns.Add("Placa", typeof(string));
                corridas.Columns.Add("Valor", typeof(string));
                corridas.Columns.Add("Origem", typeof(string));
                corridas.Columns.Add("ufOrigem", typeof(string));
                corridas.Columns.Add("Destino", typeof(string));
                corridas.Columns.Add("ufDestino", typeof(string));

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {                                    
                                    corridas.Rows.Add(
                                        reader["pfn"].ToString() + " " + reader["pln"].ToString(),
                                        reader["mfn"].ToString() + " " + reader["mln"].ToString(),
                                        reader["Placa"].ToString(),
                                        reader["Valor"].ToString(),
                                        reader["Origem"].ToString(),
                                        reader["ufO"].ToString(),
                                        reader["Destino"].ToString(),
                                        reader["ufD"].ToString()
                                        );
                                }
                                return corridas;
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
        // GET: Corridas/Create
        public ActionResult Create()
        {
            ViewBag.IdCorridaMotorista = new SelectList(db.Motoristas, "IdMotorista", "ModeloCarro");
            return View();
        }

        // POST: Corridas/Create
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdCorrida,ValorCorrida,Origem,EstadoOrigem,Destino,EstadoDestino,IdMotorista")] Corridas corridas)
        {
            if (ModelState.IsValid)
            {
         
                db.Corridas.Add(corridas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(corridas);
        }

        // GET: Corridas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Corridas corridas = db.Corridas.Find(id);
            if (corridas == null)
            {
                return HttpNotFound();
            }
            return View(corridas);
        }

        // POST: Corridas/Edit/5
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdCorrida,ValorCorrida,Origem,EstadoOrigem,Destino,EstadoDestino,CorridaStatus,IdCorridaMotorista,IdCorridaPassageiros")] Corridas corridas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(corridas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(corridas);
        }

        // GET: Corridas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Corridas corridas = db.Corridas.Find(id);
            if (corridas == null)
            {
                return HttpNotFound();
            }
            return View(corridas);
        }

        // POST: Corridas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Corridas corridas = db.Corridas.Find(id);
            db.Corridas.Remove(corridas);
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
