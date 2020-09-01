<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Backend.Master" AutoEventWireup="true" CodeBehind="DanhMucTinTuc.aspx.cs" Inherits="Frontend.Backend.DanhMucTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Quản lý danh mục tin tức</h1>

    <asp:MultiView ActiveViewIndex="0" ID="mul" runat="server">
        <%-- index --%>
        <asp:View runat="server">
            <asp:LinkButton Text="Thêm" CssClass="btn btn-primary" runat="server" ID="add" OnClick="add_Click" />
            <hr />
            <asp:Repeater ID="ListCateNews" runat="server" OnItemCommand="ListCateNews_ItemCommand">
                <HeaderTemplate>
                    <table class="table table-striped">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Tên danh mục</th>
                            <td scope="col">Action</td>
                        </tr> 
                </HeaderTemplate>
                <%-- show list --%>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%#:Eval("Id_DanhMucTinTuc") %>
                        </td>
                        <td>
                            <%#:Eval("TenDmTinTuc") %>
                        </td>
                        <td>
                            <asp:LinkButton Text="Xóa" OnClientClick="return confirm('xóa?')" CommandName="delete" CommandArgument='<%#:Eval("Id_DanhMucTinTuc") %>' runat="server" />
                            &nbsp;&nbsp;
                            <asp:LinkButton Text="edit" CommandName="update" CommandArgument='<%#:Eval("Id_DanhMucTinTuc") %>' runat="server" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </asp:View>
        <%-- update, insert --%>
        <asp:View runat="server">
            <div style="color:rebeccapurple">
                <asp:Literal Text="" ID="role" runat="server" />
                <asp:HiddenField ID="cate_id" runat="server" />
                <asp:HiddenField ID="isUpdate" runat="server" />
            </div>
            <div class="form-group">
                <label>Tên danh mục</label>
                <asp:TextBox runat="server" ID="cateName" CssClass="form-control" />
            </div>
            <asp:Button Text="save" CssClass="btn btn-primary" ID="Save" runat="server" OnClick="Save_Click" />
        </asp:View>
    </asp:MultiView>
</asp:Content>
