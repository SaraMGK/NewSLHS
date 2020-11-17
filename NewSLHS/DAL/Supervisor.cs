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
    
    public partial class Supervisor
    {
        public Supervisor()
        {
            this.Sections = new HashSet<Section>();
            this.Sessions = new HashSet<Session>();
            this.Students = new HashSet<Student>();
        }
    
        public int UserID { get; set; }
        public int EmployeeID { get; set; }
        public string OfficeNumber { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string mobile { get; set; }
        public int Status { get; set; }
        public int AuthenticationID { get; set; }
    
        public virtual Authentication Authentication { get; set; }
        public virtual ICollection<Section> Sections { get; set; }
        public virtual ICollection<Session> Sessions { get; set; }
        public virtual ICollection<Student> Students { get; set; }
    }
}
