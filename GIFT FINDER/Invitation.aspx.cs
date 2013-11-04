using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        try
        {
          string toAddress=txtinvite.Text;
            string subject="Invitation from sample event location";
            string body = "<html><body><h3 style='color:red'>Sample Invitation</h3><br/><br/><img src='http://www.graduation-invitations-graduation-party.com/images/graduation-invitation-sample-template-large.jpg'/></body></html>";

           lblresult.Text= SendEmail(toAddress, subject, body);
           txtinvite.Text = string.Empty;
           
        }
        catch (Exception ex)
        {
           
        }
    }
    protected string SendEmail(string toAddress, string subject, string body)
    {
        string result = "Message Sent Successfully..!!";
        string senderID = "sudheer.kumar0589@gmail.com";
        const string senderPassword = "sudheer589";
        try
        {
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com", 
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                Timeout = 30000,
            };
            MailMessage message = new MailMessage(senderID, toAddress, subject, body);
            message.IsBodyHtml = true;
            message.Body = body;
            smtp.Send(message);
        }
        catch (Exception ex)
        {
            result = "Error sending email..";
        }
        return result;
    }
}