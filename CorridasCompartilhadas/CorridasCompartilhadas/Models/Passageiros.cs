using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CorridasCompartilhadas.Model
{
    public class Passageiros
    {
        [Key]
        public int IdPassageiro { get; set; }

        [Required]
        public int IdUsuario { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual Usuarios Usuarios { get; set; }

        //public virtual ICollection<Corridas> Corridas { get; set; }
    }
}
