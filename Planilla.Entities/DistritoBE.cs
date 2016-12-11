using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace Planilla.Entities
{
    [DataContract]
    public class DistritoBE
    {
        [DataMember]
        public int IdDistrito { get; set; }
        
        [DataMember]
        public string distrito { get; set; }
        
        [DataMember]
        public int estado { get; set; }
    }
}
