using System.Web;
using DHTMLX.Scheduler.Data;
using NewSLHS;


namespace NewSLHS
{
    /// <summary>
    /// Summary description for Data
    /// </summary>
    public class Data : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/json";// the data comes in JSON format
            context.Response.Write(
                new SchedulerAjaxData(new SchedulerDataContext().Appointments) //events for loading to scheduler
            );
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}