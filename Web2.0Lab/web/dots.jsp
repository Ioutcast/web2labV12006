<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="entryList" scope="session" class="Entry.EntryList"/>
<c:forEach var="entry" items="${entryList.entryList}">
    <script>
        drawPoint1('canvas', ${( entry.x/entry.r*130+150)}, ${(150 - (entry.y/entry.r)*130)},${(entry.result)})
    </script>
</c:forEach>