using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Meirose
{
    public partial class Contact : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BtnSendEmail_Click(object sender, EventArgs e)
        {
            if
                (
                String.IsNullOrWhiteSpace(TxtName.Text) ||
                String.IsNullOrWhiteSpace(TxtEmail.Text) ||
                String.IsNullOrWhiteSpace(TxtSubject.Text) ||
                String.IsNullOrWhiteSpace(TxtMessage.Text) 
                )
            {
                litResult.Text = "Please fill in the empty field.";
            }

            else if
                (
                    // Test Email
                    ((!string.IsNullOrWhiteSpace(TxtName.Text)) &&
                    (!string.IsNullOrWhiteSpace(TxtEmail.Text)) &&
                    (!string.IsNullOrWhiteSpace(TxtSubject.Text)) &&
                    (!string.IsNullOrWhiteSpace(TxtMessage.Text)) &&
                    (!Regex.IsMatch(TxtEmail.Text,
                    @"^(>("")("",+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^'\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))))
            {
                litResult.Text = "Invalid email address.";
            } 

            else
            {

                SmtpClient client = new SmtpClient();
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.EnableSsl = true;
                client.Host = "smtp.gmail.com";
                client.Port = 587;

                // Smtp authentication
                System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("nazurahyussop@gmail.com", "12345dkzura");
                client.UseDefaultCredentials = false;
                client.Credentials = userpass;

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(TxtEmail.Text);
                msg.To.Add(new MailAddress("nazurahyussop@gmail.com"));

                msg.Subject = TxtEmail.Text;
                msg.IsBodyHtml = true;
                msg.Body = string.Format
                    ("<br><b>From: </b>" + TxtName.Text +
                    "<b>, <br>Email: </b>" + TxtEmail.Text +
                    "<b>, <br>Subject: </b>" + TxtSubject +
                    "<b>, <br>Message:<br> </b>" + TxtMessage.Text) +
                    "<br>";


                try
                {
                    client.Send(msg);
                    litResult.Text = "Your message has been successfully sent.";
                }
                catch (Exception ex)
                {
                    litResult.Text = "Error occured while sending your message." + ex.Message;
                }

            }
        }
    }
}

