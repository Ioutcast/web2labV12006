<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WEB_LAB2</title>
    <script type="text/javascript" src="js/errorMessage.js"></script>
    <script type="text/javascript" src="js/canvas.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/my.css">
</head>
<body>
<header>
    <div id="variant"> Variant 12006</div>
    <div id="nameSurname"> Vasilkov Alexandr P3211</div>
</header>

<div class="graphic centered">
    <canvas id="canvas" onclick="clickCanvas('canvas',document.getElementById('form').rValue.value)"
            style="border: 4px double #000000; border-radius: 20px;" width="300" height="300">
    </canvas>
    <script> drawCanvasGraph('canvas',0); </script>
    <jsp:include page="dots.jsp"/>
</div>


<form class="formWithValidation centered" action="control" id="form" name="test" method="POST" >
    <div style="margin-bottom: 10px; margin-top: 10px">
        <p><b>X Value:</b>
            <select id="selectOptionX" name="xValue" class='selectInputX field'>
                <option></option>
                <option value="-3">-3</option>
                <option value="-2">-2</option>
                <option value="-1">-1</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
        </p>
    </div>

    <div id="errDialog">
        <p>
            <label for="textfieldY">Y Value:</label><input type="text" name="yValue" id="textfieldY"
                                                                  class='textInputY field' maxlength="15" placeholder="(-5; 5)"
                                                                  autocomplete="off">
        </p>
    </div>

    <div>
        <p>
            <label for="textfieldR">R Value:</label><input type="text" name="rValue" id="textfieldR"
                                                                  class='textInputR field' placeholder="(2; 5)" maxlength="15"
                                                                  autocomplete="off">
        </p>
    </div>
    <div class="form-buttons">
        <button class="send-button validateBtn" type="submit" id="SubmitButton">Отправить</button>
        <button type="reset" id="reset_button"><img src="img/reset.png" alt="reset_button"></button>
    </div>
</form>
<div class="table-wrapper  centered" style="overflow-x: auto;" id="ans">
    <div class="table">
        <div class="table-header" style="overflow-x: auto">
            <div class="header__item"><a id="x-table">X</a></div>
            <div class="header__item"><a id="y-table">Y</a></div>
            <div class="header__item"><a id="r-table">R</a></div>
            <div class="header__item"><a id="result-table">result</a></div>
            <div class="header__item"><a id="time-table">Date</a></div>
        </div>
        <jsp:include page="table.jsp"/>
    </div>
</div>
<footer>
    <div class="centered">
        <span id="root"> &copy Vasilkov Alexandr</span>
    </div>
</footer>

<div style="margin-bottom: 100px;" name="FixProblemWithFooter"></div>

<script type="text/javascript" src="js/formValidate.js"></script>
</body>
</html>
