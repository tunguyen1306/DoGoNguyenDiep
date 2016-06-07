using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webdogo
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gui_Click(object sender, EventArgs e)
        {
            if (txt_Email.Text.Equals("") && txt_sodienthoai.Text.Equals("") && txt_hovaten.Text.Equals("") && txt_add.Text.Equals(""))
            {
                Page.RegisterStartupScript("UserMsg", "<script>alert('Email và điện thoại,địa chỉ Không được rỗng');if(alert){ window.location='contact.aspx';}</script>");

            }
            else
            {
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add("dogonguyendiep@gmail.com");
                mail.From = new MailAddress(txt_Email.Text, txt_hovaten.Text, System.Text.Encoding.UTF8);
                mail.Subject = txt_Tieude.Text;
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "Mail:  " + txt_Email.Text + " <br/> " + "Họ và tên:  " + txt_hovaten.Text + "<br/>" + "Số điện thoại:  " + txt_sodienthoai.Text + "<br/>" + "Địa chỉ:  " + txt_add.Text + "<br/>" + "Nội dung: <br/>" + txt_noidung.Text + "<br/>";
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High;
                SmtpClient client = new SmtpClient();
                client.Credentials = new System.Net.NetworkCredential("dogonguyendiep@gmail.com", "Doilanhuthe1");
                client.Port = 587;
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true;
                try
                {
                    client.Send(mail);
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Gửi tin nhắn thành công');if(alert){ window.location='contact.aspx';}</script>");
                    txt_noidung.Text = "";
                }
                catch (Exception ex)
                {
                    Exception ex2 = ex;
                    string errorMessage = string.Empty;
                    while (ex2 != null)
                    {
                        errorMessage += ex2.ToString();
                        ex2 = ex2.InnerException;
                    }
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Gửi tin nhắn lỗi vui long gửi lại');if(alert){ window.location='contact.aspx';}</script>");
                }

            }
        }
        protected void btN_ve_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }
    }
}