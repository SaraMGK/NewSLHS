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
    
    public partial class Social
    {
        public Social()
        {
            this.Client_Information = new HashSet<Client_Information>();
            this.Behaviors = new HashSet<Behavior>();
            this.Personalities = new HashSet<Personality>();
        }
    
        public int SocialID { get; set; }
        public int Frustration { get; set; }
        public string HandlingFrustration { get; set; }
    
        public virtual ICollection<Client_Information> Client_Information { get; set; }
        public virtual ICollection<Behavior> Behaviors { get; set; }
        public virtual ICollection<Personality> Personalities { get; set; }
        public virtual Yes_No Yes_No { get; set; }
    }
}
