using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procheshta.Admin
{
    public partial class SendMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string to = txtTo.Text;
            string body = txtMessage.Text;
            MailMessage message = new MailMessage("sabujsmtp@gmail.com", to);
            message.Body = body;
            message.IsBodyHtml = true;
            message.Subject = "Request Blood";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new NetworkCredential()
            {
                UserName = "sabujsmtp@gmail.com",
                Password = "IDB1234567890"
            };
            smtpClient.EnableSsl = true;
            smtpClient.Send(message);
            Literal1.Text = "Mail Send Succefully!!!";

            //SmtpClient mailer = new SmtpClient();
            //MailMessage mail = new MailMessage();
            //mail.To.Add(new MailAddress(txtTo.Text));
            //mail.Subject = txtSubject.Text;
            //mail.Body = txtMessage.Text;

            //mailer.Send(mail);
            //Literal1.Text = "Mail Send Succefully!!!";

            AllClear();
        }
        private void AllClear()
        {
            txtTo.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
            txtTo.Focus();
        }
    }
}