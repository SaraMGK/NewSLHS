//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewSLHS
{
    using System;
    using NewSLHS.DAL;
    using System.Collections.Generic;
    
    public partial class Hearing
    {
        public Hearing()
        {
            this.Client_Information = new HashSet<Client_Information>();
        }
    
        public int HearingID { get; set; }
        public string HearingLossInFamily { get; set; }
        public string EarlyAgeHearingLoss { get; set; }
        public int FrequentEarInfections { get; set; }
        public int FrequentCold { get; set; }
        public string ChangeInHearing { get; set; }
        public int NormalHearing { get; set; }
        public int TurningTVLouder { get; set; }
        public string FirstHearingProblem { get; set; }
        public Nullable<int> WearingHearAid { get; set; }
        public string HearingAidType { get; set; }
        public string OtherInformation { get; set; }
    
        public virtual ICollection<Client_Information> Client_Information { get; set; }
    }
}
