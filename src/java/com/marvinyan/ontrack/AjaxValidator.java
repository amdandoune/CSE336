package com.marvinyan.ontrack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet(name = "AjaxValidator", urlPatterns = "/ajaxvalidator")
public class AjaxValidator extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text");
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Access-Control-Allow-Origin", "*");

        HttpSession session = request.getSession();
        FormBean fb = (FormBean) session.getAttribute("IBMForm");
        if (fb == null) {
            fb = new FormBean();
            session.setAttribute("IBMForm", fb);
        }

        PrintWriter out = response.getWriter();
        StringBuilder sb = new StringBuilder();

        Enumeration paramNames = request.getParameterNames();
        String paramName = paramNames.nextElement().toString();
        String val = request.getParameter(paramName);

        switch (paramName) {
            case "FName":
                sb.append(fb.setFirstName(val));
                break;
            case "LName":
                sb.append(fb.setLastName(val));
                break;
            case "emailAddress":
                sb.append(fb.setEmail(val));
                break;
            case "Password":
                sb.append(fb.setPassword(val));
                break;
            case "RePassword":
                sb.append(fb.setVerifyPassword(val));
                break;
            case "alias":
                sb.append(fb.setDisplayName(val));
                break;
            case "countryResidence":
                sb.append(fb.setCountry(val));
                break;
            case "Language":
                sb.append(fb.setLanguage(val));
                break;
            case "SecurityQues":
                sb.append(fb.setSecurityQuestion(val));
                break;
            case "SecurityAns":
                sb.append(fb.setSecurityAnswer(val));
                break;
        }

        out.println(sb.toString());
        out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
