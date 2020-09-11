using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CorridasCompartilhadas.Model
{
    public class Corridas
    {
        [Key]
        public int IdCorrida { get; set; }

        [Required]
        public string ValorCorrida { get; set; }
        [Required]
        public string Origem { get; set; }

        [Required]
        public string EstadoOrigem { get; set; }

        [Required]
        public string Destino { get; set; }

        [Required]
        public string EstadoDestino { get; set; }

        [Required]
        public int IdMotorista { get; set; }

        [Required]
        public int IdPassageiro { get; set; }

        [ForeignKey("IdMotorista")]
        public virtual Motoristas Motoristas { get; set; }

        [ForeignKey("IdPassageiro")]
        public virtual Passageiros Passageiros { get; set; }
    }
}
