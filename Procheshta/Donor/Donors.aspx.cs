using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procheshta.Donor
{
    public partial class Donors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            Debug.WriteLine("Inserting...");
            FileUpload fu = DetailsView1.FindControl("fuPicture") as FileUpload;
            if (fu.HasFiles)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    //string f = Guid.NewGuid() + Path.GetExtension(fu.PostedFile.FileName);
                    string f = fu.FileName;
                    string fileName = Server.MapPath("~/Admin/Images/") + f;
                    fu.PostedFile.SaveAs(fileName);
                    e.Values["donorImage"] = f;
                }
                else
                {
                    e.Cancel = false;
                }
            }
            else
            {
                e.Cancel = true;
            }
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload fu = DetailsView1.FindControl("fuPictureUpdate") as FileUpload;

            if (fu.HasFiles)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    //string f = Guid.NewGuid() + Path.GetExtension(fu.PostedFile.FileName);
                    string f = fu.FileName;
                    string fileName = Server.MapPath("~/Admin/Images/") + f;
                    fu.PostedFile.SaveAs(fileName);
                    e.NewValues["donorImage"] = f;
                }
                else
                {
                    e.NewValues["donorImage"] = e.OldValues["donorImage"];
                }
            }
            else
            {
                e.NewValues["donorImage"] = e.OldValues["donorImage"];
            }
        }
    }
}