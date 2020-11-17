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
    
    public partial class Session
    {
        public Session()
        {
            this.Session_Feedback = new HashSet<Session_Feedback>();
        }
    
        public int SessionID { get; set; }
        public System.DateTime SessionDate { get; set; }
        public System.TimeSpan StartTime { get; set; }
        public System.TimeSpan EndTime { get; set; }
        public decimal EvaluationScore { get; set; }
        public int AppointmentID { get; set; }
        public int SupervisorID { get; set; }
    
        public virtual Appointment Appointment { get; set; }
        public virtual Assessment_Proposal Assessment_Proposal { get; set; }
        public virtual Screening_SOAP_Note Screening_SOAP_Note { get; set; }
        public virtual ICollection<Session_Feedback> Session_Feedback { get; set; }
        public virtual Supervisor Supervisor { get; set; }
        public virtual SOAP_Note SOAP_Note { get; set; }
        public virtual Treatment_Plan Treatment_Plan { get; set; }
        public virtual Treatment_Progress Treatment_Progress { get; set; }
    }
}
