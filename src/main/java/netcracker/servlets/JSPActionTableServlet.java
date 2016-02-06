/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package netcracker.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Иван
 */
@WebServlet("/jspactiontable")
public class JSPActionTableServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Action> listJspActions = new ArrayList();
        listJspActions.add(new Action("jsp:include", "Includes a file at the time the page is requested"));
        listJspActions.add(new Action("jsp:useBean", "Finds or instantiates a JavaBean"));
        listJspActions.add(new Action("jsp:setProperty", "Sets the property of a JavaBean"));
        listJspActions.add(new Action("jsp:getProperty", "Inserts the property of a JavaBean into the output"));
        listJspActions.add(new Action("jsp:forward", "Forwards the requester to a new page"));
        listJspActions.add(new Action("jsp:plugin", "Generates browser-specific code that makes an OBJECT or EMBED tag for the Java plugin"));

        request.setAttribute("listJspActions", listJspActions);
        request.getRequestDispatcher("jspactiontable.jsp").forward(request, response);
    }
}
