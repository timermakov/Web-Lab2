package ru.timermakov.lab2.servlet;

import jakarta.servlet.http.HttpServletRequest;

// Класс для изменения разделителя чисел

public class Utils {
    public static double getDoubleParameter(HttpServletRequest request, String parameter) {
        return Double.parseDouble(request.getParameter(parameter).replace(",", "."));
    }
}