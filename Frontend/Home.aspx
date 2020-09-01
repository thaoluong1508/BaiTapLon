<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Frontend.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% =Application["SlOnline"] %>
        <div class="new-home-2020">
            <div class="home-center">
               <div class="banner-home-slide">
                  <form action="" method="post">
                     <div class="home-search">
                        <div class="home-search-tool">
                           <ul class="home-search-tab">
                              <li class="actived" ptype="38">Nhà đất bán</li>
                              <li ptype="49">Nhà đất cho thuê</li>
                           </ul>
                           <div class="home-search-content">    
                              <div class="home-search-control">
                                 <div class="search-cate">
                                    <div class="select-custom">
                                       <o id="lblCurrCate">Tất cả nhà đất</o>
                                    </div>
                                    <div id="divCatagoryReOptions" class="advance-select-options">
                                       <ul>
                                       </ul>
                                    </div>
                                 </div> 
                                 <div class="search-input">
                                     <asp:TextBox runat="server" ID="search" CssClass="form-group" />
                                    <input type="hidden" id="keyWord" name="KeyWord" />
                                 </div>
                                 <div class="search-button">
                                    
                                     <asp:LinkButton ID="btnSearch" CssClass="btn-home-search"  runat="server">Tìm kiếm</asp:LinkButton>
                                 </div>
                                 <div class="clear"></div>
                              </div>
                              <div class="home-filter home-filter-1 slideClose">
                                 <div id="divCity" class="search-filter advance-select-box">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Trên toàn quốc</span>
                                    </span>
                                    <input id="hdCboCity" name="CityCode" type="hidden" value="" />
                                    <input data-val="true" data-val-required="The DistrictId field is required." id="hdCboDistrict" name="DistrictId" type="hidden" value="0" />
                                    <div id="divCityOptions" class="custom-scroll advance-select-options advance-options">
                                       <ul class="advance-options level">
                                          <li vl="CN" class="advance-options">Trên toàn quốc</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div id="divPrice" class="search-filter advance-select-box">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Mức giá</span>
                                    </span>
                                    <input data-val="true" data-val-required="The PriceId field is required." id="hdCboPrice" name="PriceId" type="hidden" value="-1" />
                                    <div id="divPriceOptions" class="advance-select-options advance-price-options advance-options">
                                       <div class="custom-slider">
                                          <input class="min-value advance-options" data-val="true" data-val-number="The field MinPrice must be a number." decimal="true" id="txtPriceMinValue" maxlength="6" name="MinPrice" numbersonly="true" placeholder="T&#x1EEB;" type="text" value="" />
                                          <span>-</span>
                                          <input class="min-value advance-options" data-val="true" data-val-number="The field MaxPrice must be a number." decimal="true" id="txtPriceMaxValue" maxlength="6" name="MaxPrice" numbersonly="true" placeholder="&#x110;&#x1EBF;n" type="text" value="" />
                                          <div id="price-slider-range" class="price-filter-range" name="rangeInput"></div>
                                       </div>
                                       <ul class="advance-options">
                                          <li vl="0" class="advance-options  ">Th&#x1ECF;a thu&#x1EAD;n</li>
                                          <li vl="1" class="advance-options  ">&lt; 500 tri&#x1EC7;u</li>
                                          <li vl="2" class="advance-options  ">500 - 800 tri&#x1EC7;u</li>
                                          <li vl="3" class="advance-options  ">800 tri&#x1EC7;u - 1 t&#x1EF7;</li>
                                          <li vl="4" class="advance-options  ">1 - 2 t&#x1EF7;</li>
                                          <li vl="5" class="advance-options  ">2 - 3 t&#x1EF7;</li>
                                          <li vl="6" class="advance-options  ">3 - 5 t&#x1EF7;</li>
                                          <li vl="7" class="advance-options  ">5 - 7 t&#x1EF7;</li>
                                          <li vl="8" class="advance-options  ">7 - 10 t&#x1EF7;</li>
                                          <li vl="9" class="advance-options  ">10 - 20 t&#x1EF7;</li>
                                          <li vl="10" class="advance-options  ">20 - 30 t&#x1EF7;</li>
                                          <li vl="11" class="advance-options  ">&gt; 30 t&#x1EF7;</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div id="divArea" class="search-filter advance-select-box">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Diện tích</span>
                                    </span>
                                    <input data-val="true" data-val-required="The AreaId field is required." id="hdCboArea" name="AreaId" type="hidden" value="-1" />
                                    <div id="divAreaOptions" class="advance-select-options advance-area-options advance-options">
                                       <div class="custom-slider">
                                          <input class="min-value advance-options" decimal="true" id="txtAreaMinValue" maxlength="6" name="MinArea" numbersonly="true" placeholder="T&#x1EEB;" type="text" value="" />
                                          <span>-</span>
                                          <input class="min-value advance-options" decimal="true" id="txtAreaMaxValue" maxlength="6" name="MaxArea" numbersonly="true" placeholder="&#x110;&#x1EBF;n" type="text" value="" />
                                          <span>m²</span>
                                          <div id="area-slider-range" class="price-filter-range" name="rangeInput"></div>
                                       </div>
                                       <ul class="advance-options">
                                          <li vl="-1" class="advance-options">Diện tích</li>
                                          <li vl="0" class="advance-options ">Ch&#x1B0;a x&#xE1;c &#x111;&#x1ECB;nh</li>
                                          <li vl="1" class="advance-options ">&lt;= 30 m2</li>
                                          <li vl="2" class="advance-options ">30 - 50 m2</li>
                                          <li vl="3" class="advance-options ">50 - 80 m2</li>
                                          <li vl="4" class="advance-options ">80 - 100 m2</li>
                                          <li vl="5" class="advance-options ">100 - 150 m2</li>
                                          <li vl="6" class="advance-options ">150 - 200 m2</li>
                                          <li vl="7" class="advance-options ">200 - 250 m2</li>
                                          <li vl="8" class="advance-options ">250 - 300 m2</li>
                                          <li vl="9" class="advance-options ">300 - 500 m2</li>
                                          <li vl="10" class="advance-options ">&gt;= 500 m2</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div id="divProject" class="search-filter advance-select-box">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Dự án</span>
                                    </span>
                                    <input data-val="true" data-val-required="The ProjectId field is required." id="hdCboProject" name="ProjectId" type="hidden" value="0" />
                                    <div id="divProjectOptions" class="custom-scroll advance-select-options advance-options">
                                       <ul class="advance-options">
                                          <li vl="0" class="advance-options">Dự án</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="search-action search-action1">
                                    <a href="javascript:void(0)" class="m-r-10 filter-more">
                                    <img src="../file4.batdongsan.com.vn/images/newhome/icon-down-arrow.png" />
                                    Thêm
                                    </a>
                                    <a href="javascript:void(0)" class="action-reset-search-form">
                                    <img src="../file4.batdongsan.com.vn/images/newhome/search-reset.png" />
                                    Xóa
                                    </a>
                                 </div>
                                 <div class="clear"></div>
                              </div>
                              <div class="home-filter home-filter-2 slideClose">
                                 <div id="divWard" class="search-filter advance-select-box adv-search">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Phường xã</span>
                                    </span>
                                    <input data-val="true" data-val-required="The WardId field is required." id="hdCboWard" name="WardId" type="hidden" value="0" />
                                    <div id="divWardOptions" class="custom-scroll advance-select-options advance-options">
                                       <ul class="advance-options">
                                          <li vl="0" class="advance-options">Phường xã</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div id="divStreet" class="search-filter advance-select-box adv-search">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Đường phố</span>
                                    </span>
                                    <input data-val="true" data-val-required="The StreetId field is required." id="hdCboStreet" name="StreetId" type="hidden" value="0" />
                                    <div id="divStreetOptions" class="custom-scroll advance-select-options advance-options">
                                       <ul class="advance-options">
                                          <li vl="0" class="advance-options">Đường phố</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div id="divBedRoom" class="search-filter advance-select-box adv-search">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Số phòng</span>
                                    </span>
                                    <input data-val="true" data-val-required="The RoomId field is required." id="hdCboBedRoom" name="RoomId" type="hidden" value="-1" />
                                    <div id="divBedRoomOptions" class="advance-select-options advance-options">
                                       <ul class="advance-options">
                                          <li vl="-1" class="advance-options">Số phòng</li>
                                          <li vl="0" class="advance-options ">Kh&#xF4;ng x&#xE1;c &#x111;&#x1ECB;nh</li>
                                          <li vl="1" class="advance-options ">1&#x2B;</li>
                                          <li vl="2" class="advance-options ">2&#x2B;</li>
                                          <li vl="3" class="advance-options ">3&#x2B;</li>
                                          <li vl="4" class="advance-options ">4&#x2B;</li>
                                          <li vl="5" class="advance-options ">5&#x2B;</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div id="divHomeDirection" class="search-filter advance-select-box adv-search">
                                    <span class="select-text select-custom">
                                    <span class="select-text-content">Hướng nhà</span>
                                    </span>
                                    <input data-val="true" data-val-required="The DirectionId field is required." id="hdCboHomeDirection" name="DirectionId" type="hidden" value="-1" />
                                    <div id="divHomeDirectionOptions" class="advance-select-options advance-options">
                                       <ul class="advance-options">
                                          <li vl="-1">Hướng nhà</li>
                                          <li vl="0" class="advance-options ">KX&#x110;</li>
                                          <li vl="1" class="advance-options ">&#x110;&#xF4;ng</li>
                                          <li vl="2" class="advance-options ">T&#xE2;y</li>
                                          <li vl="3" class="advance-options ">Nam</li>
                                          <li vl="4" class="advance-options ">B&#x1EAF;c</li>
                                          <li vl="5" class="advance-options ">&#x110;&#xF4;ng-B&#x1EAF;c</li>
                                          <li vl="6" class="advance-options ">T&#xE2;y-B&#x1EAF;c</li>
                                          <li vl="7" class="advance-options ">T&#xE2;y-Nam</li>
                                          <li vl="8" class="advance-options ">&#x110;&#xF4;ng-Nam</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="search-action search-action2">
                                    <a href="javascript:void(0)" class="filter-less">
                                    <img src="../file4.batdongsan.com.vn/images/newhome/up-arrow.png" /> Thu gọn
                                    </a>
                                    <a href="javascript:void(0)" class="action-reset-search-form">
                                    <img src="../file4.batdongsan.com.vn/images/newhome/search-reset.png" /> Xóa
                                    </a>
                                 </div>
                                 <div class="clear"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <input data-val="true" data-val-required="The SubCateId field is required." id="hdCboCatagoryRe" name="SubCateId" type="hidden" value="0" />
                     <input data-val="true" data-val-required="The CateId field is required." id="hdCboCatagory" name="CateId" type="hidden" value="0" />
                  </form>
                  
                  <div class="slides owl-carousel owl-theme">
                      <asp:Image ID="Image3" runat="server" ImageUrl="assets/images/banner1.png" width="100%" height="560px" />
                      <asp:Image ID="Image4" runat="server" ImageUrl="assets/images/banner2.png" width="100%" height="560px" />
                      <asp:Image ID="Image5" runat="server" ImageUrl="assets/images/banner3.png" width="100%" height="560px" />
                      <asp:Image ID="Image6" runat="server" ImageUrl="assets/images/banner4.png" width="100%" height="560px" />
                  </div>
               </div>
            </div>
            <!-- Cac control o giua-->
            
            <div class="home-small" style="">
               <div class="home-small-main">
                  <div class="home-small-heading" id="hometabs">
                     <ul>
                        <li>
                           <h2><a style="cursor: pointer" data-tab="hometab1" class="actived">Tin nổi bật</a></h2>
                        </li>
                        <li>
                           <h2><a style="cursor: pointer" href="javascript:void(0)" data-tab="hometab2">Tin tức</a></h2>
                        </li>
                        <li>
                           <h2><a style="cursor: pointer" href="javascript:void(0)" data-tab="hometab3">Tư vấn </a></h2>
                        </li>
                        <li>
                           <h2><a style="cursor: pointer" href="javascript:void(0)" data-tab="hometab4">Phong thủy</a></h2>
                        </li>
                     </ul>
                     <a href="tin-tuc.html" id="tabview" class="home-small-more">Xem thêm tin tức<img src="../file4.batdongsan.com.vn/images/newhome/3x/icon-arrow-right.png"></a>
                     <div class="clear"></div>
                  </div>
                  <div id="news-slide">
                     <div id="hometab1" class="newscontain">
                        <div class="home-small-main-1 news-show">
                           <div id="hottab-0" class="">
                              <h3>
                                 <a title="Ti&#xEA;u &#x111;i&#x1EC3;m th&#x1ECB; tr&#x1B0;&#x1EDD;ng th&#xE1;ng 7 n&#x103;m 2020&#xD;&#xA;" href="interaktivestory/tieu-diem-thi-truong-bds-t7-2020/index.html">
                                 <span>
                                 <img noloaderror="true" imgerr="1" src="images/20200820080718-be80.jpg" is-lazy-image="true"/>
                                 </span>
                                 Tiêu điểm thị trường tháng 7 năm 2020
                                 <img src="images/20200820080718-be80.jpg" style="width:38px;vertical-align:middle;">
                                 </a>
                              </h3>
                              <div class="news-time">
                                 <img src="images/20200820080718-be80.jpg" />3 ng&#xE0;y tr&#x1B0;&#x1EDB;c
                              </div>
                           </div>
                           <div id="hottab-1" class="hidden">
                              <h3>
                                 <a title="Ti&#xEA;n phong s&#x1ED1; h&#xF3;a quy tr&#xEC;nh b&#xE1;n h&#xE0;ng, &#x110;&#x1EA1;i Ph&#xFA;c Land &#x111;&#xE3; th&#xED;ch &#x1EE9;ng v&#x1EDB;i Covid-19 nh&#x1B0; th&#x1EBF; n&#xE0;o?" href="tin-thi-truong/tien-phong-so-hoa-quy-trinh-ban-hang-dai-phuc-land-da-thich-ung-voi-covid-19-nhu-the-nao-ar104857.html">
                                 <span>
                                 <img noloaderror="true" imgerr="1" src="../staticfile.batdongsan.com.vn/images/icons/lazy-preview-image-DFE3E8.png" src-lazy="https://file4.batdongsan.com.vn/crop/450x265/2020/08/25/b9sp0zUm/20200825160532-3c08.jpg" is-lazy-image="true"/>
                                 </span>
                                 Tiên phong số hóa quy trình bán hàng, Đại Phúc Land đã thích ứng với Covid-19 như thế nào?
                                 </a>
                              </h3>
                              <div class="news-time">
                                 <img src="../file4.batdongsan.com.vn/images/newhome/3x/clock.png" />4 gi&#x1EDD; tr&#x1B0;&#x1EDB;c
                              </div>
                           </div>
                           <div id="hottab-2" class="hidden">
                              <h3>
                                 <a title="&#x110;&#x1EA7;u t&#x1B0; &#x111;&#x1EA5;t c&#xF3; s&#x1ED5; &#x111;&#x1ECF;, nh&#xE0; &#x111;&#x1EA7;u t&#x1B0; v&#x1EAB;n &#x111;i&#xEA;u &#x111;&#x1EE9;ng" href="tin-thi-truong/dau-tu-dat-co-so-do-nha-dau-tu-van-dieu-dung-ar104859.html">
                                 <span>
                                 <img noloaderror="true" imgerr="1" src="../staticfile.batdongsan.com.vn/images/icons/lazy-preview-image-DFE3E8.png" src-lazy="https://file4.batdongsan.com.vn/crop/450x265/2020/08/25/YSUn3oGJ/20200825170742-6fae.jpg" is-lazy-image="true"/>
                                 </span>
                                 Đầu tư đất có sổ đỏ, nhà đầu tư vẫn điêu đứng
                                 </a>
                              </h3>
                              <div class="news-time">
                                 <img src="../file4.batdongsan.com.vn/images/newhome/3x/clock.png" />5 gi&#x1EDD; tr&#x1B0;&#x1EDB;c
                              </div>
                           </div>
                           <div id="hottab-3" class="hidden">
                              <h3>
                                 <a title="Th&#x1ECB; tr&#x1B0;&#x1EDD;ng b&#x1EA5;t &#x111;&#x1ED9;ng s&#x1EA3;n &#x110;&#xE0; N&#x1EB5;ng giao d&#x1ECB;ch &#x1EA3;m &#x111;&#x1EA1;m" href="tin-thi-truong/thi-truong-bat-dong-san-da-nang-giao-dich-am-dam-ar104848.html">
                                 <span>
                                 <img noloaderror="true" imgerr="1" src="../staticfile.batdongsan.com.vn/images/icons/lazy-preview-image-DFE3E8.png" src-lazy="https://file4.batdongsan.com.vn/crop/450x265/2020/08/24/FTnaKngu/20200824154050-605d.jpg" is-lazy-image="true"/>
                                 </span>
                                 Thị trường bất động sản Đà Nẵng giao dịch ảm đạm
                                 </a>
                              </h3>
                              <div class="news-time">
                                 <img src="../file4.batdongsan.com.vn/images/newhome/3x/clock.png" />6 gi&#x1EDD; tr&#x1B0;&#x1EDB;c
                              </div>
                           </div>
                           <div id="hottab-4" class="hidden">
                              <h3>
                                 <a title="&#x110;&#x1EA7;u t&#x1B0; c&#x103;n h&#x1ED9; cho thu&#xEA;: T&#xEC;m khu v&#x1EF1;c n&#xE0;o &#x111;&#x1EC3; kh&#xF4;ng bao gi&#x1EDD; tr&#x1ED1;ng kh&#xE1;ch?" href="loi-khuyen-cho-nguoi-cho-thue/dau-tu-can-ho-cho-thue-tim-khu-vuc-nao-de-khong-bao-gio-trong-khach-ar104819.html">
                                 <span>
                                 <img noloaderror="true" imgerr="1" src="../staticfile.batdongsan.com.vn/images/icons/lazy-preview-image-DFE3E8.png" src-lazy="https://file4.batdongsan.com.vn/crop/450x265/2020/08/20/zk7ggeWN/20200820080718-be80.jpg" is-lazy-image="true"/>
                                 </span>
                                 Đầu tư căn hộ cho thuê: Tìm khu vực nào để không bao giờ trống khách?<img class="news-image-video-icon" atl='' src='../file4.batdongsan.com.vn/images/opt/bds-video.png' />
                                 </a>
                              </h3>
                              <div class="news-time">
                                 <img src="../file4.batdongsan.com.vn/images/newhome/3x/clock.png" />1 ng&#xE0;y tr&#x1B0;&#x1EDB;c
                              </div>
                           </div>
                           <div id="hottab-5" class="hidden">
                              <h3>
                                 <a title="&#x110;&#xE1;nh gi&#xE1; d&#x1EF1; &#xE1;n Khu &#x111;&#xF4; th&#x1ECB; Lideco: 30 tri&#x1EC7;u &#x111;&#x1ED3;ng/m2 bi&#x1EC7;t th&#x1EF1;, c&#xF3; &#x111;&#xE1;ng mua?" href="tin-thi-truong/danh-gia-du-an-khu-do-thi-lideco-30-trieu-dong-m2-biet-thu-co-dang-mua-ar104852.html">
                                 <span>
                                 <img noloaderror="true" imgerr="1" src="../staticfile.batdongsan.com.vn/images/icons/lazy-preview-image-DFE3E8.png" src-lazy="https://file4.batdongsan.com.vn/crop/450x265/2020/08/25/hmcVYWuR/20200825090957-4bec.jpg" is-lazy-image="true"/>
                                 </span>
                                 Đánh giá dự án Khu đô thị Lideco: 30 triệu đồng/m2 biệt thự, có đáng mua?<img class="news-image-video-icon" atl='' src='../file4.batdongsan.com.vn/images/opt/bds-video.png' />
                                 </a>
                              </h3>
                              <div class="news-time">
                                 <img src="../file4.batdongsan.com.vn/images/newhome/3x/clock.png" />1 ng&#xE0;y tr&#x1B0;&#x1EDB;c
                              </div>
                           </div>
                           <div id="hottab-6" class="hidden">
                              <h3>
                                 <a title="5 kinh nghi&#x1EC7;m ch&#x1ECD;n &#x111;&#x1EA5;t &#x111;&#x1EC3; x&#xE2;y nh&#xE0; thu&#x1EAD;n l&#x1EE3;i, ti&#x1EBF;t ki&#x1EC7;m, &#xED;t r&#x1EE7;i ro" href="kien-thuc-xay-dung/5-kinh-nghiem-chon-dat-de-xay-nha-thuan-loi-tiet-kiem-it-rui-ro-ar104828.html">
                                 <span>
                                 <img noloaderror="true" imgerr="1" src="../staticfile.batdongsan.com.vn/images/icons/lazy-preview-image-DFE3E8.png" src-lazy="https://file4.batdongsan.com.vn/crop/450x265/2020/08/20/akCJKkFO/20200820174351-e448.jpg" is-lazy-image="true"/>
                                 </span>
                                 5 kinh nghiệm chọn đất để xây nhà thuận lợi, tiết kiệm, ít rủi ro
                                 </a>
                              </h3>
                              <div class="news-time">
                                 <img src="../file4.batdongsan.com.vn/images/newhome/3x/clock.png" />2 ng&#xE0;y tr&#x1B0;&#x1EDB;c
                              </div>
                           </div>
                        </div>
                        <div class="home-small-main-2">
                           <div class="list-news">
                              <ul>
                                 <li>
                                    <h3>
                                       <a title="Ti&#xEA;u &#x111;i&#x1EC3;m th&#x1ECB; tr&#x1B0;&#x1EDD;ng th&#xE1;ng 7 n&#x103;m 2020&#xD;&#xA;"
                                          data-index="#hottab-0"
                                          href="interaktivestory/tieu-diem-thi-truong-bds-t7-2020/index.html">
                                       Tiêu điểm thị trường tháng 7 năm 2020
                                       <img src="images/20200820080718-be80.jpg" style="width:38px;vertical-align:middle;">
                                       </a>
                                    </h3>
                                 </li>
                                 <li>
                                    <h3>
                                       <a title="Ti&#xEA;n phong s&#x1ED1; h&#xF3;a quy tr&#xEC;nh b&#xE1;n h&#xE0;ng, &#x110;&#x1EA1;i Ph&#xFA;c Land &#x111;&#xE3; th&#xED;ch &#x1EE9;ng v&#x1EDB;i Covid-19 nh&#x1B0; th&#x1EBF; n&#xE0;o?"
                                          data-index="#hottab-1"
                                          href="tin-thi-truong/tien-phong-so-hoa-quy-trinh-ban-hang-dai-phuc-land-da-thich-ung-voi-covid-19-nhu-the-nao-ar104857.html">
                                       Tiên phong số hóa quy trình bán hàng, Đại Phúc Land đã thích ứng với Covid-19 như thế nào?
                                       </a>
                                    </h3>
                                 </li>
                                 <li>
                                    <h3>
                                       <a title="&#x110;&#x1EA7;u t&#x1B0; &#x111;&#x1EA5;t c&#xF3; s&#x1ED5; &#x111;&#x1ECF;, nh&#xE0; &#x111;&#x1EA7;u t&#x1B0; v&#x1EAB;n &#x111;i&#xEA;u &#x111;&#x1EE9;ng"
                                          data-index="#hottab-2"
                                          href="tin-thi-truong/dau-tu-dat-co-so-do-nha-dau-tu-van-dieu-dung-ar104859.html">
                                       Đầu tư đất có sổ đỏ, nhà đầu tư vẫn điêu đứng
                                       </a>
                                    </h3>
                                 </li>
                                 <li>
                                    <h3>
                                       <a title="Th&#x1ECB; tr&#x1B0;&#x1EDD;ng b&#x1EA5;t &#x111;&#x1ED9;ng s&#x1EA3;n &#x110;&#xE0; N&#x1EB5;ng giao d&#x1ECB;ch &#x1EA3;m &#x111;&#x1EA1;m"
                                          data-index="#hottab-3"
                                          href="tin-thi-truong/thi-truong-bat-dong-san-da-nang-giao-dich-am-dam-ar104848.html">
                                       Thị trường bất động sản Đà Nẵng giao dịch ảm đạm
                                       </a>
                                    </h3>
                                 </li>
                                 <li>
                                    <h3>
                                       <a title="&#x110;&#x1EA7;u t&#x1B0; c&#x103;n h&#x1ED9; cho thu&#xEA;: T&#xEC;m khu v&#x1EF1;c n&#xE0;o &#x111;&#x1EC3; kh&#xF4;ng bao gi&#x1EDD; tr&#x1ED1;ng kh&#xE1;ch?"
                                          data-index="#hottab-4"
                                          href="loi-khuyen-cho-nguoi-cho-thue/dau-tu-can-ho-cho-thue-tim-khu-vuc-nao-de-khong-bao-gio-trong-khach-ar104819.html">
                                       Đầu tư căn hộ cho thuê: Tìm khu vực nào để không bao giờ trống khách?<img class="news-image-video-icon" atl='' src='../file4.batdongsan.com.vn/images/opt/bds-video.png' />
                                       </a>
                                    </h3>
                                 </li>
                                 <li>
                                    <h3>
                                       <a title="&#x110;&#xE1;nh gi&#xE1; d&#x1EF1; &#xE1;n Khu &#x111;&#xF4; th&#x1ECB; Lideco: 30 tri&#x1EC7;u &#x111;&#x1ED3;ng/m2 bi&#x1EC7;t th&#x1EF1;, c&#xF3; &#x111;&#xE1;ng mua?"
                                          data-index="#hottab-5"
                                          href="tin-thi-truong/danh-gia-du-an-khu-do-thi-lideco-30-trieu-dong-m2-biet-thu-co-dang-mua-ar104852.html">
                                       Đánh giá dự án Khu đô thị Lideco: 30 triệu đồng/m2 biệt thự, có đáng mua?<img class="news-image-video-icon" atl='' src='../file4.batdongsan.com.vn/images/opt/bds-video.png' />
                                       </a>
                                    </h3>
                                 </li>
                                 <li>
                                    <h3>
                                       <a title="5 kinh nghi&#x1EC7;m ch&#x1ECD;n &#x111;&#x1EA5;t &#x111;&#x1EC3; x&#xE2;y nh&#xE0; thu&#x1EAD;n l&#x1EE3;i, ti&#x1EBF;t ki&#x1EC7;m, &#xED;t r&#x1EE7;i ro"
                                          data-index="#hottab-6"
                                          href="kien-thuc-xay-dung/5-kinh-nghiem-chon-dat-de-xay-nha-thuan-loi-tiet-kiem-it-rui-ro-ar104828.html">
                                       5 kinh nghiệm chọn đất để xây nhà thuận lợi, tiết kiệm, ít rủi ro
                                       </a>
                                    </h3>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <div class="clear"></div>
                     </div>
                     <div id="hometab2" class="hidden newscontain">
                        <div class="clear"></div>
                     </div>
                     <div id="hometab3" class="hidden newscontain">
                        <div class="clear"></div>
                     </div>
                     <div id="hometab4" class="hidden newscontain">
                        <div class="clear"></div>
                     </div>
                  </div>
                  </script>
               </div>
               <div class="home-small-banner">
                  <img src="images/banner1.png" width="100%" height="500px;">
               </div>
               <div class="clear"></div>
            </div>
            <div class="home-center bg-grey" id="interestedProductsBinnovaContent">
               <div class="home-product product-4-you">
                  <h2 class="fl">Bất động sản dành cho bạn</h2>
                  <div class="home-more-link">
                     <a href="nha-dat-ban.html">Tin nhà đất bán mới nhất</a>
                     &nbsp;&nbsp;|&nbsp;&nbsp;
                     <a href="nha-dat-cho-thue.html">Tin nhà đất cho thuê mới nhất</a>
                  </div>
                  <div class="clear"></div>
                  <ul>
                     <li class="">
                        <div class="vip5" rel="26808142" uid="1382897">
                           <div class="product-thumb ">
                              <a title="Bql C&#x1EA7;n Cho Thu&#xEA; V&#x103;n Ph&#xF2;ng H&#x1EA1;ng A Cao C&#x1EA5;p t&#xF2;a Nh&#xE0; CMC Ph&#x1ED1; duy T&#xE2;n ,C&#x1EA7;u Gi&#x1EA5;y 300m2 , LH : 0397791941"
                                 href="cho-thue-van-phong-duong-duy-tan-phuong-dich-vong-hau-prj-cmc-tower/bql-can-cho-hang-a-cao-cap-toa-nha-pho-cau-giay-300m2-lh-0397791941-pr26808142.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/26/20200826145541-8f71_wm.jpg" alt="Bql C&#x1EA7;n Cho Thu&#xEA; V&#x103;n Ph&#xF2;ng H&#x1EA1;ng A Cao C&#x1EA5;p t&#xF2;a Nh&#xE0; CMC Ph&#x1ED1; duy T&#xE2;n ,C&#x1EA7;u Gi&#x1EA5;y 300m2 , LH : 0397791941">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">4</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="cho-thue-van-phong-duong-duy-tan-phuong-dich-vong-hau-prj-cmc-tower/bql-can-cho-hang-a-cao-cap-toa-nha-pho-cau-giay-300m2-lh-0397791941-pr26808142.html" title="Bql C&#x1EA7;n Cho Thu&#xEA; V&#x103;n Ph&#xF2;ng H&#x1EA1;ng A Cao C&#x1EA5;p t&#xF2;a Nh&#xE0; CMC Ph&#x1ED1; duy T&#xE2;n ,C&#x1EA7;u Gi&#x1EA5;y 300m2 , LH : 0397791941">Bql C&#x1EA7;n Cho Thu&#xEA; V&#x103;n Ph&#xF2;ng H&#x1EA1;ng A Cao C&#x1EA5;p t&#xF2;a Nh&#xE0; CMC Ph&#x1ED1; duy T&#xE2;n ,C&#x1EA7;u Gi&#x1EA5;y 300m2 , LH : 0397791941</a>
                              </div>
                              <div class="product-price">290 ngh&#xEC;n/m&#xB2;/th&#xE1;ng</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">79 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="cho-thue-van-phong-cau-giay.html" title="C&#x1EA7;u Gi&#x1EA5;y">C&#x1EA7;u Gi&#x1EA5;y</a>,
                                 <a href="cho-thue-van-phong-ha-noi.html" title="H&#xE0; N&#x1ED9;i">H&#xE0; N&#x1ED9;i</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="">
                        <div class="vip5" rel="26808139" uid="1003484">
                           <div class="product-thumb ">
                              <a title="B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng Kinh Doanh T&#x1ED1;t T&#x1EA1;i Ph&#x1ED1; &#x110;&#x1EE9;c Giang-Long Bi&#xEA;n-HN. Dt 38m. H&#x110;N. Gi&#xE1; 3,8 t&#x1EF7;"
                                 href="ban-nha-rieng-duong-duc-giang-phuong-duc-giang-2/ban-5-tang-kinh-doanh-tot-tai-pho-long-bien-hn-dt-38m-hdn-gia-3-8-ty-pr26808139.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/26/20200826145331-791e_wm.jpg" alt="B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng Kinh Doanh T&#x1ED1;t T&#x1EA1;i Ph&#x1ED1; &#x110;&#x1EE9;c Giang-Long Bi&#xEA;n-HN. Dt 38m. H&#x110;N. Gi&#xE1; 3,8 t&#x1EF7;">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">8</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-nha-rieng-duong-duc-giang-phuong-duc-giang-2/ban-5-tang-kinh-doanh-tot-tai-pho-long-bien-hn-dt-38m-hdn-gia-3-8-ty-pr26808139.html" title="B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng Kinh Doanh T&#x1ED1;t T&#x1EA1;i Ph&#x1ED1; &#x110;&#x1EE9;c Giang-Long Bi&#xEA;n-HN. Dt 38m. H&#x110;N. Gi&#xE1; 3,8 t&#x1EF7;">B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng Kinh Doanh T&#x1ED1;t T&#x1EA1;i Ph&#x1ED1; &#x110;&#x1EE9;c Giang-Long Bi&#xEA;n-HN. Dt 38m. H&#x110;N. Gi&#xE1; 3,8 t&#x1EF7;</a>
                              </div>
                              <div class="product-price">3.8 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">36 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-nha-rieng-long-bien.html" title="Long Bi&#xEA;n">Long Bi&#xEA;n</a>,
                                 <a href="ban-nha-rieng-ha-noi.html" title="H&#xE0; N&#x1ED9;i">H&#xE0; N&#x1ED9;i</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="">
                        <div class="vip5" rel="25629161" uid="417572">
                           <div class="product-thumb ">
                              <a title="B&#xE1;n g&#x1EA5;p nh&#xE0; 8x15m, full n&#x1ED9;i th&#x1EA5;t nh&#x1B0; h&#xEC;nh, gi&#xE1; 8 t&#x1EF7; 300tr, c&#xF2;n th&#x1B0;&#x1A1;ng l&#x1B0;&#x1EE3;ng"
                                 href="ban-nha-biet-thu-lien-ke-duong-vanh-dai-2-phuong-phu-huu-2-prj-mega-village/ban-gap-8x15-full-noi-that-nhu-hinh-gia-chi-8ty5-thuong-luong-pr25629161.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/05/29/20200529130000-5ae1_wm.jpg" alt="B&#xE1;n g&#x1EA5;p nh&#xE0; 8x15m, full n&#x1ED9;i th&#x1EA5;t nh&#x1B0; h&#xEC;nh, gi&#xE1; 8 t&#x1EF7; 300tr, c&#xF2;n th&#x1B0;&#x1A1;ng l&#x1B0;&#x1EE3;ng">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">7</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-nha-biet-thu-lien-ke-duong-vanh-dai-2-phuong-phu-huu-2-prj-mega-village/ban-gap-8x15-full-noi-that-nhu-hinh-gia-chi-8ty5-thuong-luong-pr25629161.html" title="B&#xE1;n g&#x1EA5;p nh&#xE0; 8x15m, full n&#x1ED9;i th&#x1EA5;t nh&#x1B0; h&#xEC;nh, gi&#xE1; 8 t&#x1EF7; 300tr, c&#xF2;n th&#x1B0;&#x1A1;ng l&#x1B0;&#x1EE3;ng">B&#xE1;n g&#x1EA5;p nh&#xE0; 8x15m, full n&#x1ED9;i th&#x1EA5;t nh&#x1B0; h&#xEC;nh, gi&#xE1; 8 t&#x1EF7; 300tr, c&#xF2;n th&#x1B0;&#x1A1;ng l&#x1B0;&#x1EE3;ng</a>
                              </div>
                              <div class="product-price">8.3 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">120 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-nha-biet-thu-lien-ke-quan-9.html" title="Qu&#x1EAD;n 9">Qu&#x1EAD;n 9</a>,
                                 <a href="ban-nha-biet-thu-lien-ke-tp-hcm.html" title="H&#x1ED3; Ch&#xED; Minh">H&#x1ED3; Ch&#xED; Minh</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="">
                        <div class="vip5" rel="25679525" uid="589379">
                           <div class="product-thumb noimage">
                              <a title="B&#xE1;n XNG d&#x1EF1; &#xE1;n King Palace - Nguy&#x1EC5;n Tr&#xE3;i - cam k&#x1EBF;t r&#x1EBB; h&#x1A1;n th&#x1ECB; tr&#x1B0;&#x1EDD;ng 1.2 t&#x1EF7; - 126m2 - 0986 796 001"
                                 href="ban-can-ho-chung-cu-duong-nguyen-trai-phuong-thuong-dinh-prj-king-palace/ban-xng-du-an-place-cam-ket-re-hon-thi-truong-1-2-ty-dt-126m2-0986-796-001-pr25679525.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/06/02/20200602221622-50b5_wm.jpg" alt="B&#xE1;n XNG d&#x1EF1; &#xE1;n King Palace - Nguy&#x1EC5;n Tr&#xE3;i - cam k&#x1EBF;t r&#x1EBB; h&#x1A1;n th&#x1ECB; tr&#x1B0;&#x1EDD;ng 1.2 t&#x1EF7; - 126m2 - 0986 796 001">
                              </a>
                              <span class="product-feature">
                              </span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-can-ho-chung-cu-duong-nguyen-trai-phuong-thuong-dinh-prj-king-palace/ban-xng-du-an-place-cam-ket-re-hon-thi-truong-1-2-ty-dt-126m2-0986-796-001-pr25679525.html" title="B&#xE1;n XNG d&#x1EF1; &#xE1;n King Palace - Nguy&#x1EC5;n Tr&#xE3;i - cam k&#x1EBF;t r&#x1EBB; h&#x1A1;n th&#x1ECB; tr&#x1B0;&#x1EDD;ng 1.2 t&#x1EF7; - 126m2 - 0986 796 001">B&#xE1;n XNG d&#x1EF1; &#xE1;n King Palace - Nguy&#x1EC5;n Tr&#xE3;i - cam k&#x1EBF;t r&#x1EBB; h&#x1A1;n th&#x1ECB; tr&#x1B0;&#x1EDD;ng 1.2 t&#x1EF7; - 126m2 - 0986 796 001</a>
                              </div>
                              <div class="product-price">5.45 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">126 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-can-ho-chung-cu-thanh-xuan.html" title="Thanh Xu&#xE2;n">Thanh Xu&#xE2;n</a>,
                                 <a href="ban-can-ho-chung-cu-ha-noi.html" title="H&#xE0; N&#x1ED9;i">H&#xE0; N&#x1ED9;i</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="">
                        <div class="vip5" rel="26568031" uid="736386">
                           <div class="product-thumb ">
                              <a title="Chuy&#x1EC3;n nh&#x1B0;&#x1EE3;ng c&#x1EB7;p n&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng A3 khu T&#x110;C T&#xE2;n Ph&#xFA;, P T&#xE2;n Ph&#xFA;, C&#xE1;i R&#x103;ng, C&#x1EA7;n Th&#x1A1;"
                                 href="ban-dat-duong-a3-phuong-tan-phu-1/chuyen-nhuong-cap-nen-khu-tdc-p-cai-rang-can-tho-pr26568031.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/07/fGFLmSs2/20200807133324-e67d_wm.jpg" alt="Chuy&#x1EC3;n nh&#x1B0;&#x1EE3;ng c&#x1EB7;p n&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng A3 khu T&#x110;C T&#xE2;n Ph&#xFA;, P T&#xE2;n Ph&#xFA;, C&#xE1;i R&#x103;ng, C&#x1EA7;n Th&#x1A1;">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">4</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-dat-duong-a3-phuong-tan-phu-1/chuyen-nhuong-cap-nen-khu-tdc-p-cai-rang-can-tho-pr26568031.html" title="Chuy&#x1EC3;n nh&#x1B0;&#x1EE3;ng c&#x1EB7;p n&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng A3 khu T&#x110;C T&#xE2;n Ph&#xFA;, P T&#xE2;n Ph&#xFA;, C&#xE1;i R&#x103;ng, C&#x1EA7;n Th&#x1A1;">Chuy&#x1EC3;n nh&#x1B0;&#x1EE3;ng c&#x1EB7;p n&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng A3 khu T&#x110;C T&#xE2;n Ph&#xFA;, P T&#xE2;n Ph&#xFA;, C&#xE1;i R&#x103;ng, C&#x1EA7;n Th&#x1A1;</a>
                              </div>
                              <div class="product-price">2.5 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">160 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-dat-cai-rang-ct.html" title="C&#xE1;i R&#x103;ng">C&#xE1;i R&#x103;ng</a>,
                                 <a href="ban-dat-can-tho.html" title="C&#x1EA7;n Th&#x1A1;">C&#x1EA7;n Th&#x1A1;</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="">
                        <div class="vip5 vipaddon" rel="26808140" uid="949937">
                           <div class="product-thumb ">
                              <a title="D&#x1ECA;CH COVID , GIA &#x110;&#xCC;NH K&#x1EB8;T TI&#x1EC0;N B&#xC1;N G&#x1EA4;P C&#x102;N H&#x1ED8; COMPASS ONE -TDM , 77m2 gi&#xE1; 1,8 t&#x1EF7; , LH 0862793768"
                                 href="ban-can-ho-chung-cu-duong-hoang-van-thu-phuong-chanh-nghia-prj-compass-one/dich-covid-gia-dinh-ket-tien-ban-gap-tdm-77m2-gia-1-8-ty-lh-0862793768-pr26808140.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/26/20200826145451-cf9c_wm.jpg" alt="D&#x1ECA;CH COVID , GIA &#x110;&#xCC;NH K&#x1EB8;T TI&#x1EC0;N B&#xC1;N G&#x1EA4;P C&#x102;N H&#x1ED8; COMPASS ONE -TDM , 77m2 gi&#xE1; 1,8 t&#x1EF7; , LH 0862793768">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">3</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-can-ho-chung-cu-duong-hoang-van-thu-phuong-chanh-nghia-prj-compass-one/dich-covid-gia-dinh-ket-tien-ban-gap-tdm-77m2-gia-1-8-ty-lh-0862793768-pr26808140.html" title="D&#x1ECA;CH COVID , GIA &#x110;&#xCC;NH K&#x1EB8;T TI&#x1EC0;N B&#xC1;N G&#x1EA4;P C&#x102;N H&#x1ED8; COMPASS ONE -TDM , 77m2 gi&#xE1; 1,8 t&#x1EF7; , LH 0862793768">D&#x1ECA;CH COVID , GIA &#x110;&#xCC;NH K&#x1EB8;T TI&#x1EC0;N B&#xC1;N G&#x1EA4;P C&#x102;N H&#x1ED8; COMPASS ONE -TDM , 77m2 gi&#xE1; 1,8 t&#x1EF7; , LH 0862793768</a>
                              </div>
                              <div class="product-price">1.8 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">77 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-can-ho-chung-cu-thu-dau-mot-bd.html" title="Th&#x1EE7; D&#x1EA7;u M&#x1ED9;t">Th&#x1EE7; D&#x1EA7;u M&#x1ED9;t</a>,
                                 <a href="ban-can-ho-chung-cu-binh-duong.html" title="B&#xEC;nh D&#x1B0;&#x1A1;ng">B&#xEC;nh D&#x1B0;&#x1A1;ng</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="">
                        <div class="vip5" rel="26808141" uid="618392">
                           <div class="product-thumb ">
                              <a title="B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng ng&#xF5; 603 L&#x1EA1;c qu&#xE2;n T&#xE2;y H&#x1ED3;, Hn. DT 35m2, ai c&#xF3; nhu c&#x1EA7;u li&#xEA;n h&#x1EC7; 0972264985"
                                 href="ban-nha-rieng-duong-lac-long-quan-phuong-xuan-la/ban-5-tang-ngo-603-tay-ho-hn-dt-35m2-ai-co-nhu-cau-lien-he-0972264985-pr26808141.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/26/20200826145321-fb5b_wm.jpg" alt="B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng ng&#xF5; 603 L&#x1EA1;c qu&#xE2;n T&#xE2;y H&#x1ED3;, Hn. DT 35m2, ai c&#xF3; nhu c&#x1EA7;u li&#xEA;n h&#x1EC7; 0972264985">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">8</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-nha-rieng-duong-lac-long-quan-phuong-xuan-la/ban-5-tang-ngo-603-tay-ho-hn-dt-35m2-ai-co-nhu-cau-lien-he-0972264985-pr26808141.html" title="B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng ng&#xF5; 603 L&#x1EA1;c qu&#xE2;n T&#xE2;y H&#x1ED3;, Hn. DT 35m2, ai c&#xF3; nhu c&#x1EA7;u li&#xEA;n h&#x1EC7; 0972264985">B&#xE1;n nh&#xE0; 5 t&#x1EA7;ng ng&#xF5; 603 L&#x1EA1;c qu&#xE2;n T&#xE2;y H&#x1ED3;, Hn. DT 35m2, ai c&#xF3; nhu c&#x1EA7;u li&#xEA;n h&#x1EC7; 0972264985</a>
                              </div>
                              <div class="product-price">4 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">35 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-nha-rieng-tay-ho.html" title="T&#xE2;y H&#x1ED3;">T&#xE2;y H&#x1ED3;</a>,
                                 <a href="ban-nha-rieng-ha-noi.html" title="H&#xE0; N&#x1ED9;i">H&#xE0; N&#x1ED9;i</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="">
                        <div class="vip5" rel="26802303" uid="1427953">
                           <div class="product-thumb noimage">
                              <a title="M&#x1EB7;t ph&#x1ED1; L&#xEA; Tr&#x1ECD;ng T&#x1EA5;n - qu&#x1EAD;n Thanh Xu&#xE2;n - 8 t&#x1EA7;ng thang m&#xE1;y - 39,6 t&#x1EF7;"
                                 href="ban-nha-mat-pho-pho-le-trong-tan-phuong-khuong-mai/-thanh-xuan-quan-9-g-thang-may-39-6-ty-pr26802303.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/26/20200826095933-efea_wm.jpg" alt="M&#x1EB7;t ph&#x1ED1; L&#xEA; Tr&#x1ECD;ng T&#x1EA5;n - qu&#x1EAD;n Thanh Xu&#xE2;n - 8 t&#x1EA7;ng thang m&#xE1;y - 39,6 t&#x1EF7;">
                              </a>
                              <span class="product-feature">
                              </span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-nha-mat-pho-pho-le-trong-tan-phuong-khuong-mai/-thanh-xuan-quan-9-g-thang-may-39-6-ty-pr26802303.html" title="M&#x1EB7;t ph&#x1ED1; L&#xEA; Tr&#x1ECD;ng T&#x1EA5;n - qu&#x1EAD;n Thanh Xu&#xE2;n - 8 t&#x1EA7;ng thang m&#xE1;y - 39,6 t&#x1EF7;">M&#x1EB7;t ph&#x1ED1; L&#xEA; Tr&#x1ECD;ng T&#x1EA5;n - qu&#x1EAD;n Thanh Xu&#xE2;n - 8 t&#x1EA7;ng thang m&#xE1;y - 39,6 t&#x1EF7;</a>
                              </div>
                              <div class="product-price">39.6 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">83 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-nha-mat-pho-thanh-xuan.html" title="Thanh Xu&#xE2;n">Thanh Xu&#xE2;n</a>,
                                 <a href="ban-nha-mat-pho-ha-noi.html" title="H&#xE0; N&#x1ED9;i">H&#xE0; N&#x1ED9;i</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="26270742" uid="259688">
                           <div class="product-thumb ">
                              <a title="Ch&#xED;nh ch&#x1EE7; b&#xE1;n g&#x1EA5;p CH 2308 155.56m2 CC Discovery Complex BC &#x110;&#xF4;ng Nam &#x111;&#x1EB9;p nh&#x1EA5;t d&#x1EF1; &#xE1;n view tr&#x1ECD;n H&#x1ED3; T&#xE2;y"
                                 href="ban-can-ho-chung-cu-duong-cau-giay-phuong-dich-vong-prj-discovery-complex/chinh-chu-ban-gap-ch-155m2-bc-dong-nam-dep-nhat-du-an-view-tron-tay-pr26270742.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/07/15/20200715154541-1cea_wm.jpg" alt="Ch&#xED;nh ch&#x1EE7; b&#xE1;n g&#x1EA5;p CH 2308 155.56m2 CC Discovery Complex BC &#x110;&#xF4;ng Nam &#x111;&#x1EB9;p nh&#x1EA5;t d&#x1EF1; &#xE1;n view tr&#x1ECD;n H&#x1ED3; T&#xE2;y">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">7</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-can-ho-chung-cu-duong-cau-giay-phuong-dich-vong-prj-discovery-complex/chinh-chu-ban-gap-ch-155m2-bc-dong-nam-dep-nhat-du-an-view-tron-tay-pr26270742.html" title="Ch&#xED;nh ch&#x1EE7; b&#xE1;n g&#x1EA5;p CH 2308 155.56m2 CC Discovery Complex BC &#x110;&#xF4;ng Nam &#x111;&#x1EB9;p nh&#x1EA5;t d&#x1EF1; &#xE1;n view tr&#x1ECD;n H&#x1ED3; T&#xE2;y">Ch&#xED;nh ch&#x1EE7; b&#xE1;n g&#x1EA5;p CH 2308 155.56m2 CC Discovery Complex BC &#x110;&#xF4;ng Nam &#x111;&#x1EB9;p nh&#x1EA5;t d&#x1EF1; &#xE1;n view tr&#x1ECD;n H&#x1ED3; T&#xE2;y</a>
                              </div>
                              <div class="product-price">5.4 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">155.56 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-can-ho-chung-cu-cau-giay.html" title="C&#x1EA7;u Gi&#x1EA5;y">C&#x1EA7;u Gi&#x1EA5;y</a>,
                                 <a href="ban-can-ho-chung-cu-ha-noi.html" title="H&#xE0; N&#x1ED9;i">H&#xE0; N&#x1ED9;i</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="24803994" uid="1089448">
                           <div class="product-thumb ">
                              <a title="C&#x1EA7;n ti&#x1EC1;n g&#x1EA5;p tr&#x1EA3; ti&#x1EC1;n m&#x1EB7;t b&#x1EB1;ng m&#xF9;a d&#x1ECB;ch nh&#x1B0;&#x1EE3;ng r&#x1EBB; l&#x1EA1;i 4 l&#xF4; khu trung t&#xE2;m M1 d&#x1EF1; &#xE1;n Sala Garden"
                                 href="ban-dat-nen-du-an-xa-tan-hiep-8-prj-sala-garden/c-tien-gap-tra-tien-mat-bg-mua-dich-nhuong-re-lai-4-lo-khu-trung-tam-m1-garden-pr24803994.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/03/16/20200316115710-206b_wm.jpg" alt="C&#x1EA7;n ti&#x1EC1;n g&#x1EA5;p tr&#x1EA3; ti&#x1EC1;n m&#x1EB7;t b&#x1EB1;ng m&#xF9;a d&#x1ECB;ch nh&#x1B0;&#x1EE3;ng r&#x1EBB; l&#x1EA1;i 4 l&#xF4; khu trung t&#xE2;m M1 d&#x1EF1; &#xE1;n Sala Garden">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">3</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-dat-nen-du-an-xa-tan-hiep-8-prj-sala-garden/c-tien-gap-tra-tien-mat-bg-mua-dich-nhuong-re-lai-4-lo-khu-trung-tam-m1-garden-pr24803994.html" title="C&#x1EA7;n ti&#x1EC1;n g&#x1EA5;p tr&#x1EA3; ti&#x1EC1;n m&#x1EB7;t b&#x1EB1;ng m&#xF9;a d&#x1ECB;ch nh&#x1B0;&#x1EE3;ng r&#x1EBB; l&#x1EA1;i 4 l&#xF4; khu trung t&#xE2;m M1 d&#x1EF1; &#xE1;n Sala Garden">C&#x1EA7;n ti&#x1EC1;n g&#x1EA5;p tr&#x1EA3; ti&#x1EC1;n m&#x1EB7;t b&#x1EB1;ng m&#xF9;a d&#x1ECB;ch nh&#x1B0;&#x1EE3;ng r&#x1EBB; l&#x1EA1;i 4 l&#xF4; khu trung t&#xE2;m M1 d&#x1EF1; &#xE1;n Sala Garden</a>
                              </div>
                              <div class="product-price">85 tri&#x1EC7;u</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">4.8 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-dat-nen-du-an-long-thanh-dna.html" title="Long Th&#xE0;nh">Long Th&#xE0;nh</a>,
                                 <a href="ban-dat-nen-du-an-dong-nai.html" title="&#x110;&#x1ED3;ng Nai">&#x110;&#x1ED3;ng Nai</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="26560298" uid="989932">
                           <div class="product-thumb ">
                              <a title="C&#x1EA7;n b&#xE1;n g&#x1EA5;p 6x15 T&#xE2;n Ph&#xFA; Trung, gi&#xE1; 800tr"
                                 href="ban-dat-duong-101-xa-tan-phu-trung/can-ban-gap-6x15-gia-800-tr-pr26560298.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/07/20200807094314-bb28.jpg" alt="C&#x1EA7;n b&#xE1;n g&#x1EA5;p 6x15 T&#xE2;n Ph&#xFA; Trung, gi&#xE1; 800tr">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">4</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-dat-duong-101-xa-tan-phu-trung/can-ban-gap-6x15-gia-800-tr-pr26560298.html" title="C&#x1EA7;n b&#xE1;n g&#x1EA5;p 6x15 T&#xE2;n Ph&#xFA; Trung, gi&#xE1; 800tr">C&#x1EA7;n b&#xE1;n g&#x1EA5;p 6x15 T&#xE2;n Ph&#xFA; Trung, gi&#xE1; 800tr</a>
                              </div>
                              <div class="product-price">800 tri&#x1EC7;u</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">90 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-dat-cu-chi.html" title="C&#x1EE7; Chi">C&#x1EE7; Chi</a>,
                                 <a href="ban-dat-tp-hcm.html" title="H&#x1ED3; Ch&#xED; Minh">H&#x1ED3; Ch&#xED; Minh</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="26808135" uid="1357732">
                           <div class="product-thumb noimage">
                              <a title="Nh&#xE0; vip - Th&#xE0;nh ph&#x1ED1; S&#x1A1;n La 107.5m2"
                                 href="ban-nha-rieng-phuong-chieng-le/-vip-thanh-pho-son-la-107-5m2-pr26808135.html">
                              <img src="../staticfile.batdongsan.com.vn/images/no-image.png" alt="Nh&#xE0; vip - Th&#xE0;nh ph&#x1ED1; S&#x1A1;n La 107.5m2">
                              </a>
                              <span class="product-feature">
                              </span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-nha-rieng-phuong-chieng-le/-vip-thanh-pho-son-la-107-5m2-pr26808135.html" title="Nh&#xE0; vip - Th&#xE0;nh ph&#x1ED1; S&#x1A1;n La 107.5m2">Nh&#xE0; vip - Th&#xE0;nh ph&#x1ED1; S&#x1A1;n La 107.5m2</a>
                              </div>
                              <div class="product-price">3 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">107.5 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-nha-rieng-son-la-sl.html" title="S&#x1A1;n La">S&#x1A1;n La</a>,
                                 <a href="ban-nha-rieng-son-la.html" title="S&#x1A1;n La">S&#x1A1;n La</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="26808137" uid="1400953">
                           <div class="product-thumb ">
                              <a title="C&#x103;n h&#x1ED9; 2PN full n&#x1ED9;i th&#x1EA5;t cao c&#x1EA5;p Vista Verde cho thu&#xEA; nhanh ch&#x1EC9; 16 tri&#x1EC7;u/th&#xE1;ng bao ph&#xED;. 0906390003"
                                 href="cho-thue-can-ho-chung-cu-duong-phan-van-dang-ph/-2pn-full-noi-that-cao-cap-c-nhanh-chi-16-trieu-thang-bao-phi-0906390003-pr26808137.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/26/20200826144021-3bd6_wm.jpg" alt="C&#x103;n h&#x1ED9; 2PN full n&#x1ED9;i th&#x1EA5;t cao c&#x1EA5;p Vista Verde cho thu&#xEA; nhanh ch&#x1EC9; 16 tri&#x1EC7;u/th&#xE1;ng bao ph&#xED;. 0906390003">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">6</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="cho-thue-can-ho-chung-cu-duong-phan-van-dang-ph/-2pn-full-noi-that-cao-cap-c-nhanh-chi-16-trieu-thang-bao-phi-0906390003-pr26808137.html" title="C&#x103;n h&#x1ED9; 2PN full n&#x1ED9;i th&#x1EA5;t cao c&#x1EA5;p Vista Verde cho thu&#xEA; nhanh ch&#x1EC9; 16 tri&#x1EC7;u/th&#xE1;ng bao ph&#xED;. 0906390003">C&#x103;n h&#x1ED9; 2PN full n&#x1ED9;i th&#x1EA5;t cao c&#x1EA5;p Vista Verde cho thu&#xEA; nhanh ch&#x1EC9; 16 tri&#x1EC7;u/th&#xE1;ng bao ph&#xED;. 0906390003</a>
                              </div>
                              <div class="product-price">16 tri&#x1EC7;u/th&#xE1;ng</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">84 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="cho-thue-can-ho-chung-cu-quan-2.html" title="Qu&#x1EAD;n 2">Qu&#x1EAD;n 2</a>,
                                 <a href="cho-thue-can-ho-chung-cu-tp-hcm.html" title="H&#x1ED3; Ch&#xED; Minh">H&#x1ED3; Ch&#xED; Minh</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="26808136" uid="1435224">
                           <div class="product-thumb ">
                              <a title="Chung c&#x1B0; Sao Ngh&#x1EC7;, &#x111;&#x1B0;&#x1EDD;ng Nguy&#x1EC5;n S&#x1EF9; S&#xE1;ch gi&#xE1; t&#x1EEB; 10 tri&#x1EC7;u/m2 , h&#x1ED7; tr&#x1EE3; tr&#x1EA3; g&#xF3;p. LH 0942.995.498"
                                 href="ban-can-ho-chung-cu-phuong-hung-phuc-prj-chung-cu-sao-nghe/-duong-nguyen-sy-sach-gia-tu-10-trieu-m2-tro-tra-gop-lh-0942-995-498-pr26808136.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2020/08/26/20200826145435-4b6a_wm.jpg" alt="Chung c&#x1B0; Sao Ngh&#x1EC7;, &#x111;&#x1B0;&#x1EDD;ng Nguy&#x1EC5;n S&#x1EF9; S&#xE1;ch gi&#xE1; t&#x1EEB; 10 tri&#x1EC7;u/m2 , h&#x1ED7; tr&#x1EE3; tr&#x1EA3; g&#xF3;p. LH 0942.995.498">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">4</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-can-ho-chung-cu-phuong-hung-phuc-prj-chung-cu-sao-nghe/-duong-nguyen-sy-sach-gia-tu-10-trieu-m2-tro-tra-gop-lh-0942-995-498-pr26808136.html" title="Chung c&#x1B0; Sao Ngh&#x1EC7;, &#x111;&#x1B0;&#x1EDD;ng Nguy&#x1EC5;n S&#x1EF9; S&#xE1;ch gi&#xE1; t&#x1EEB; 10 tri&#x1EC7;u/m2 , h&#x1ED7; tr&#x1EE3; tr&#x1EA3; g&#xF3;p. LH 0942.995.498">Chung c&#x1B0; Sao Ngh&#x1EC7;, &#x111;&#x1B0;&#x1EDD;ng Nguy&#x1EC5;n S&#x1EF9; S&#xE1;ch gi&#xE1; t&#x1EEB; 10 tri&#x1EC7;u/m2 , h&#x1ED7; tr&#x1EE3; tr&#x1EA3; g&#xF3;p. LH 0942.995.498</a>
                              </div>
                              <div class="product-price">10.12 tri&#x1EC7;u/m&#xB2;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">68.1 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-can-ho-chung-cu-vinh-na.html" title="Vinh">Vinh</a>,
                                 <a href="ban-can-ho-chung-cu-nghe-an.html" title="Ngh&#x1EC7; An">Ngh&#x1EC7; An</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="23998844" uid="736386">
                           <div class="product-thumb ">
                              <a title="B&#xE1;n n&#x1EC1;n m&#x1EB7;t ti&#x1EC1;n H&#x1ED3; B&#xFA;n X&#xE1;ng k&#x1EBF; Hoa Vi&#xEA;n Th&#xE0;nh &#x110;&#x1EA1;t"
                                 href="ban-dat-phuong-an-khanh-1/ban-nen-mat-tien-ho-bung-xang-ke-hoa-vien-thanh-dat-pr23998844.html">
                              <img src="../file4.batdongsan.com.vn/crop/257x147/2019/12/24/fGFLmSs2/20191224143818-823e.jpg" alt="B&#xE1;n n&#x1EC1;n m&#x1EB7;t ti&#x1EC1;n H&#x1ED3; B&#xFA;n X&#xE1;ng k&#x1EBF; Hoa Vi&#xEA;n Th&#xE0;nh &#x110;&#x1EA1;t">
                              </a>
                              <span class="product-feature">
                              </span>
                              <span class="product-media">3</span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="ban-dat-phuong-an-khanh-1/ban-nen-mat-tien-ho-bung-xang-ke-hoa-vien-thanh-dat-pr23998844.html" title="B&#xE1;n n&#x1EC1;n m&#x1EB7;t ti&#x1EC1;n H&#x1ED3; B&#xFA;n X&#xE1;ng k&#x1EBF; Hoa Vi&#xEA;n Th&#xE0;nh &#x110;&#x1EA1;t">B&#xE1;n n&#x1EC1;n m&#x1EB7;t ti&#x1EC1;n H&#x1ED3; B&#xFA;n X&#xE1;ng k&#x1EBF; Hoa Vi&#xEA;n Th&#xE0;nh &#x110;&#x1EA1;t</a>
                              </div>
                              <div class="product-price">3.8 t&#x1EF7;</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">41.9 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="ban-dat-ninh-kieu-ct.html" title="Ninh Ki&#x1EC1;u">Ninh Ki&#x1EC1;u</a>,
                                 <a href="ban-dat-can-tho.html" title="C&#x1EA7;n Th&#x1A1;">C&#x1EA7;n Th&#x1A1;</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="hide-item">
                        <div class="vip5" rel="26808134" uid="1357732">
                           <div class="product-thumb noimage">
                              <a title="Kiot m&#x1EB7;t ti&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng &#x111;&#x1ED1;i di&#x1EC7;n ch&#x1EE3;. 4,5 tri&#x1EC7;u/th&#xE1;ng - 30m2"
                                 href="cho-thue-cua-hang-ki-ot-duong-dinh-phong-phu-phuong-tang-nhon-phu-b/kiot-mat-tien-doi-dien-cho-4-5-trieu-thang-30m2-pr26808134.html">
                              <img src="../staticfile.batdongsan.com.vn/images/no-image.png" alt="Kiot m&#x1EB7;t ti&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng &#x111;&#x1ED1;i di&#x1EC7;n ch&#x1EE3;. 4,5 tri&#x1EC7;u/th&#xE1;ng - 30m2">
                              </a>
                              <span class="product-feature">
                              </span>
                           </div>
                           <div class="home-product-bound">
                              <div class="p-title textTitle">
                                 <a href="cho-thue-cua-hang-ki-ot-duong-dinh-phong-phu-phuong-tang-nhon-phu-b/kiot-mat-tien-doi-dien-cho-4-5-trieu-thang-30m2-pr26808134.html" title="Kiot m&#x1EB7;t ti&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng &#x111;&#x1ED1;i di&#x1EC7;n ch&#x1EE3;. 4,5 tri&#x1EC7;u/th&#xE1;ng - 30m2">Kiot m&#x1EB7;t ti&#x1EC1;n &#x111;&#x1B0;&#x1EDD;ng &#x111;&#x1ED1;i di&#x1EC7;n ch&#x1EE3;. 4,5 tri&#x1EC7;u/th&#xE1;ng - 30m2</a>
                              </div>
                              <div class="product-price">4.5 tri&#x1EC7;u/th&#xE1;ng</div>
                              <span class="ic_dot">·</span>
                              <div class="pro-m2">30 m&#xB2;</div>
                              <div class="product-address">
                                 <a href="cho-thue-cua-hang-ki-ot.html" title="Qu&#x1EAD;n 9">Qu&#x1EAD;n 9</a>,
                                 <a href="cho-thue-cua-hang-ki-ot-tp-hcm.html" title="H&#x1ED3; Ch&#xED; Minh">H&#x1ED3; Ch&#xED; Minh</a>
                              </div>
                              <div class="product-date">
                                 H&#xF4;m nay
                                 <span class="tooltip-time">26/08/2020</span>
                              </div>
                           </div>
                        </div>
                     </li>
                  </ul>
                  <div class="clear"></div>
                  <div id="ucHomeProductInterest_pnlViewMore">
                     <div class="home-viewmore">
                        <a href="javascript:void(0)" id="prd-viewmore">
                        Mở rộng&nbsp;&nbsp;<img src="../file4.batdongsan.com.vn/images/newhome/icon-down-blue.png">
                        </a>
                        <a href="cho-thue-cua-hang-ki-ot-duong-dinh-phong-phu-phuong-tang-nhon-phu-b.html" id="prd-viewless" class="hidden">
                        Xem tiếp
                        </a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="home-small">
               <!-- Banner giua -->

               <div class="home-project">
                  <h2 class="fl">Dự án nổi bật</h2>
                  <div class="home-more-link">
                     <a href="du-an-bat-dong-san.html">Xem thêm&nbsp;&nbsp;>></a>
                  </div>
                  <div class="clear"></div>
                  <div class="swiper-container">
                     <div class="hotproduct owl-carousel owl-theme">    
                        <div class="item">
                           <img src="/assets/images/banner1.png" height="200px" width="100%">
                           <h4>Lorem ipsum dolor sit amet, </h4>
                        </div>
                        <div class="item">
                            <asp:Image ID="Image2" imageurl="~/assets/images/banner2.png" height="200px" width="100%" runat="server" />
                           <h4>Lorem ipsum dolor sit amet, </h4>
                        </div>
                        <div class="item">
                           <img src="/assets/images/banner1.png" height="200px" width="100%">
                           <h4>Lorem ipsum dolor sit amet, </h4>
                        </div>
                        <div class="
                            ">
                           <img src="/assets/images/banner1.png" height="200px" width="100%">
                           <h4>Lorem ipsum dolor sit amet, </h4>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner1.png" height="200px" width="100%">
                           <h4>Lorem ipsum dolor sit amet, </h4>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner1.png" height="200px" width="100%">
                           <h4>Lorem ipsum dolor sit amet, </h4>
                        </div>

                     </div>
                  </div>
                  <div class="swiper-button-prev"></div>
                  <div class="swiper-button-next"></div>
               </div>
               <div class="home-hotnews m-b-30 m-t-38">
                  <h2>Tin tiêu điểm</h2>
                  <div class="swiper-container">
                     <div class="hot-new owl-carousel owl-theme">
                        <div class="item">
                           <img src="~/assets/images/banner2.png" height="300px">
                           <h2>Tin nóng các loại</h2>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner2.png" height="300px">
                           <h2>Tin nóng các loại</h2>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner2.png" height="300px">
                           <h2>Tin nóng các loại</h2>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner2.png" height="300px">
                           <h2>Tin nóng các loại</h2>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner2.png" height="300px">
                           <h2>Tin nóng các loại</h2>
                        </div>
                     </div>
                  </div>
                  <div class="swiper-button-prev"></div>
                  <div class="swiper-button-next"></div>
               </div>
               <div class="home-utility m-b-30">
                  <h2>Hỗ trợ tiện ích</h2>
                  <ul>
                     <li class="color-1">
                        <a href="ho-tro-tien-ich/ht-xem-tuoi-xay-nha.html" rel="nofollow"><img src="images/fshome.png">Xem tuổi xây nhà</a>
                     </li>
                     <li class="color-2">
                        <a href="ho-tro-tien-ich/ht-du-toan-chi-tiet.html" rel="nofollow"><img src="images/estimate.png">  Dự tính chi phí làm nhà </a>
                     </li>
                     <li class="color-3">
                        <a href="ho-tro-tien-ich/ht-tinh-lai-suat" rel="nofollow"><img src="images/money.png">  Tính lãi suất </a>
                     </li>
                     <li class="color-4">
                        <a href="ho-tro-tien-ich/ht-xem-huong-nha.html" rel="nofollow"><img src="images/fengshui.png">  Tư vấn phong thủy</a>
                     </li>
                  </ul>
                  <div class="clear"></div>
               </div>
               <div class="homemain home-social">
                  <h2>Báo chí nói về Batdongsan.com.vn</h2>
                  <div class="swiper-container">
                     <div class="newspapers owl-carousel owl-theme">
                        <div class="item">
                           <img src="~/assets/images/banner4.png" height="300px">
                           <h2> dfg sdfg sdfg sdfghhhfghfdhfg </h2>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner4.png" height="300px">   
                           <h2> dfg sdfg sdfg sdfghhhfghfdhfg </h2>
                        </div>
                        <div class="item">
                           <img src="~/assets/images/banner4.png" height="300px">
                           <h2> dfg sdfg sdfg sdfghhhfghfdhfg </h2>
                        </div>

                        <div class="item">
                           <img src="~/assets/images/banner4.png" height="300px">
                           <h2> dfg sdfg sdfg sdfghhhfghfdhfg </h2>
                        </div>
                     </div>
                  </div>
                  <div class="swiper-button-prev"></div>
                  <div class="swiper-button-next"></div>
                  <div class="clear"></div>
               </div>
            </div>
         </div>
         <!-- end main -->
         <div class="boxLinkFooter">
            <div class="home-center bg-grey2">
               <div class="home-small">
                  <div class="html-content">
                     <div class="home-list-tag">
                        <div class="footer-middle">
                           <div class="footer-middle-colum1">
                              <div class="footer-middle-colum1-title">
                                 <h3>
                                    <a href="nha-dat-ban-tp-hcm.html">MUA BÁN NHÀ ĐẤT TP HCM</a>
                                 </h3>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-nha-rieng-quan-1.html">Bán nhà Quận 1</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-2.html">Bán nhà Quận 2</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-3.html">Bán nhà Quận 3</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-4.html">Bán nhà Quận 4</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-5.html">Bán nhà Quận 5</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-6.html">Bán nhà Quận 6</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-nha-rieng-quan-7.html">Bán nhà Quận 7</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-8.html">Bán nhà Quận 8</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-9.html">Bán nhà Quận 9</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-10.html">Bán nhà Quận 10</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quan-11.html">Bán nhà Quận 11</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-nha-mat-pho-quan-12.html">Bán nhà Quận 12</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-tan-phu.html">Bán nhà Tân Phú</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-thu-duc.html">Bán nhà Thủ Đức</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-binh-chanh.html">Bán nhà Bình Chánh</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-binh-tan.html">Bán nhà Quận Bình Tân</a>
                              </div>
                              <div class="clear">
                                 &nbsp;
                              </div>
                           </div>
                           <div class="footer-middle-colum1">
                              <div class="footer-middle-colum1-title">
                                 <h3>
                                    <a href="nha-dat-ban-ha-noi.html">MUA BÁN NHÀ ĐẤT HÀ NỘI</a>
                                 </h3>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-nha-rieng-ha-noi.html">Bán nhà Hà Nội</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="tags/ban/ban-nha-chinh-chu-co-so-do-tai-ha-noi.html">Bán nhà chính chủ Hà Nội</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-ha-noi.html">Mua bán nhà đất Hà Nội</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-long-bien.html">Nhà đất Long Biên</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-ha-dong.html">Nhà đất Hà Đông</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-can-ho-chung-cu-ha-noi.html">Chung cư Hà Nội</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-nha-rieng-bac-tu-liem.html">Bán nhà Bắc Từ Liêm</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-ha-noi.html">Thuê nhà Hà Nội</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-can-ho-chung-cu-ha-noi.html">Thuê chung cư Hà Nội</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-ha-dong.html">Thuê nhà Hà Đông</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-dong-anh.html">Nhà đất Đông Anh</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-cua-hang-ki-ot-ha-noi.html">Cho thuê mặt bằng</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-tro-phong-tro-ha-noi.html">Thuê nhà trọ</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-can-ho-chung-cu-times-city.html">Time City</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-can-ho-chung-cu-vinhomes-ocean-park-gia-lam.html">Vinhomes Ocean Park</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="ban-can-ho-chung-cu-vinhomes-smart-city-dai-mo.html">Vinhomes Smart City</a>
                              </div>
                              <div class="clear">
                                 &nbsp;
                              </div>
                           </div>
                           <div class="footer-middle-colum1">
                              <div class="footer-middle-colum1-title">
                                 <h3>
                                    <a href="nha-dat-ban.html">MUA BÁN NHÀ ĐẤT</a>
                                 </h3>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-hai-phong.html">Nhà đất Hải Phòng</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-da-nang.html">Nhà đất Đà Nẵng</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-nam-dinh.html">Nhà đất Nam Định</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-an-giang.html">Nhà đất An Giang</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-hai-duong.html">Nhà đất Hải Dương</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-thai-binh.html">Nhà đất Thái Bình</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-can-tho.html">Nhà đất Cần Thơ</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-nha-trang-kh.html">Nhà đất Nha Trang</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-gia-lai.html">Nhà đất Gia Lai</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quang-ngai.html">Nhà đất Quảng Ngãi</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-soc-trang.html">Nhà đất Sóc Trăng</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-vung-tau-vt.html">Nhà đất Vũng Tàu</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-binh-duong.html">Nhà đất Bình Dương</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-bac-ninh.html">Nhà đất Bắc Ninh</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-kon-tum.html">Nhà đất Kon Tum</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="nha-dat-ban-quy-nhon-bdd.html">Nhà đất Quy Nhơn</a>
                              </div>
                              <div class="clear">
                                 &nbsp;
                              </div>
                           </div>
                           <div class="footer-middle-colum1">
                              <div class="footer-middle-colum1-title">
                                 <h3>
                                    <a href="nha-dat-cho-thue.html">NHÀ ĐẤT CHO THUÊ</a>
                                 </h3>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-da-nang.html">Cho thuê nhà Đà Nẵng</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-ha-noi.html">Cho thuê nhà Hà Nội</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-binh-thanh.html">Cho thuê nhà Bình Thạnh</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-go-vap.html">Cho thuê nhà Gò Vấp</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-thu-duc.html">Cho thuê nhà Thủ Đức</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-hai-phong.html">Cho thuê nhà Hải Phòng</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-quan-2.html">Cho thuê nhà Quận 2</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-tan-phu.html">Cho thuê nhà Tân Phú</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-quan-12.html">Cho thuê nhà Quận 12</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-kho-nha-xuong-dat.html">Cho thuê nhà xưởng</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-quan-7.html">Cho thuê nhà Quận 7</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-ba-ria-vung-tau.html">Cho thuê nhà Vũng Tàu</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-tan-binh.html">Cho thuê nhà Tân Bình</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-binh-thanh.html">Cho thuê nhà Bình Thạnh</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-quan-10.html">Cho thuê nhà Quận 10</a>
                              </div>
                              <div class="footer-middle-colum1-link">
                                 <a href="cho-thue-nha-rieng-quan-8.html">Cho thuê nhà Quận 8</a>
                              </div>
                              <div class="clear">
                                 &nbsp;
                              </div>
                           </div>
                        </div>
                        <div class="clear">
                           &nbsp;
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div id="SiteRight" class="banner-right clearfix">
            <div class="container-default">
               <div>
                  <div id="ban_wide_right" class="ban_wide_scroll">
                     <div class="adPosition" positionCode="BANNER_POSITION_WIDE_RIGHT" style="margin-bottom: 0px"></div>
                     <script type='text/javascript'> var bannerContext={"CateId":0,"PageId":189,"CityCode":null,"DistrictId":null,"CurrentPage":189};</script>
                  </div>
                  <div id="ban_right" class="ban_scroll">
                     <div class="adPosition" positionCode="BANNER_POSITION_RIGHT" style="margin-bottom: 0px"></div>
                     <script type='text/javascript'> var bannerContext={"CateId":0,"PageId":189,"CityCode":null,"DistrictId":null,"CurrentPage":189};</script>
                  </div>
               </div>
            </div>
         </div>
</asp:Content>
