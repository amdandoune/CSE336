package com.marvinyan.ontrack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by marvinyan on 4/19/2017.
 */
@WebServlet(name = "JqueryAjaxParameterExample", urlPatterns = "/JqueryAjaxParameterExample")
public class JqueryAjaxParameterExample extends HttpServlet{
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String query = request.getParameter("input");
        if (query == null) {
            out.println("null");
        } else {
            out.println("The parameter value is: " + query);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
