<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.NguoiDung" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cây Cảnh</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/duan.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/stylles.css" />
    <link rel="icon" type="/image/jpg" href="${pageContext.request.contextPath}/images/Logo.jpg" />
</head>
<body>
<header class="header-top">
    <div class="container header-flex">
    		<div class="logo">
        		<a href="#"><img src="${pageContext.request.contextPath}/images/Logo.jpg" alt="Cây cảnh" /></a>
			</div>
        <div class="search-box">
    		<form action="${pageContext.request.contextPath}/view/timkiem.jsp" method="get">
        		<input type="text" name="keyword" placeholder="Bạn đang tìm kiếm Cây gì..." required />
        		<button type="submit"><i class="search-icon">🔍</i></button>
    		</form>
		</div>
        <div class="header-right">
            <%
                NguoiDung userLogin = (NguoiDung) session.getAttribute("userLogin");
                if (userLogin != null) {
            %>
                <span>Xin chào, <%= userLogin.getHoTen() %>!</span>
                <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
            <%
                } else {
            %>
                <a href="${pageContext.request.contextPath}/login"><i class="fas fa-user"></i><span>Đăng nhập</span></a>
            <%
                }
            %>   
            <a href="${pageContext.request.contextPath}/view/giohang.jsp" class="cart">🛒 Giỏ hàng</a>
        </div>
    </div>
</header>
<nav class="menu-bar">
    <div class="container menu-flex"> 
        <label for="toggle-category" class="btn-category">
            ☰ Danh mục sản phẩm
        </label>

        <ul class="main-menu">
            <li><a href="${pageContext.request.contextPath}/view/index.jsp">Trang chủ</a></li>
            <li><a href="${pageContext.request.contextPath}/view/gioithieu.jsp">Giới thiệu</a></li>
            <li><a href="${pageContext.request.contextPath}/view/tintuc.jsp">Tin tức</a></li>

            <li class="has-sub">
                <input type="checkbox" id="care">
                <label for="care">Cách chăm sóc ▾</label>
                <ul class="sub-menu">
                    <li><a href="${pageContext.request.contextPath}/view/chamcayvanphong.jsp">Cây văn phòng</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/chamcaythuysinh.jsp">Cây thủy sinh</a></li>
                </ul>
            </li>

            <li><a href="${pageContext.request.contextPath}/view/lienhe.jsp">Liên hệ</a></li>

            <li class="has-sub">
                <input type="checkbox" id="policy">
                <label for="policy">Chính sách ▾</label>
                <ul class="sub-menu">
                    <li><a href="${pageContext.request.contextPath}/view/doitra.jsp">Đổi trả</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/baohanh.jsp">Bảo hành</a></li>
                </ul>
            </li>
			<li><a href="${pageContext.request.contextPath}/donhang">Đơn Hàng</a></li>
         
        </ul>
    </div>
</nav>
</section>
<input type="checkbox" id="toggle-category">
<section class="main-content container">

     <aside class="category-panel">
        <ul>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=1">Cây Cảnh Phong Thủy</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=2">Cây Cảnh Trong Nhà</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=3">Cây Để Bàn</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=4">Cây Văn Phòng</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=5">Cây Thủy Sinh</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=6">Cây Xương Rồng Cảnh</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=7">Cây Loại To</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=8">Cây Cảnh Sen Đá</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=9">Cây Công Trình</a></li>
        </ul>
    </aside>
