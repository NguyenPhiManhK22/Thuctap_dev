<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.SanPham" %>
<%@ page import="dao.SanPhamDAO" %>

<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>Thêm Sản Phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/adminStyle.css" />
     <link rel="icon" type="/image/jpg" href="${pageContext.request.contextPath}/images/Logo.jpg" />
</head>
<body>
    <div class="container">
        <h1>Thêm Sản Phẩm Mới</h1>
       			<form action="addProduct" method="POST">
    <label for="tenSanPham">Tên sản phẩm:</label>
    <input type="text" id="tenSanPham" name="tenSanPham" required /><br />
    
    <label for="gia">Giá:</label>
    <input type="text" id="gia" name="gia" required /><br />
    
    <label for="moTa">Mô tả:</label>
    <textarea id="moTa" name="moTa" required></textarea><br />
    
    <label for="soLuong">Số lượng trong kho:</label>
    <input type="number" id="soLuong" name="soLuong" required /><br />
    
    <label for="maDanhMuc">Danh mục:</label>
    <select name="maDanhMuc" id="maDanhMuc">
        <option value="1">Cây Cảnh Phong Thủy</option>
        <option value="2">Cây Cảnh Trong Nhà</option>
        <option value="3">Cây Để Bàn</option>
        <option value="4">Cây Văn Phòng</option>
        <option value="5">Cây Thủy Sinh</option>
        <option value="6">Xương Rồng Cảnh</option>
        <option value="7">Cây Loại To</option>
        <option value="8">Cây Cảnh Sen Đá</option>
        <option value="9">Cây Công Trình</option>
        <option value="10">Phụ Kiện</option>
        
      
    </select><br />

    <label for="duongDanAnh">Đường dẫn ảnh:</label>
    <input type="text" id="duongDanAnh" name="duongDanAnh" required /><br />
    
    <button type="submit">Thêm sản phẩm</button>
</form>
			<div class="back-to-dashboard">
        <a href="<%= request.getContextPath() %>/admin/dashboard" class="btn btn-secondary">Quay lại </a>
    </div>
    </div>
    
</body>
</html>