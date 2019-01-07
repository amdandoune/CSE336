package com.marvinyan.ontrack;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SubmitValidator", urlPatterns = "/submitvalidator")
public class SubmitValidator extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        FormBean b = (FormBean) session.getAttribute("IBMForm");
        if (b == null) {
            b = new FormBean();
            session.setAttribute("IBMForm", b);
        }

        b.setFirstName(request.getParameter("FName"));
        b.setLastName(request.getParameter("LName"));
        b.setEmail(request.getParameter("UserID"));
        b.setPassword(request.getParameter("Password"));
        b.setVerifyPassword(request.getParameter("RePassword"));
        b.setDisplayName(request.getParameter("alias"));
        b.setCountry(request.getParameter("CountryOfRes"));
        b.setCity(request.getParameter("City"));
        b.setLanguage(request.getParameter("Language"));
        b.setSecurityQuestion(request.getParameter("SecurityQues"));
        b.setSecurityAnswer(request.getParameter("SecurityAns"));

        RequestDispatcher r;
        if (b.isValid()) {
            r = request.getRequestDispatcher("congrats.jsp");
        } else {
            r = request.getRequestDispatcher("index.jsp");
        }
        r.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
