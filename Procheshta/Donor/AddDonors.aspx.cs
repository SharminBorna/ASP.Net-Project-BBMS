using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procheshta.Donor
{
    public partial class AddDonors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (!fuDonorImage.HasFile || fuDonorImage.PostedFile.ContentLength <= 0)
            {
                this.msg.InnerHtml = "Select one picture";
                this.alert.Attributes.Add("class", "alert alert-warning alert-dismissible");
                this.alert.Visible = true;
                return;
            }
            if (fuDonorImage.HasFile)
            {
                if (fuDonorImage.PostedFile.ContentLength > 0)
                {
                    //string f = Guid.NewGuid() + Path.GetExtension(fuDonorImage.PostedFile.FileName);
                    //fuDonorImage.PostedFile.SaveAs(Server.MapPath("~/Admin/Images/") + f);
                    fuDonorImage.PostedFile.SaveAs(Server.MapPath("~/Admin/Images/") + fuDonorImage.FileName);
                }
            }
            dsDonors.InsertParameters["donorName"].DefaultValue = txtDonorName.Text;
            dsDonors.InsertParameters["age"].DefaultValue = txtAge.Text;
            dsDonors.InsertParameters["weight"].DefaultValue = txtWeight.Text;
            dsDonors.InsertParameters["gender"].DefaultValue = ddlGender.SelectedValue;
            dsDonors.InsertParameters["bloodGroup"].DefaultValue = ddlBloodGroup.SelectedValue;
            dsDonors.InsertParameters["contactNo"].DefaultValue = txtContactNo.Text;
            dsDonors.InsertParameters["email"].DefaultValue = txtEmail.Text;
            dsDonors.InsertParameters["donorAddress"].DefaultValue = txtDonorAddress.Text;
            dsDonors.InsertParameters["lastDonationDate"].DefaultValue = txtLastDonationDate.Text;
            dsDonors.InsertParameters["donorImage"].DefaultValue = fuDonorImage.FileName;

            if (dsDonors.Insert() > 0)
            {
                txtDonorName.Text = "";
                txtAge.Text = "";
                txtWeight.Text = "";
                txtContactNo.Text = "";
                txtEmail.Text = "";
                txtDonorAddress.Text = "";
                txtLastDonationDate.Text = "";

                this.msg.InnerHtml = "Operation Successful!";
                this.alert.Attributes.Add("class", "alert alert-success alert-dismissible");
                this.alert.Visible = true;
            }
            else
            {
                this.msg.InnerHtml = "Operation Failed!";
                this.alert.Attributes.Add("class", "alert alert-warning alert-dismissible");
                this.alert.Visible = true;
            }
        }
    }
}