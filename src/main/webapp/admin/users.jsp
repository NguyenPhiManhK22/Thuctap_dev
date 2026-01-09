<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.NguoiDung" %>

<html>
<head>
    <meta charset="UTF-8" />
    <title>Quản Lý Người Dùng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/adminStyle.css" />
    <link rel="icon" type="/image/jpg" href="${pageContext.request.contextPath}/images/Logo.jpg" />
</head>
<body>

<div class="container">
    <h1>Quản Lý Người Dùng</h1>

    <table class="user-table">
        <thead>
            <tr>
                <th>Mã Người Dùng</th>
                <th>Họ Tên</th>
                <th>Email</th>               
                <th>Vai Trò</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<NguoiDung> users = (List<NguoiDung>) request.getAttribute("users");
                if (users != null && !users.isEmpty()) {
                    for (NguoiDung user : users) {
            %>
            <tr>
                <td><%= user.getMaNguoiDung() %></td>
                <td><%= user.getHoTen() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getVaiTro() %></td>               
            </tr>
            <%
                    }
                } else {
            %>
                <tr><td colspan="6">Không có người dùng nào!</td></tr>
            <%
                }
            %>
        </tbody>
    </table>

    <div class="back-to-dashboard">
        <a href="<%= request.getContextPath() %>/admin/dashboard" class="btn btn-secondary">Quay lại </a>
    </div>
</div>

</body>
</html>