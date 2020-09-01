using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;
using DTO;
namespace Frontend.Backend
{
    public partial class TinTuc : System.Web.UI.Page
    {
        TinTuc_BUS news = new TinTuc_BUS();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        void LoadData()
        {
            listNew.DataSource = news.listNews();
            listNew.DataBind();
        }

        protected void listNew_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            switch (e.CommandName.ToString())
            {
                case "update":
                    mul.ActiveViewIndex = 1;
                    newsID.Value = id.ToString();
                    isUpdate.Value = "update";
                    DataTable dt = new DataTable();
                    Literal1.Text = "";
                    Literal1.Text = "Cập nhật sản phẩm";
                    dt = news.getNewsId(id);
                    if(dt.Rows.Count > 0)
                    {
                        TieuDe.Text = dt.Rows[0]["TieuDe"].ToString();
                        NguoiDang.Text = dt.Rows[0]["NguoiDang"].ToString();
                        Image1.ImageUrl =  dt.Rows[0]["Anh"].ToString();
                        CKEditor1.Text = dt.Rows[0]["ChiTiet"].ToString();
                    }
                    break;
                case "delete":   
                    news.delete(id);
                    LoadData();
                    break;
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            mul.ActiveViewIndex = 1;
            Literal1.Text = "";
            Literal1.Text = "Thêm mới sản phẩm";
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string tieuDe = TieuDe.Text;
            string nguoiDang = NguoiDang.Text;
            DateTime ngayDang = DateTime.Now;
            string chiTiet = CKEditor1.Text;
            int id_DanhMuc = int.Parse(DanhMuc.SelectedValue);
            string IsUpdate = isUpdate.Value;
            /* UTpdate*/
            if(IsUpdate == "update")
            {
                int id = int.Parse(newsID.Value);
                if (FileUp.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUp.FileName);
/*                    string myScript = "alert('" + extension + "');";
                    ClientScriptManager cs = Page.ClientScript;
                    cs.RegisterClientScriptBlock(Page.GetType(), "myAlert", myScript, true);*/
                    if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                    {
                        string path = Server.MapPath("~/uploads/news//");
                        FileUp.SaveAs(path + FileUp.FileName);
                        string Anh = "~/uploads/news/"+ FileUp.FileName;
                        news.update(id, tieuDe, Anh, chiTiet, nguoiDang, ngayDang, id_DanhMuc);

/*                        string myScript = "alert('" + Anh + "');";
                        ClientScriptManager cs = Page.ClientScript;
                        cs.RegisterClientScriptBlock(Page.GetType(), "myAlert", myScript, true);*/
                    }
                    else
                    {
                        return;
                    }
                }
                else
                {
                    news.update1(id, tieuDe, chiTiet, nguoiDang, ngayDang, id_DanhMuc);
                }
            }
            /* Thêm mới */
            else
            {
                if (FileUp.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUp.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                    {
                        string path = Server.MapPath("~/uploads/news//");
                        FileUp.SaveAs(path + FileUp.FileName);
                        
                        string Anh = "~/uploads/news/"+ FileUp.FileName;

                       
                        news.insert(tieuDe, Anh, chiTiet, nguoiDang, ngayDang, id_DanhMuc);

/*                        string myScript = "alert('"  + AdminRequestTime + "');";
                        ClientScriptManager cs = Page.ClientScript;
                        cs.RegisterClientScriptBlock(Page.GetType(), "myAlert", myScript, true);*/
                    }
                    else
                    {
                        return;
                    }
                }
                else
                {
                    return;
                }
            }

            Response.Redirect(Request.Url.ToString());

            /*            string myScript = "alert('"  + "');";
                        ClientScriptManager cs = Page.ClientScript;
                        cs.RegisterClientScriptBlock(Page.GetType(), "myAlert", myScript, true);*/

        }
    }
}