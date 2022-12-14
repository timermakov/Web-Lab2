<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="<%= request.getContextPath() %>/img/favicon.ico">
    <title>Web - Lab2</title>

    <link rel="stylesheet index" href="<%= request.getContextPath() %>/css/main.css">
    <link rel="stylesheet index" href="<%= request.getContextPath() %>/css/index.css">
    <link rel="stylesheet table" href="<%= request.getContextPath() %>/css/table.css">
    <link rel="stylesheet header" href="<%= request.getContextPath() %>/css/header_style.css">
</head>

<header>
    <div class="header">
        <div>
            <span class="lab-name">
                <a target="_blank" href="https://github.com/timermakov/Labs/Web/Lab2">Лабораторная работа №2</a>
            </span>
        </div>
        <div>
            <span class="text">
                <a target="_blank" href="https://t.me/qpidb">Ермаков Тимофей, P32092</a>
            </span>
            <span class="text">
                <a target="_blank" href="https://se.ifmo.ru/courses/web#labs">Вариант 7869</a>
            </span>
        </div>
    </div>
</header>

<section class="main">
    <div class="container">
        <div class="row">
            <div class="text-center">
                <div class="graph">
                    <div class="svg-wrapper">
                        <svg class="svg-wrapper-container" id="svg" height="300" width="300" xmlns="http://www.w3.org/2000/svg">
                            <!-- Новая точка на графике -->
                            <circle r="3.5" cx=<%=session.getAttribute("xGraph")%>
                                    cy=<%=session.getAttribute("yGraph")%>
                                    id="target-dot"
                                    fill=<%=session.getAttribute("fillGraph")%>>
                            </circle>
                        </svg>
                    </div>
                </div>
                <div class="special-button">
                    <div class="text-center">
                        <a href="<%= request.getContextPath() %>/index.jsp">
                            <button id="submit-button" type="submit">Страница с формой</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-table">
        <div class="table">
            <div class="text-center">
                <div class="output" id="output">
                    <table class="table-check">
                        <thead class="thead">
                        <tr class="table-header">
                            <th scope="col">X</th>
                            <th scope="col">Y</th>
                            <th scope="col">R</th>
                            <th scope="col">Текущее время</th>
                            <th scope="col">Результат попадания</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr class="table-row">
                                <td><%=session.getAttribute("xLast")%></td>
                                <td><%=session.getAttribute("yLast")%></td>
                                <td><%=session.getAttribute("rLast")%></td>
                                <td><%=session.getAttribute("queryTimeLast")%></td>
                                <td><%=session.getAttribute("resultLast")%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>