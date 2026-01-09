package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.SanPham;

import java.io.IOException;
import java.util.List;

import dao.SanPhamDAO;

/**
 * Servlet implementation class DanhMucServlet
 */
@WebServlet("/danhmuc")
public class DanhMucServlet extends HttpServlet {
    private SanPhamDAO sanPhamDAO = new SanPhamDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String maDanhMucStr = request.getParameter("id");
        String tenDanhMuc = "";
        if (maDanhMucStr != null) {
            int maDanhMuc = Integer.parseInt(maDanhMucStr);
            List<SanPham> listSanPham = sanPhamDAO.getSanPhamByDanhMuc(maDanhMuc);
            request.setAttribute("listSanPham", listSanPham);
            
            switch (maDanhMuc) {
            case 1:
                tenDanhMuc = "Cây Cảnh Phong Thủy";
                break;
            case 2:
                tenDanhMuc = "Cây Cảnh Trong Nhà";
                break;
            case 3:
                tenDanhMuc = "Cây Để Bàn";
                break;
            case 4:
                tenDanhMuc = "Cây Văn Phòng";
                break;
            case 5:
                tenDanhMuc = "Cây Thủy Sinh";
                break;
            case 6:
                tenDanhMuc = "Cây Xương Rồng Cảnh";
                break;
            case 7:
                tenDanhMuc = "Cây Loại To";
                break;    
            case 8:
                tenDanhMuc = "Cây Cảnh Sen Đá";
                break;   
            case 9:
                tenDanhMuc = "Cây Công Trình";
                break;   
            case 10:
                tenDanhMuc = "Phụ Kiện";
                break;      
            default:
                tenDanhMuc = "Danh Mục Sản Phẩm";
        }

        request.setAttribute("tenDanhMuc", tenDanhMuc);
    }
        
        request.getRequestDispatcher("view/danhmuc.jsp").forward(request, response);
    }
}
