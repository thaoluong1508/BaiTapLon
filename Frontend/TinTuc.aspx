<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Frontend.TinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="root">
        <div class="container">
            <div style="width:500px;margin:auto; display:flex;line-height:40px" class="abcd">
                <asp:TextBox runat="server" placeholder="Nhập từ khóa tìm kiếm" ID="newsSearch" CssClass="form-control" />
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="TenDmTinTuc" DataValueField="Id_DanhMucTinTuc">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BatDongSanConnectionString5 %>" SelectCommand="SELECT * FROM [DanhMucTinTuc]"></asp:SqlDataSource>
                <asp:LinkButton ID="newSearh" style="width:150px;margin:0"  CssClass="btn btn-primary" runat="server" OnClick="newSearh_Click">
                    Tìm kiếm
                </asp:LinkButton>
            </div>
            <asp:MultiView ID="mul" ActiveViewIndex="0" runat="server">
                <asp:View runat="server">
                    <div style="margin: 5px auto;">
                    <asp:Label Text="Tin tức mới" ID="abcd"  runat="server" Font-Size="Large" />
                <div class="news-wrap">

                    <div class="newsContent">
                    <asp:Repeater ID="listNews" runat="server" OnItemCommand="listNews_ItemCommand">
                        <ItemTemplate>
                            <div >
                                <asp:LinkButton ID="detailNews" CommandArgument='<%# Eval("Id_TinTuc") %>' runat="server">
                                    <div  class="NewsItem">
                                        <div style="max-width:150px; text-align:center;box-shadow: 0 0 4px #808080">
                                            <asp:image imageurl='<%# Eval("Anh") %>' Width="120px" Height="100px" runat="server" />
                                        </div>
                                        <div>
                                            <h2 style="font-size:20px"><%# Eval("TieuDe") %></h2>
                                            <span><%# Eval("NgayDang") %></span>
                                            &nbsp; <span> by </span> &nbsp;
                                            <span><%# Eval("NguoiDang") %></span>
                                            <div class="newshidden">
                                                <%# Eval("ChiTiet") %>
                                            </div>
                                        </div>
                                    </div>
                                </asp:LinkButton>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>   
                    <div class="viewmax">
                        <marquee style="font-size:20px">Tin nhiều người đọc</marquee>
                            <asp:Repeater ID="maxView" runat="server" OnItemCommand="maxView_ItemCommand">
                                <ItemTemplate>
                                    <asp:LinkButton ID="detailNews" CommandArgument='<%# Eval("Id_TinTuc") %>' runat="server">
                                        <div class="itemviewmax">
                                            <div style="max-width:80px;">
                                                <asp:Image ImageUrl='<%# Eval("Anh") %>' Width="80px" runat="server" />
                                            </div>
                                            <div style="margin-left:10px;word-break: break-all;">
                                                <%# Eval("TieuDe") %>
                                            </div>
                                        </div>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:Repeater> 
                    </div>
                </div>     
            </div>
                </asp:View>

                <%-- Chi tiet --%>
                <asp:View runat="server">

                    <div class="news-wrap">
                        <div class="newsContent">
                            <asp:Repeater ID="DetailNews" runat="server">
                                <ItemTemplate>
                                    <h3><%# Eval("TieuDe") %></h3>
                                    <span><%# Eval("NgayDang") %></span>
                                            &nbsp; <span> by </span> &nbsp;
                                            <span><%# Eval("NguoiDang") %></span>
                                    <div class="newsDetailContent">
                                        <%# Eval("ChiTiet") %>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="viewmax">
                        <marquee style="font-size:20px">Tin nhiều người đọc</marquee>
                        
                            <asp:Repeater ID="maxviewNews" runat="server" OnItemCommand="maxviewNews_ItemCommand">
                                <ItemTemplate>
                                    <asp:LinkButton ID="detailNews" CommandArgument='<%# Eval("Id_TinTuc") %>' runat="server">
                                        <div class="itemviewmax">
                                            <div style="max-width:80px;">
                                                <asp:Image ImageUrl='<%# Eval("Anh") %>' Width="80px" runat="server" />
                                            </div>
                                            <div style="margin-left:10px;word-break: break-all;">
                                                <%# Eval("TieuDe") %>
                                            </div>
                                        </div>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:Repeater> 
                    </div>
                    </div>
                </asp:View>

            </asp:MultiView>
        </div>
    </div>
</asp:Content>
