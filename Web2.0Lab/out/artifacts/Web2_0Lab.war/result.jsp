<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result</title>
    <link rel="stylesheet table" href="css/table.css">
</head>
<body>
<section class="main centered">
    <svg style="margin-bottom: 20px" height="300" width="300" xmlns="http://www.w3.org/2000/svg">
        <line stroke="black" x1="0" x2="300" y1="150" y2="150"></line>
        <line stroke="black" x1="150" x2="150" y1="0" y2="300"></line>
        <polygon fill="black" points="150,0 144,15 156,15" stroke="black"></polygon>
        <polygon fill="black" points="300,150 285,156 285,144" stroke="black"></polygon>

        <!-- Деления -->
        <line stroke="black" x1="200" x2="200" y1="155" y2="145"></line>
        <line stroke="black" x1="250" x2="250" y1="155" y2="145"></line>

        <line stroke="black" x1="50" x2="50" y1="155" y2="145"></line>
        <line stroke="black" x1="100" x2="100" y1="155" y2="145"></line>

        <line stroke="black" x1="145" x2="155" y1="100" y2="100"></line>
        <line stroke="black" x1="145" x2="155" y1="50" y2="50"></line>

        <line stroke="black" x1="145" x2="155" y1="200" y2="200"></line>
        <line stroke="black" x1="145" x2="155" y1="250" y2="250"></line>

        <!-- Подписи к делениям и осям -->
        <text fill="black" x="195" y="140">R/2</text>
        <text fill="black" x="250" y="140">R</text>

        <text fill="black" x="40" y="140">-R</text>
        <text fill="black" x="85" y="140">-R/2</text>

        <text fill="black" x="160" y="55">R</text>
        <text fill="black" x="160" y="105">R/2</text>

        <text fill="black" x="160" y="204">-R/2</text>
        <text fill="black" x="160" y="255">-R</text>

        <text fill="black" x="285" y="140">X</text>
        <text fill="black" x="160" y="15">Y</text>

        <!-- Первая фигура (1 четверть) -->
        <polygon fill="blue"
                 fill-opacity="0.2"
                 stroke="blue"
                 points="150,150 200,150 150,50"></polygon>

        <!-- Третья фигура (3 четверть) -->
        <path fill="blue"
              fill-opacity="0.2"
              stroke="blue"
              d="M 100 150
              A 45 45, 0, 0, 0, 150 200
              L 150 150 Z"></path>

        <!-- Вторая фигура (4 четверть) -->
        <polygon fill="blue"
                 fill-opacity="0.2"
                 stroke="blue"
                 points="250,250 250,150 150,150 150,250"></polygon>

        <circle r="3.5"
                cx=<%=session.getAttribute("xGraph")%>
                        cy=<%=session.getAttribute("yGraph")%>
                id="target-dot"
                fill=<%=session.getAttribute("fillGraph")%>>
        </circle>
    </svg>
    <div class="special-button">
        <div class="text-center">
            <a href="<%= request.getContextPath() %>/index.jsp">
                <button id="submit-button" type="submit">Вернемся к форме</button>
            </a>
        </div>
    </div>

    <div>
        <table class="table-check">
            <thead class="thead">
            <tr class="table-header">
                <th scope="col">X</th>
                <th scope="col">Y</th>
                <th scope="col">R</th>
                <th scope="col">Результат попадания</th>
                <th scope="col">Текущее время</th>
            </tr>
            </thead>
            <tbody>
            <tr class="table-row">
                <td><%=session.getAttribute("x")%>
                </td>
                <td><%=session.getAttribute("y")%>
                </td>
                <td><%=session.getAttribute("r")%>
                </td>
                <td><%=session.getAttribute("resultLast")%>
                </td>
                <td><%=session.getAttribute("DateTime")%>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</section>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>
