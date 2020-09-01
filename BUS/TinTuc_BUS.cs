using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
namespace BUS
{
    public class TinTuc_BUS
    {
        lop_DAL data = new lop_DAL();

        //frontend
        // số lượng xem
        public void Count(int id)
        {
            string sql = "update TinTuc set LuotXem = LuotXem+1 where Id_TinTuc=" + id;
            data.ExcuteNon(sql);
        }
        public DataTable flistNew()
        {
            string sql = "select * from TinTuc order by Id_TinTuc DESC";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        public DataTable getMaxView()
        {
            string sql = "select * from TinTuc order by LuotXem DESC";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        public DataTable getByCate(int id)
        {
            string sql = "select * from TinTuc inner join DanhMucTinTuc on TinTuc.Id_DanhMucTinTuc=DanhMucTinTuc.Id_DanhMucTinTuc where TinTuc.Id_DanhMucTinTuc="+id;
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        public DataTable search(string key, int id)
        {
            string sql = "select * from TinTuc where Id_DanhMucTinTuc=" + id
                + " and TieuDe like N'%" + key + "%' or ChiTiet like N'%" + key + "%'";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
            //end frontend
        /* category new */
        public DataTable listCateNews()
        {
            string sql = "select * from DanhMucTinTuc";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        public DataTable getCateById(int id)
        {
            string sql = "select * from DanhMucTinTuc where Id_DanhMucTinTuc =" + id;
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        public void deleteCate(int id)
        {
            string sql = "delete DanhMucTinTuc where Id_DanhMucTinTuc =" + id;
            data.ExcuteNon(sql);
        }
        public void updateCate(int id, string TenDanhMuc)
        {
            string sql = "update DanhMucTinTuc set TenDmTinTuc =N'" + TenDanhMuc + "' where Id_DanhMucTinTuc=" + id;
            data.ExcuteNon(sql);
        }
        public void insertCate(string TenDanhMuc)
        {
            string sql = "insert into DanhMucTinTuc values(N'" + TenDanhMuc + "')";
            data.ExcuteNon(sql);
        }
        /* end category */
        public DataTable listNews()
        {
            string sql = "select * from TinTuc inner join DanhMucTinTuc on TinTuc.Id_DanhMucTinTuc = DanhMucTinTuc.Id_DanhMucTinTuc";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
       
        public void delete(int id)
        {
            string sql = "delete from TinTuc where Id_TinTuc =" + id;
            data.ExcuteNon(sql);
        }
        public void insert(string TieuDe, string Anh, string ChiTiet, string NguoiDang, DateTime NgayDang, int DanhMuc)
        {
            string sql = "insert into TinTuc values(N'" + TieuDe + "',N'" + Anh + "',N'" + ChiTiet + "',N'" + NguoiDang + "',N'" + NgayDang + "',N'" + DanhMuc+ "','"+ 0 + "')";
            data.ExcuteNon(sql);
        }
        public void update(int id,string TieuDe, string Anh, string ChiTiet, string NguoiDang, DateTime NgayDang, int DanhMuc)
        {
            string sql = "update TinTuc set TieuDe=N'"+TieuDe
                +"',ChiTiet=N'"+ChiTiet
                +"',Anh=N'"+Anh
                +"',NguoiDang=N'" +NguoiDang
                +"',NgayDang='"   +NgayDang
                +"',Id_DanhMucTinTuc="+DanhMuc + " where Id_TinTuc=" + id;
            data.ExcuteNon(sql);
        }
        public void update1(int id, string TieuDe, string ChiTiet, string NguoiDang, DateTime NgayDang, int DanhMuc)
        {
            string sql = "update TinTuc set TieuDe=N'" + TieuDe
                + "',ChiTiet=N'" + ChiTiet
                + "',NguoiDang=N'" + NguoiDang
                + "',NgayDang='" + NgayDang
                + "',Id_DanhMucTinTuc=" + DanhMuc + " where Id_TinTuc=" + id;
            data.ExcuteNon(sql);
        }
        public DataTable getNewsId(int id)
        {
            string sql = "select * from TinTuc inner join DanhMucTinTuc on TinTuc.Id_DanhMucTinTuc = DanhMucTinTuc.Id_DanhMucTinTuc where Id_TinTuc=" + id;
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
    }
}
