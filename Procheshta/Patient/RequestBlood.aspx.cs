using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procheshta.Patient
{
    public partial class RequestBlood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }   

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            dsRequest.InsertParameters["patientID"].DefaultValue = ddlPatient.SelectedValue;
            dsRequest.InsertParameters["bloodGroupId"].DefaultValue = ddlBloodGroup.SelectedValue;
            dsRequest.InsertParameters["caseDate"].DefaultValue = txtDate.Text;
            dsRequest.InsertParameters["reasonForBlood"].DefaultValue = txtReason.Text;
            dsRequest.InsertParameters["contactNo"].DefaultValue = txtContactNo.Text;
            dsRequest.InsertParameters["hospitalID"].DefaultValue = ddlHospital.SelectedValue;

            if (dsRequest.Insert() > 0)
            {
                txtDate.Text = "";
                txtReason.Text = "";
                txtContactNo.Text = "";


                this.msg.InnerHtml = "Request For Blood Successful !!";
                this.alert.Attributes.Add("class", "alert alert-success alert-dismissible");
                this.alert.Visible = true;
            }
            else
            {
                this.msg.InnerHtml = "Request Failed !!";
                this.alert.Attributes.Add("class", "alert alert-warning alert-dismissible");
                this.alert.Visible = true;
            }
        }
    }
}