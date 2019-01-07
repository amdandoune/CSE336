package com.marvinyan.ontrack;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by marvinyan on 4/10/2017.
 */
@WebServlet(name = "OnTrack", urlPatterns = "/ontrack")
public class OnTrack extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        FormBean b = (FormBean) session.getAttribute("IBMForm");
        if (b == null) {
            b = new FormBean();
            session.setAttribute("IBMForm", b);
        }

        RequestDispatcher r = request.getRequestDispatcher("congrats.jsp");
        r.forward(request, response);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
}
