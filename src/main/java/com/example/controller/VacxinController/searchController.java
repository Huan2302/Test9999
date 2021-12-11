package com.example.controller.VacxinController;

import com.example.dao.impl.VacxinDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/vacxin/search")
public class searchController extends HttpServlet {
    private VacxinDAO vacxinDAO = new VacxinDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("html/text");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        String search = req.getParameter("search");
        req.setAttribute("listVacxin",vacxinDAO.search(search));
        req.getRequestDispatcher("search.jsp").forward(req,resp);
    }
}
