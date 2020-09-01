using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace Frontend.Backend
{
    public partial class DanhMucTinTuc : System.Web.UI.Page
    {
        TinTuc_BUS news = new TinTuc_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        public void LoadData()
        {
            ListCateNews.DataSource = news.listCateNews();
            ListCateNews.DataBind();
        }

        protected void ListCateNews_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            switch (e.CommandName.ToString())
            {
                case "update":
                    mul.ActiveViewIndex = 1;
                    isUpdate.Value = "update";
                    role.Text = "";
                    role.Text = "Cập nhật danh mục";
                    cate_id.Value = id.ToString();
                    DataTable dt = new DataTable();
                    dt = news.getCateById(id);
                    if(dt.Rows.Count > 0)
                    {
                        cateName.Text = dt.Rows[0]["TenDmTinTuc"].ToString();
                    }
                    break;
                case "delete":
                    news.deleteCate(id);
                    LoadData();
                    break;
            }
        }
        protected void add_Click(object sender, EventArgs e)
        {
            mul.ActiveViewIndex = 1;
            role.Text = "";
            role.Text = "Thêm mới danh mục";
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string CateName = cateName.Text;
            
            if(isUpdate.Value == "update")
            {
                int id = int.Parse(cate_id.Value);
                news.updateCate(id, CateName);
            }
            else
            {
                news.insertCate(CateName);
            }
            Response.Redirect(Request.Url.ToString());
        }
    }
}