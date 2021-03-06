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
    using NewSLHS;
    using System.Collections.Generic;
    
    public partial class Appointment
    {
        public Appointment()
        {
            this.Rooms = new HashSet<Room>();
            this.Sessions = new HashSet<Session>();
            this.Students = new HashSet<Student>();
        }
    
        public int AppointmentID { get; set; }
        public string Status { get; set; }
        public string Type { get; set; }
        public System.DateTime StartDateTime { get; set; }
        public System.DateTime EndDateTime { get; set; }
        public string Repeat { get; set; }
        public string Note { get; set; }
        public int ClientID { get; set; }
        public int TAID { get; set; }
    
        public virtual Client Client { get; set; }
        public virtual Teacher_Assistant Teacher_Assistant { get; set; }
        public virtual ICollection<Room> Rooms { get; set; }
        public virtual ICollection<Session> Sessions { get; set; }
        public virtual ICollection<Student> Students { get; set; }
    }
}
