using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class TinTuc
    {
        string tieuDe, anh, nguoiDang;
        DateTime ngayDang;

        public string TieuDe { get => tieuDe; set => tieuDe = value; }
        public string Anh { get => anh; set => anh = value; }
        public string NguoiDang { get => nguoiDang; set => nguoiDang = value; }
        public DateTime NgayDang { get => ngayDang; set => ngayDang = value; }
    }
}
