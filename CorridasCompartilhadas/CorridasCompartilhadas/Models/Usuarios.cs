using System;
using System.ComponentModel.DataAnnotations;

namespace CorridasCompartilhadas.Model
{
    public class Usuarios
    {
        public Usuarios() {}

        [Key]
        public int IdUsuario { get; set; }

        [Required]
        public string FirstName { get; set; }

        [Required]
        public string LastName { get; set; }

        [Required]
        public string CPF { get; set; }

        [Required]
        public DateTime DataNascimento { get; set; }

        [Required]
        public string Sexo { get; set; }

        [Required]
        public string Telefone { get; set; }

        [Required]
        public bool Status { get; set; }

        [Required]
        public tipo TipoUsuario { get; set; }
    }

    public enum tipo
    {
        Passageiro,
        Motorista
    }
     
}
