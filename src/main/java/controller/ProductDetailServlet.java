package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.SanPham;
import dao.SanPhamDAO;

import java.io.IOException;

/**
 * Servlet implementation class ProductDetailServlet
 */
@WebServlet("/productDetail")
public class ProductDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int maSanPham = Integer.parseInt(request.getParameter("maSanPham"));
        SanPhamDAO sanPhamDAO = new SanPhamDAO();
        SanPham sp = sanPhamDAO.getSanPhamById(maSanPham);

        request.setAttribute("sanPham", sp);
        request.getRequestDispatcher("/view/productDetail.jsp").forward(request, response);
    }
}

