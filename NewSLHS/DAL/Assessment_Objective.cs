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
    
    public partial class Assessment_Objective
    {
        public int AssessmentObjectiveID { get; set; }
        public string Type { get; set; }
        public string Informal { get; set; }
        public string Method { get; set; }
        public int AssessmentProposalID { get; set; }
        public string InformalRationale { get; set; }
        public string Formal { get; set; }
        public string AssessmentTool { get; set; }
        public string FormalRationale { get; set; }
    
        public virtual Assessment_Proposal Assessment_Proposal { get; set; }
    }
}
