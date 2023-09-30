<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Agora vamos usar a JSTL?</title>
  </head>

  <body>
    <c:forEach var="i" begin="1" end="10" step="1">
      <c:out value="${i}" />

      <br />
    </c:forEach>
E agora? o que achou? 
</body>
</html>