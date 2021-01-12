using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NewSLHS
{
    public class RequestListItem
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public int Quantity { get; set; }

        public int Status { get; set; }

        public DateTime IssueDate { get; set; }
        
        public DateTime ReturnDate { get; set; }

        public string Image { get; set; }

    }
}