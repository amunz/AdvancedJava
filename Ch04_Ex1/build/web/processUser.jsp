<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register You</title>
    </head>
    <body>
        <h1>About you</h1>
        <!-- Stores user information in a session that can be accessed by other pages -->
        <jsp:useBean id="user" scope="session" class="com.apress.faq.User">
            <jsp:setProperty name="user" property="*"/>
        </jsp:useBean>

        Welcome Friend, here is what we got from you:
        <p>Your name is ${sessionScope.user.firstName} ${sessionScope.user.lastName}.</p>
        <p>You are ${sessionScope.user.age} years old.</p>
        <p>You identify as ${sessionScope.user.gender}.</p>
        <p>You are interested in:<br>
         <!-- Goes through the checkbox items selected -->
         <c:forEach var="topic" items="${paramValues.topics}"   >
         <c:out value="${topic}" /> <br>
         </c:forEach>
         <!-- Stores user's interests in a session that can be accessed by other pages -->
         <c:set value="${paramValues.topics}" var="topics" scope="session" />

    <p>Go to <a href="index.jsp">Talk About Yourself Page</a></p>
    </body>
</html>
