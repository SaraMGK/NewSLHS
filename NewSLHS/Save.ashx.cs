using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DHTMLX.Common;
using NewSLHS;

namespace NewSLHS
{
    /// <summary>
    /// Summary description for Save
    /// </summary>
    public class Save : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/xml";// the data is passed in XML format

            var action = new DataAction(context.Request.Form);
            var data = new SchedulerDataContext();

            try
            {
                var changedEvent = (Appointment)DHXEventsHelper.Bind(typeof(Appointment), context.Request.Form);//see details below

                switch (action.Type)
                {
                    case DataActionTypes.Insert: // your Insert logic
                        data.Appointments.InsertOnSubmit(changedEvent);
                        break;
                    case DataActionTypes.Delete: // your Delete logic
                        changedEvent = data.Appointments.SingleOrDefault(ev => ev.AppointmentID == action.SourceId);
                        data.Appointments.DeleteOnSubmit(changedEvent);
                        break;
                    default:// "update" // your Update logic
                        var updated = data.Appointments.SingleOrDefault(ev => ev.AppointmentID == action.SourceId);
                        DHXEventsHelper.Update(updated, changedEvent, new List<string>() { "id" });// see details below
                        break;
                }
                data.SubmitChanges();
                action.TargetId = changedEvent.AppointmentID;
            }
            catch (Exception a)
            {
                action.Type = DataActionTypes.Error;
            }

            context.Response.Write(new AjaxSaveResponse(action));
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