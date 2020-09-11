using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CorridasCompartilhadas.Model
{
    public class Motoristas
    {
        [Key]
        public int IdMotorista { get; set; }

        [Required]
        public string ModeloCarro { get; set; }

        [Required]
        public string Placa { get; set; }

        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuarios Usuarios { get; set; }

        //public virtual ICollection<Corridas> Corridas { get; set; }
    }
}
