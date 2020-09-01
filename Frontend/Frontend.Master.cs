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
    public partial class Frontend : System.Web.UI.MasterPage
    {
        TinTuc_BUS news = new TinTuc_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            getCateNew();
        }
        public void getCateNew()
        {
            listCateNews.DataSource = news.listCateNews();
            listCateNews.DataBind();
        }
        protected void listCateNews_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("TinTuc.aspx?id=" + id.ToString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('ggfdf')</script>");
        }
    }
}