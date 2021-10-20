<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <jsp:useBean id="entryList" scope="session" class="Entry.EntryList"/>
    <c:forEach var="entry" items="${entryList.entryList}">
        <div class="table-row">
            <div class="table-data">${entry.x}</div>
            <div class="table-data">${entry.y}</div>
            <div class="table-data">${entry.r}</div>
            <div class="table-data">${entry.result ? "<div style=\"color: green\">Попал</div>" :
                    "<div style=\"color: red\">Промах</div>"}</div>
            <div class="table-data">${entry.currentTime}</div>
        </div>
    </c:forEach>
