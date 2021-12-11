package com.example.controller.VacxinController;

import com.example.dao.impl.VacxinDAO;
import com.example.model.Vacxin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/vacxin/add")
public class AddVacxinController extends HttpServlet {
    private VacxinDAO vacxinDAO = new VacxinDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("html/text");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        req.getRequestDispatcher("addVacxin.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("html/text");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        Vacxin vacxin= new Vacxin();
        vacxin.setTenVacxin(req.getParameter("ten"));
        vacxin.setSoMui(Integer.parseInt(req.getParameter("somui")));
        vacxin.setMoTa(req.getParameter("mota"));
        vacxin.setGiaVacxin(Float.parseFloat(req.getParameter("gia")));
        vacxin.setTenHangSX(req.getParameter("tenhang"));
        Long save = vacxinDAO.addVacxin(vacxin);
        if (save!=null){
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else {
            resp.sendRedirect(req.getContextPath()+"/vacxin/add?err=1");
        }
    }
}
