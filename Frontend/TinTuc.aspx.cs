using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace Frontend
{
    public partial class TinTuc : System.Web.UI.Page
    {
        TinTuc_BUS news = new TinTuc_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                LoadData(id);
            }
            else
            {
                LoadData(-1);
            }
            
        }
        public void LoadData(int id)
        {
            if(id>=0)
            {
                
                maxView.DataSource = news.getMaxView();
                maxView.DataBind();
                listNews.DataSource = news.getByCate(id);
                listNews.DataBind();
                abcd.Text = "";
                abcd.Text = "Tin mới theo danh mục: "+news.getByCate(id).Rows[0]["TenDmTinTuc"];
            }
            else
            {
                maxView.DataSource = news.getMaxView();
                maxView.DataBind();
                listNews.DataSource = news.flistNew();
                listNews.DataBind();
            }

        }

/*        void Application_Start(object sender, EventArgs e)
        {
            Application.Lock();
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("SlDoc.txt"));
            string s = sr.ReadLine();
            sr.Close();
            Application.UnLock();
            Application["SlDoc.txt"] = s;
        }

        void Session_Start(object sender, EventArgs e)
        {
            Application["SlDoc.txt"] = int.Parse(Application["SlDoc.txt"].ToString()) + 1;
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("SlDoc.txt"));
            sw.Write(Application["SlDoc.txt"].ToString());
            sw.Close();
        }*/


        protected void listNews_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            mul.ActiveViewIndex = 1;
            DetailNews.DataSource = news.getNewsId(id);
            DetailNews.DataBind();
            maxviewNews.DataSource = news.getMaxView();
            maxviewNews.DataBind();
            news.Count(id);
        }

        protected void maxView_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            mul.ActiveViewIndex = 1;
            DetailNews.DataSource = news.getNewsId(id);
            DetailNews.DataBind();

            maxviewNews.DataSource = news.getMaxView();
            maxviewNews.DataBind();
            news.Count(id);
        }
        protected void maxviewNews_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            mul.ActiveViewIndex = 1;
            DetailNews.DataSource = news.getNewsId(id);
            DetailNews.DataBind();
            maxviewNews.DataSource = news.getMaxView();
            maxviewNews.DataBind();
            news.Count(id);
        }
        protected void newSearh_Click(object sender, EventArgs e)
        {
            int id = int.Parse(DropDownList1.SelectedValue);
            string key = newsSearch.Text;
            mul.ActiveViewIndex = 0;
            abcd.Text = "";
            abcd.Text = "Danh sách tin tức cho " + key;

            listNews.DataSource = news.search(key, id);
            listNews.DataBind();
        }

    }
}