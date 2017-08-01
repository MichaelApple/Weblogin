package com.webapp.controller;

import com.sun.deploy.net.HttpRequest;
import com.webapp.model.Model;
import com.webapp.model.exceptions.LoginAlreadyUsedException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;
import java.util.Scanner;

import static com.webapp.controller.RegExpressions.REG_EXPRSSION_MAP;

/**
 * Created by Miha on 31.07.2017.
 */
@WebServlet(name = "Controller")
public class Controller extends HttpServlet {

    Model model = new Model();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher view;


        try {
            model.addUser(request.getParameter("firstName"), request.getParameter("lastName"), request.getParameter("middletName"), request.getParameter("nickName"), request.getParameter("comment"), request.getParameter("group"), request.getParameter("homePhone"), request.getParameter("cellPhone1"), request.getParameter("cellPhone2"), request.getParameter("email"), request.getParameter("skype"), request.getParameter("zip"), request.getParameter("city"), request.getParameter("street"), request.getParameter("buildingNumber"), request.getParameter("flat"));

            request.setAttribute("model", model);
            view = request.getRequestDispatcher("result.jsp");

        } catch (LoginAlreadyUsedException e) {

            request.setAttribute("exception", e);
            view = request.getRequestDispatcher("index.jsp");
        }

        view.forward(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
