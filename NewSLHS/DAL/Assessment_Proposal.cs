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
    
    public partial class Assessment_Proposal
    {
        public Assessment_Proposal()
        {
            this.Assessment_Objective = new HashSet<Assessment_Objective>();
        }
    
        public int SessionID { get; set; }
        public int VideoTaped { get; set; }
        public string SupervisionTime { get; set; }
        public string Materials { get; set; }
    
        public virtual ICollection<Assessment_Objective> Assessment_Objective { get; set; }
        public virtual Session Session { get; set; }
    }
}
