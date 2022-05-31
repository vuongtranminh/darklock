<!-- Tiếng Việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ===== JSP:INCLUDE ===== -->
<jsp:include page="/WEB-INF/views/front-end/common/variables.jsp"></jsp:include>

<div class="footer pt_60">
            <div class="container">
                <div class="newsletters mt_30 mb_50">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="news-head pull-left">
                                <h2>Đăng ký nhận thông tin mới !</h2>
                                <div class="new-desc">Hãy là người đầu tiên biết về sản phẩm mới của chúng tôi!</div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="news-form pull-right">
                                <form method="post" accept-charset="utf-8">
                                    <div class="form-group required">
                                        <input name="email" id="email_subcribe" placeholder="Nhập email của bạn" class="form-control input-lg" type="email">
                                        <button type="button" onclick="saveEmail();" class="btn btn-default btn-lg">Đăng ký</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 footer-block">
                        <h6 class="footer-title ptb_20">Thông tin</h6>
                        <ul>
                            <li><a href="#">Về chúng tôi</a></li>
                            <li><a href="#">Thông tin giao hàng</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Điều khoản và điều kiện</a></li>
                            <li><a href="contact.html">Liên hệ</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-block">
                        <h6 class="footer-title ptb_20">Dịch vụ</h6>
                        <ul>
                            <li><a href="#">Danh sách yêu thích</a></li>
                            <li><a href="#">Tài khoản của bạn</a></li>
                            <li><a href="#">Lịch sử mua hàng</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-block">
                        <h6 class="footer-title ptb_20">Xem thêm</h6>
                        <ul>
                            <li><a href="#">Thương hiệu</a></li>
                            <li><a href="#">Phiếu quà tặng</a></li>
                            <li><a href="#">Chi nhánh</a></li>
                            <li><a href="#">Đặc biệt</a></li>
                            <li><a href="#">Tin tức</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-block">
                        <h6 class="footer-title ptb_20">Liên hệ</h6>
                        <ul>
                            <li>Warehouse &amp; Offices,</li>
                            <li>20 Hồ Tùng Mậu, Hà Nội, Viêt Nam</li>
                            <li>(+84) 35 999 0513</li>
                            <li>tranminhvuong.visedu@gmail.com</li>
                            <li><a href="#">www.darklock.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-bottom mt_60 ptb_20">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="social_icon">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="copyright-part text-center">@ 2019 All Rights Reserved Darklook</div>
                        </div>
                        <div class="col-sm-4">
                            <div class="payment-icon text-right">
                                <ul>
                                    <li><i class="fab fa-cc-paypal "></i></li>
                                    <li><i class="fab fa-cc-visa"></i></li>
                                    <li><i class="fab fa-cc-discover"></i></li>
                                    <li><i class="fab fa-cc-mastercard"></i></li>
                                    <li><i class="fab fa-cc-amex"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>