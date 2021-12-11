package com.example.controller.VacxinController;

import com.example.dao.impl.VacxinDAO;
import com.example.model.Vacxin;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/vacxin/edit")
public class EditVacxinController extends HttpServlet {
    private VacxinDAO vacxinDAO = new VacxinDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("html/text");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        req.setAttribute("vacxin",vacxinDAO.findById(
                Integer.parseInt(req.getParameter("id"))));
        req.getRequestDispatcher("editVacxin.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("html/text");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        Vacxin vacxin= new Vacxin();
        vacxin.setMaVacxin(Integer.parseInt(req.getParameter("id")));
        vacxin.setTenVacxin(req.getParameter("ten"));
        System.out.println(req.getParameter("ten"));
        vacxin.setSoMui(Integer.parseInt(req.getParameter("somui")));
        vacxin.setMoTa(req.getParameter("mota"));
        vacxin.setGiaVacxin(Float.parseFloat(req.getParameter("gia")));
        vacxin.setTenHangSX(req.getParameter("tenhang"));
        vacxinDAO.updateVacxin(vacxin);
        resp.sendRedirect(req.getContextPath()+"/vacxin?msg=1");
    }
}
