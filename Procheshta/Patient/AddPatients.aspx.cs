using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procheshta.Patient
{
    public partial class AddPatients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            dsPatients.InsertParameters["patientName"].DefaultValue = txtPatientName.Text;
            dsPatients.InsertParameters["age"].DefaultValue = txtAge.Text;
            dsPatients.InsertParameters["gender"].DefaultValue = ddlGender.SelectedValue;
            dsPatients.InsertParameters["bloodGroup"].DefaultValue = ddlBloodGroup.SelectedValue;
            dsPatients.InsertParameters["contactNo"].DefaultValue = txtContactNo.Text;
            dsPatients.InsertParameters["Address"].DefaultValue = txtAddress.Text;

            if (dsPatients.Insert() > 0)
            {
                txtPatientName.Text = "";
                txtAge.Text = "";
                txtContactNo.Text = "";
                txtAddress.Text = "";

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