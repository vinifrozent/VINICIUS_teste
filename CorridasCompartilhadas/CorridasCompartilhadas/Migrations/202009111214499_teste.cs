namespace CorridasCompartilhadas.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class teste : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Corridas",
                c => new
                    {
                        IdCorrida = c.Int(nullable: false, identity: true),
                        ValorCorrida = c.String(nullable: false),
                        Origem = c.String(nullable: false),
                        EstadoOrigem = c.String(nullable: false),
                        Destino = c.String(nullable: false),
                        EstadoDestino = c.String(nullable: false),
                        IdMotorista = c.Int(nullable: false),
                        IdPassageiro = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdCorrida)
                .ForeignKey("dbo.Motoristas", t => t.IdMotorista, cascadeDelete: true)
                .ForeignKey("dbo.Passageiros", t => t.IdPassageiro, cascadeDelete: true)
                .Index(t => t.IdMotorista)
                .Index(t => t.IdPassageiro);
            
            CreateTable(
                "dbo.Motoristas",
                c => new
                    {
                        IdMotorista = c.Int(nullable: false, identity: true),
                        ModeloCarro = c.String(nullable: false),
                        Placa = c.String(nullable: false),
                        IdUsuario = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdMotorista)
                .ForeignKey("dbo.Usuarios", t => t.IdUsuario, cascadeDelete: true)
                .Index(t => t.IdUsuario);
            
            CreateTable(
                "dbo.Usuarios",
                c => new
                    {
                        IdUsuario = c.Int(nullable: false, identity: true),
                        FirstName = c.String(nullable: false),
                        LastName = c.String(nullable: false),
                        CPF = c.String(nullable: false),
                        DataNascimento = c.DateTime(nullable: false),
                        Sexo = c.String(nullable: false),
                        Telefone = c.String(nullable: false),
                        Status = c.Boolean(nullable: false),
                        TipoUsuario = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdUsuario);
            
            CreateTable(
                "dbo.Passageiros",
                c => new
                    {
                        IdPassageiro = c.Int(nullable: false, identity: true),
                        IdUsuario = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdPassageiro)
                .ForeignKey("dbo.Usuarios", t => t.IdUsuario, cascadeDelete: false)
                .Index(t => t.IdUsuario);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Corridas", "IdPassageiro", "dbo.Passageiros");
            DropForeignKey("dbo.Passageiros", "IdUsuario", "dbo.Usuarios");
            DropForeignKey("dbo.Corridas", "IdMotorista", "dbo.Motoristas");
            DropForeignKey("dbo.Motoristas", "IdUsuario", "dbo.Usuarios");
            DropIndex("dbo.Passageiros", new[] { "IdUsuario" });
            DropIndex("dbo.Motoristas", new[] { "IdUsuario" });
            DropIndex("dbo.Corridas", new[] { "IdPassageiro" });
            DropIndex("dbo.Corridas", new[] { "IdMotorista" });
            DropTable("dbo.Passageiros");
            DropTable("dbo.Usuarios");
            DropTable("dbo.Motoristas");
            DropTable("dbo.Corridas");
        }
    }
}
