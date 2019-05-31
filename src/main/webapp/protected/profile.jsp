<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<jsp:include page="../snippets/head.jsp">
    <jsp:param name="title" value="Profile"/>
</jsp:include>
<body>
<h1>Profile</h1>
<p>Email: <c:out value="${user.email}"/></p>
<p>Password: <c:out value="${user.password}"/></p>
<h2>Links</h2>
<ul>
    <li><a href="shops">Shops</a></li>
    <li><a href="coupons">Coupons</a></li>
</ul>

<h2>My Coupons</h2>
<table border="2px">
    <thead>
        <th>Id</th>
        <th>Name</th>
        <th>User Id</th>
        <th>Percentage</th>
    </thead>
    <tbody>
    <c:forEach var="coupon" items="${coupons}">
        <tr>
            <td>${coupon.id}</td>
            <td>${coupon.name}</td>
            <td>${coupon.userId}</td>
            <td>${coupon.percentage}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<jsp:include page="../snippets/logout.jsp"/>
</body>
</html>
