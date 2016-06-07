using Facebook;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Dynamic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webdogo
{
    public partial class facebook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                string s = (sender as Button).CommandArgument;
                hd_id_fb.Value = s;
                DataTable dt = (ds_products_fb.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                /// Request.Cookies["tokenfb"].Value

                for (int i = 0; i < dt.Rows.Count; i++)
                {


                    var client = new FacebookClient(Request.Cookies["token"].Value);
                    dynamic parameters = new ExpandoObject();
                    parameters.message = dt.Rows[i]["tomtat_products"];
                    parameters.link = "http://dogonguyendiep.com/Detail.aspx?id=" + hd_id_fb.Value + "";
                    parameters.picture = ConfigurationManager.AppSettings["domain"] + "/" + dt.Rows[i]["img_main_products"].ToString().Split('_')[0] + "/" + dt.Rows[i]["img_main_products"];
                    parameters.name = dt.Rows[i]["name_products"];
                    parameters.description = dt.Rows[i]["noidung_products"];
                    dynamic result = client.Post("/1400040813563351/feed", parameters);
                }
                lbl_thongbao.Text = "Đã thêm";
            }
            catch (Exception)
            {

                lbl_thongbao.Text = "Lỗi";
            }
        }
        protected void btn_gui_Click(object sender, EventArgs e)
        {

            DataTable dt = (ds_mail.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    string link = " http://dogonguyendiep.com";
                    System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                    mail.To.Add(dt.Rows[i]["mail_name"].ToString());
                    mail.From = new MailAddress("dogonguyendiep@gmail.com", "ĐỒ GỖ MỸ NGHỆ NGUYỄN DIỆP", System.Text.Encoding.UTF8);
                    mail.Subject = "ĐỒ GỖ MỸ NGHỆ NGUYỄN DIỆP kính chúc Quý khách hàng AN KHANG THỊNH VƯỢNG - VẠN SỰ NHƯ Ý! ";
                    mail.SubjectEncoding = System.Text.Encoding.UTF8;
                    mail.Body = @"Xin gửi lời chúc sức khỏe, 
lời cảm ơn chân thành và sâu sắc nhất đến 
Quý Khách Hàng của Công ty chúng tôi trong thời gian qua. <br/>
Năm mới ĐỒ GỖ MỸ NGHỆ NGUYỄN DIỆP kính chúc Quý khách hàng AN KHANG THỊNH VƯỢNG - VẠN SỰ NHƯ Ý! <br/>
 Công ty chúng tôi rất mong được hợp tác với Quý Đại Lý để cùng nhau phát triển và đôi bên cùng có lợi.<br/>
Chúc mối quan hệ hợp tác của Quý Đại Lý ngày càng bền chặt <br/><h1><div> Hãy đến với chúng tôi <div> <a href=" + link + ">" + "http://dogonguyendiep.com" + "</a> </h1> để có được sự lựa chọn đúng đắn ";
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

            lbl_thongbao.Text = "đã gửi mail thành công";
        }
    }
}