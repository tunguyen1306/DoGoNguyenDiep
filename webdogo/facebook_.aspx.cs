using Facebook;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Dynamic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webdogo
{
    public partial class facebook_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //string app_secret = "db3612296cbfcf08a6394ff5b8f583de";
            //string scope = "publish_stream,manage_pages,offline_access,publish_actions";

            try
            {
                lbl_thongbao.Text = "";

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
                    client.Post("/1400040813563351/feed", parameters);
                    client.Post("/me/feed", parameters);
                }
                lbl_thongbao.Text = "Đã thêm";
                

            }
            catch (Exception)
            {

                lbl_thongbao.Text = "Lỗi";
            }
            //string app_id = "324503021040953";
            //string app_secret = "db3612296cbfcf08a6394ff5b8f583de";
            //string scope = "publish_stream,manage_pages,offline_access,publish_actions";

            //if (Request["code"] == null)
            //{
            //    Response.Redirect(string.Format(
            //        "https://graph.facebook.com/oauth/authorize?client_id={0}&redirect_uri={1}&scope={2}",
            //        app_id, Request.Url.AbsoluteUri, scope));
            //}
            //else
            //{
                //Dictionary<string, string> tokens = new Dictionary<string, string>();

                //string url = string.Format("https://graph.facebook.com/oauth/token?client_id={0}&redirect_uri={1}&scope={2}&client_secret={4}",
                //    app_id, Request.Url.AbsoluteUri, scope, app_secret);

                //HttpWebRequest request = System.Net.WebRequest.Create(url) as HttpWebRequest;

                //using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
                //{
                //    StreamReader reader = new StreamReader(response.GetResponseStream());

                //    string vals = reader.ReadToEnd();

                //    foreach (string token in vals.Split('&'))
                //    {
                //        //meh.aspx?token1=steve&token2=jake&...
                //        tokens.Add(token.Substring(0, token.IndexOf("=")),
                //            token.Substring(token.IndexOf("=") + 1, token.Length - token.IndexOf("=") - 1));
                //    }
                //}

                //string access_token = tokens["token"];

                //var client = new FacebookClient(access_token);

                //dynamic parameters = new ExpandoObject();
                //parameters.message = "this is from fan page4.";
                //parameters.link = string.Empty;
                //parameters.picture = string.Empty;
                //parameters.name = "Article Title";
                //parameters.caption = "Caption for the link";

                ////446533181408238 is my fan page
                //client.Post("/1400040813563351/feed", parameters);

            //}
        }
        protected void btn_gui_Click(object sender, EventArgs e)
        {
           
            string t = "";
            if (txt_mail.Text == "")
            {
                DataTable dt = (ds_mail.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        t = dt.Rows[i]["mail_name"].ToString();
                        string link = " http://dogonguyendiep.com";
                        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                        mail.To.Add(t);
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
            }
            else
            {
                ds_mail.Insert();
                string link = " http://dogonguyendiep.com";
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(txt_mail.Text);
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
          

            lbl_thongbao.Text = "đã gửi mail thành công";
        }

        protected void btn_timkiem_Click(object sender, EventArgs e)
        {
            string customerName = Request.Form[txt_timkiem.UniqueID];
            string customerId = Request.Form[hfCustomerId.UniqueID];
        }

        protected void gv_mail_PageIndexChanged(object sender, EventArgs e)
        {

        }
      
           
      
    }
}