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
    
    public partial class Pharynx_Tonsil
    {
        public Pharynx_Tonsil()
        {
            this.Screening_SOAP_Note = new HashSet<Screening_SOAP_Note>();
        }
    
        public int PharynxID { get; set; }
        public int SoftPalate { get; set; }
        public int HardPalate { get; set; }
        public string OcclusionClass1 { get; set; }
        public string OcclusionClass2 { get; set; }
        public Nullable<int> OcclusionClass3 { get; set; }
        public int OcclusionCrossbite { get; set; }
        public string Comments { get; set; }
        public string Teeth { get; set; }
    
        public virtual ICollection<Screening_SOAP_Note> Screening_SOAP_Note { get; set; }
    }
}