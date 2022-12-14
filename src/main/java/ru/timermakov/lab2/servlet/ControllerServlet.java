package ru.timermakov.lab2.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {

    // Переопределение запросов

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Utils.getDoubleParameter(request, "x");
            Utils.getDoubleParameter(request, "y");
            double r = Utils.getDoubleParameter(request, "r");

            //if (! rValues.contains(r))
            //    throw new Exception("Неправильный радиус (R)!");
            getServletContext().getRequestDispatcher("/area_check").forward(request, response);
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
