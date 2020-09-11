using CorridasCompartilhadas.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace CorridasCompartilhadas.DAL
{
    public class DatabaseContext :DbContext
    {
        public DatabaseContext() : base("DbContextConnection")
        {

        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Usuarios> Usuarios { get; set; }

        public DbSet<Motoristas> Motoristas { get; set; }

        public DbSet<Passageiros> Passageiros { get; set; }

        public DbSet<Corridas> Corridas{ get; set; }

    }
}