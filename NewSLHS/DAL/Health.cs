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
    
    public partial class Health
    {
        public int HealthID { get; set; }
        public int HealthConditon { get; set; }
        public System.DateTime ExaminationDate { get; set; }
        public string Place { get; set; }
        public string Performer { get; set; }
        public string Reason { get; set; }
        public string Referrer { get; set; }
        public string Result { get; set; }
        public string FeedingEatingDifficulites { get; set; }
        public string Attachement { get; set; }
        public int ClientInformationID { get; set; }
        public string FoodAllergy { get; set; }
        public string ExaminationType { get; set; }
        public Nullable<int> Examination { get; set; }
    
        public virtual Client_Information Client_Information { get; set; }
    }
}
