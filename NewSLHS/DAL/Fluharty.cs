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
    
    public partial class Fluharty
    {
        public int FluhartyID { get; set; }
        public string Skill { get; set; }
        public decimal RawScore { get; set; }
        public decimal StandardScore { get; set; }
        public int LanguageNotesID { get; set; }
    
        public virtual Language_Notes Language_Notes { get; set; }
    }
}