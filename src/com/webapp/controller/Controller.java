package com.webapp.controller;

import com.sun.deploy.net.HttpRequest;
import com.webapp.model.Model;

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



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
