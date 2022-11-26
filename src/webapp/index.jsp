<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="img/favicon.ico">
    <title>Web - Lab2</title>

    <link rel="stylesheet main" href="<%= request.getContextPath() %>/css/main.css">
    <link rel="stylesheet index" href="<%= request.getContextPath() %>/css/index.css">
    <link rel="stylesheet table" href="<%= request.getContextPath() %>/css/table.css">
    <link rel="stylesheet header" href="<%= request.getContextPath() %>/css/header_style.css">
</head>

<body>
<header>
    <div class="header">
        <div>
            <span class="lab-name">
                <a target="_blank" href="https://github.com/timermakov/Web-Lab2">Лабораторная работа №2</a>
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
                            <!-- Точки на графике -->
                            <jsp:include page="jsp/dots.jsp"/>
                        </svg>
                    </div>
                </div>
            </div>

            <div class="text-center">
                <div class="inputs">
                    <p>Выберите Х:</p>
                    <div class="row">
                        <label class="text-label">
                            <input id="input-x" class="text-input" type="text" name="x" placeholder="[-3; 5]" maxlength="14"/>
                        </label>
                    </div>

                    <p>Выберите Y:</p>
                    <div class="row">
                        <label class="text-label">
                            <input id="input-y" class="text-input" type="text" name="y" placeholder="[-5; 3]" maxlength="14"/>
                        </label>
                    </div>

                    <p>Выберите R:</p>
                    <div class="row">
                        <label class="text-label">
                            <input id="input-r" class="text-input" type="text" name="r" placeholder="[1; 4]" maxlength="14"/>
                        </label>
                    </div>
                </div>
                <div class="special-button">
                    <button id="submit-button" type="submit">Отправить на проверку</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container-table">
        <div class="table">
            <div class="text-center">
                <div class="output" id="output">

                    <jsp:include page="jsp/table.jsp"/>

                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/script.js"></script>
</body>
</html>
