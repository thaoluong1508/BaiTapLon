<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Backend.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Frontend.Backend.TinTuc" %>
<%@ Register Namespace="CKEditor.NET" Assembly="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Quản lý tin tức</h1>
    <asp:MultiView ID="mul" ActiveViewIndex="0" runat="server">
        <asp:View ID="v1" runat="server">
                <asp:LinkButton ID="Add" runat="server" CssClass="btn btn-primary" OnClick="Add_Click" >Thêm mới</asp:LinkButton>
                <hr />
                <asp:Repeater ID="listNew" runat="server" OnItemCommand="listNew_ItemCommand">
                    <HeaderTemplate>
                        <table class="table table-striped">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Tiêu đề</th>
                                <th scope="col">Ảnh</th>
                                <th scope="col">Người dăng</th>
                                <th scope="col">Ngày đăng</th>
                                <th scope="col">Danh mục</th>
                                <th scope="col">Số lượt xem</th>
                                <th scope="col">Action</th>
                            </tr>       
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#:Eval("Id_TinTuc") %>
                            </td>
                            <td>
                                <%#:Eval("TieuDe ") %>
                            </td>
                            <td>
                                <asp:Image runat="server" ID="Image2" ImageUrl='<%#:Eval("Anh") %>' AlternateText='<%#:Eval("Anh") %>' Width="150px"  />
                            </td>
                            <td>
                                <%#:Eval("NguoiDang") %>
                            </td>
                            <td>
                                <%#:Eval("NgayDang") %>
                            </td>
                            <td>
                                <%#:Eval("TenDmTinTuc") %>
                            </td>  
                            <td>
                                <%#:Eval("LuotXem") %>
                            </td>
                            <td>
                                <asp:LinkButton OnClientClick="return confirm('Xóa?');" ID="delete" runat="server" CommandName="delete"
                                    CommandArgument='<%#:Eval("Id_TinTuc") %>'>
                                    Xóa
                                </asp:LinkButton>
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="update"
                                    CommandArgument='<%#:Eval("Id_TinTuc") %>'>
                                    edit
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>    
                </asp:Repeater>
        </asp:View>
         <%-- View cập nhật thêm mới --%>
        <asp:View ID="v2" runat="server">
            <h3 style="color:rebeccapurple"><asp:Literal ID="Literal1" runat="server"></asp:Literal></h3>
                <asp:HiddenField ID="newsID" runat="server" />
                <asp:HiddenField ID="isUpdate" runat="server" />
                <div class="form-group">
                    <label>Tiêu đề</label>
                    <asp:TextBox runat="server" ID="TieuDe"  CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label>Ảnh đại diện</label>
                    <img src="" ID="image" width="150px;"/>

                    <asp:Image ID="Image1"  runat="server" ImageUrl="" Width="150px" />
                    <asp:FileUpload ID="FileUp" onchange="Preview()" runat="server" />
                    <script>
                        function Preview() {
                            var output_1 = document.getElementById('image');
                            output_1.src = URL.createObjectURL(event.target.files[0]);
                            output_1.onload = function () {
                                URL.revokeObjectURL(output_1.src)
                            }
                        };
                </script>
                </div>
                <div class="form-group">
                    <label>Người đăng</label>
                    <asp:TextBox runat="server" ID="NguoiDang" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label>Chi tiết</label>
                    
                   <CKEditor:CKEditorControl ID="CKEditor1" runat="server">
                    </CKEditor:CKEditorControl>
                </div>
                <div class="form-group">
                    <label>Danh mục tin tức</label>
                    <asp:DropDownList ID="DanhMuc" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenDmTinTuc" DataValueField="Id_DanhMucTinTuc">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BatDongSanConnectionString %>" SelectCommand="SELECT * FROM [DanhMucTinTuc]"></asp:SqlDataSource>
                </div>
 
            <asp:Button ID="Save" CssClass="btn btn-primary" Text="save" runat="server" OnClick="Save_Click" />
                
        </asp:View>
    </asp:MultiView>
    
</asp:Content>
