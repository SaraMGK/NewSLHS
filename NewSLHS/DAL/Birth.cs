//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewSLHS.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Birth
    {
        public Birth()
        {
            this.Client_Information = new HashSet<Client_Information>();
        }
    
        public int BirthID { get; set; }
        public string PregnancyLength { get; set; }
        public string PregnancyAccident { get; set; }
        public string PregnancyMedication { get; set; }
        public string LaborAnesthetics { get; set; }
        public string DeliveryProblems { get; set; }
        public string BirthWeight { get; set; }
    
        public virtual ICollection<Client_Information> Client_Information { get; set; }
    }
}
