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
    
    public partial class Authentication
    {
        public Authentication()
        {
            this.Students = new HashSet<Student>();
            this.Supervisors = new HashSet<Supervisor>();
            this.Teacher_Assistant = new HashSet<Teacher_Assistant>();
        }
    
        public int AuthenticationID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int Type { get; set; }
    
        public virtual ICollection<Student> Students { get; set; }
        public virtual ICollection<Supervisor> Supervisors { get; set; }
        public virtual ICollection<Teacher_Assistant> Teacher_Assistant { get; set; }
    }
}
