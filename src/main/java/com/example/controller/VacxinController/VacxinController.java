package com.example.controller.VacxinController;

import com.example.dao.impl.VacxinDAO;
import com.example.model.Vacxin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/vacxin")
public class VacxinController extends HttpServlet {
    private VacxinDAO vacxinDAO = new VacxinDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("html/text");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        req.setAttribute("listVacxin",vacxinDAO.findAll());
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }


}
