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
    using NewSLHS;
    using NewSLHS.DAL;
    using System.Collections.Generic;
    
    public partial class Resource_Request
    {
        public int ResourceRequestID { get; set; }
        public System.DateTime RequestDateTime { get; set; }
        public System.DateTime ReturnDateTime { get; set; }
        public string Note { get; set; }
        public int Status { get; set; }
        public int Quantity { get; set; }
        public int StudentID { get; set; }
        public int ResourceID { get; set; }
        public int TAID { get; set; }
    
        public virtual Resource Resource { get; set; }
        public virtual Student Student { get; set; }
        public virtual Teacher_Assistant Teacher_Assistant { get; set; }
    }
}
