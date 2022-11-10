$(document).ready(function () {
    let x, y, r;
    const svgSize = 300;

    // Загрузка предыдущего радиуса из таблицы
    let rPrevious = document.querySelector("#output > table > tbody > tr:nth-child(1) > td:nth-child(3)");
    if (rPrevious) {
        r = Number(rPrevious.textContent);
        $('.button-input[name=\"r\"]' + '[value=\"' + Number(rPrevious.textContent) + '\"]')
            .toggleClass('button-input-selected')
            .toggleClass('button-input');
    }

    // Загрузка радиуса из поля для ввода (приоритнее)
    checkR();

    // Выполнить GET-запрос
    function doRequest(x, y, r){
        $.ajax({
            type: 'GET',
            url: 'controller',
            data: {
                'x': x,
                'y': y,
                'r': r
            },
            success: function () {
                window.location.href = 'jsp/result.jsp';
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert("Ошибка запроса к серверу");
            }
        });
    }

    // Нажатие на график -> добавление точки и проверка
    $('#svg').mousedown(function (e) {
        // Загрузка радиуса из поля для ввода (приоритнее)
        checkR();

        if (r){
            const position = $('.svg-wrapper-container').offset();
            const rowX = e.pageX - position.left;
            const rowY = e.pageY - position.top;

            //const xGraph = svgSize - (svgSize / 2 - rowX + 167).toFixed(1);
            //const yGraph = svgSize - (svgSize / 2 - rowY + 167).toFixed(1);

            const x = (((r / 50) * (svgSize / 2 - rowX) * -1) / 2).toFixed(2);
            const y = (((r / 50) * (svgSize / 2 - rowY)) / 2).toFixed(2);

            doRequest(x, y, r);
        } else {
            alert('Выберите радиус R');
        }
    })

    function checkX() {
        let value_x = $('#input-x').val().replace(',', '.').trim();
        if (value_x !== ''){
            value_x = Number(value_x);
            if ((value_x >= -3) && (value_x <= 5)) {
                x = value_x;
            } else {
                alert('Некорректный ввод координаты X');
                $('input-x').val('');
                return;
            }
        }
    }

    function checkY() {
        let value_y = $('#input-y').val().replace(',', '.').trim();
        if (value_y !== ''){
            value_y = Number(value_y);
            if ((value_y >= -5) && (value_y <= 3)) {
                y = value_y;
            } else {
                alert('Некорректный ввод координаты Y');
                $('input-y').val('');
                return;
            }
        }
    }

    function checkR() {
        let value_r = $('#input-r').val().replace(',', '.').trim();
        if (value_r !== ''){
            value_r = Number(value_r);
            if ((value_r >= 1) && (value_r <= 4)) {
                r = value_r;
            } else {
                alert('Некорректный ввод радиуса R');
                $('input-r').val('');
                return;
            }
        }
    }

    // Отправка на проверку данных
    $('#submit-button').on('click', function () {
        checkX();
        checkY();
        checkR();
        if (x !== undefined && y !== undefined && r !== undefined){
            doRequest(x, y, r);
        } else {
            alert('Заполните все поля!');
        }
    })
})