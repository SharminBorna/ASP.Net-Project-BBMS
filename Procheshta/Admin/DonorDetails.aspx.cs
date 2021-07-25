using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procheshta.Admin
{
    public partial class DonorDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            //if (e.CommandName == "Insert")
            //{
            //    try
            //    {
            //        FileUpload fu2 = (FileUpload)ListView1.InsertItem.FindControl("fuImage");
            //        if (fu2.HasFile)
            //        {
            //            fu2.SaveAs(Server.MapPath("~/Images/" + fu2.FileName));
            //        }
            //        else
            //        {

            //        }
            //    }
            //    catch (Exception) { }
            //}
            if (e.CommandName == "Update")
            {
                try
                {
                    FileUpload fu1 = (FileUpload)ListView1.EditItem.FindControl("fuImage");

                    if (fu1.HasFile)
                    {
                        //string f = Guid.NewGuid() + Path.GetExtension(fu1.PostedFile.FileName);
                        //fu1.PostedFile.SaveAs(Server.MapPath("~/Images/") + f);
                        fu1.SaveAs(Server.MapPath("~/Admin/Images/" + fu1.FileName));
                    }
                    else
                    {

                    }
                }
                catch (Exception) { }
            }
        }
    }
}