</section>
<div  class="project-detail">
	<h1 class="project-titlle">
        Chính sách đổi trả hàng
    </h1>
	<div class="project-section">
	    <p>
	        Giao hàng không đảm bảo, không đúng mong muốn, quý khách hoàn toàn có thể trả lại cho Web Cây Cảnh để được hoàn tiền nếu đã thanh toán. Tuy nhiên, trong trường hợp quý khách đặt sản phẩm nhưng không đọc kỹ kích thước, hình dáng dẫn đến sản phẩm không như mong muốn, quý khách vẫn có thể trả lại nhưng sẽ phải chịu toàn bộ chi phí vận chuyển hai chiều.<br><br>
	
	        Trường hợp mua nhầm hoặc muốn đổi sang sản phẩm khác, chúng tôi sẽ nhận lại và hỗ trợ đổi đúng theo mong muốn của quý khách.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>Quy định chung</h2>
	    <p>
	        Hàng đổi hoặc trả phải còn nguyên vẹn, không bị gãy lá, gãy bông; chậu và đĩa không bị bể, nứt. Các vật phẩm trang trí phải chưa qua sử dụng, không bị dính keo hoặc khoan lỗ.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>Những điều cần lưu ý</h2>
	    <p>
	        – Quý khách cần kiểm tra kỹ tình trạng sản phẩm trước khi thanh toán nhằm đảm bảo hàng hóa được giao đúng chủng loại, số lượng, màu sắc và không bị tác động bên ngoài. Nếu phát hiện vấn đề, vui lòng từ chối nhận hàng hoặc báo ngay cho bộ phận hỗ trợ khách hàng để được xử lý kịp thời.<br><br>
	
	        – Trong trường hợp khách hàng đã nhận hàng và thanh toán đầy đủ, sau đó mới phát hiện sản phẩm bị gãy lá, gãy bông, bể chậu hoặc thiếu hàng, chúng tôi không chịu trách nhiệm cho các sai sót này. Quý khách nên trả hàng ngay khi nhân viên giao nhận còn tại chỗ.<br><br>
	
	        – Nếu phát hiện sai kích thước, sai màu chậu hoặc sai sản phẩm sau khi nhận hàng, quý khách vui lòng chụp ảnh sản phẩm và gửi về email webcaycanhhot@gmail.com để được hỗ trợ đổi hoặc trả hàng.<br><br>
	
	        *Không áp dụng trả hàng đối với các sản phẩm đã duyệt thiết kế.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>1.Đổi hàng</h2>
	    <p>
	        Quý khách được quyền đổi hàng trong các trường hợp sau:<br><br>
	
	        – Sản phẩm bị hư hỏng do quá trình vận chuyển như dập lá, gãy lá.<br>
	        – Giao sai kiểu dáng, sai màu chậu, sai kích thước hoặc nhầm sản phẩm do lỗi nhà cung cấp.<br>
	        – Cây cảnh do Web Cây Cảnh cung cấp trong vòng một tuần có dấu hiệu xuống cấp hoặc bị bệnh.<br><br>
	
	        Sản phẩm đổi phải có giá trị tương đương hoặc cao hơn giá trị sản phẩm đã mua trước đó. Trong trường hợp này, công ty chịu toàn bộ chi phí đổi hàng.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>2.Trả hàng</h2>
	    <p>
	        Quý khách được quyền trả hàng ngay khi nhận hàng nếu gặp các trường hợp sau:<br><br>
	
	        – Hàng không đúng chất lượng cam kết.<br>
	        – Giao nhầm kích thước, nhầm sản phẩm hoặc hư hỏng do lỗi của Web Cây Cảnh.<br><br>
	
	        Các mặt hàng không được trả bao gồm:<br>
	        – Sản phẩm được tặng kèm hoặc thuộc chương trình khuyến mãi.<br>
	        – Sản phẩm đã trồng hoặc làm hư bầu.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>Phí gửi hàng lần 2</h2>
	    <p>
	        – Nếu việc đổi hàng xuất phát từ phía khách hàng, phí vận chuyển áp dụng theo bảng phí giao hàng.<br><br>
	
	        – Trường hợp giá trị sản phẩm đổi thấp hơn hoặc cao hơn, khách hàng sẽ được hoàn tiền hoặc bù thêm phần chênh lệch.<br><br>
	
	        – Nếu việc đổi hàng do lỗi của Web Cây Cảnh, khách hàng được miễn phí gửi hàng lần hai.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>Lưu ý</h2>
	    <p>
	        Các trường hợp gửi trả phát sinh từ phía khách hàng khi đặt hàng sẽ không được hoàn trả bất kỳ chi phí nào. Sau khi xác nhận sản phẩm gửi trả đã nhập kho, chúng tôi sẽ tiến hành hoàn tiền cho quý khách.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>3.Hướng dẫn hủy đơn đặt hàng</h2>
	    <p>
	        Quý khách có thể hủy đơn đặt hàng khi đơn vẫn đang ở trạng thái “Sản phẩm đang được chuẩn bị” hoặc liên hệ sớm nhất với hotline 0988 833 653 để được hỗ trợ.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>Hoàn tiền</h2>
	    <p>
	        Đối với hình thức thanh toán chuyển khoản, toàn bộ số tiền sẽ được hoàn lại bằng hình thức chuyển khoản sau khi xác nhận hủy đơn hàng.
	    </p>
	</div>
</div>

<footer class="site-footer">
    <div class="footer-container">

        <div class="footer-col">
            <h3>CÔNG TY TNHH WEBCAYCANH</h3>

            <p><i class="">🏠</i> Văn phòng: Số 3, phố Hoàng Lộc, khu 17 TP Hải Dương</p>
            <p><i class="">👤</i> Người đại diện: Nguyễn Phi Mạnh</p>
            <p><i class="">🌐</i> Mã số thuế: 0801244382</p>
            <p><i class="">✉</i> webcaycanhhot@gmail.com</p>
            <p><i class="">📞</i> Phản ánh: 0972 422 110</p>
        </div>

        <div class="footer-col">
            <h3>Địa chỉ bán buôn bán lẻ</h3>

            <p class="bold">Tại Cơ Sở 1</p>
            <p>Số 60 – Ngõ 235</p>
            <p>Yên Hòa – Quận Cầu Giấy – Hà Nội</p>
            <p>ĐT: 0972 422 110</p>
        </div>

        <div class="footer-col">
            <h3>Danh mục</h3>
            <ul class="footer-links">
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="baohanh.jsp">Chính sách bảo hành</a></li>
                <li><a href="doitra.jsp">Chính sách đổi trả hàng</a></li>  
            </ul>
        </div>

    </div>
</footer>

</body>
</html>