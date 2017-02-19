<%-- 
    Document   : index
    Created on : Feb 18, 2017, 12:14:46 PM
    Author     : AdamMunoz
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.apress.faq.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Input Page</title>
    </head>
    <body>
        <h1>Here is what I got from you earlier:</h1>
        <p>Name: ${sessionScope.user.firstName} ${sessionScope.user.lastName}</p>
        <p>Age: ${sessionScope.user.age}</p>
        <p>Gender: ${sessionScope.user.gender}</p>
        <p>Interests:
         <c:forEach var="topic" items="${sessionScope.topics}"   >
         <c:out value="${topic}" /> <br>
         </c:forEach>
        <h1>Tell me about yourself!</h1>
        <form action="processUser.jsp" method = "POST" >
            <table>
                <tr>
                    <td align ="right">First Name:</td>
                    <td align="left"><input type="text" name="firstName" length="250"/></td>
                </tr>
                <tr>
                    <td align ="right">Last Name:</td>
                    <td align="left"><input type="text" name="lastName" length="250"/></td>
                </tr>
                <tr>
                    <td align ="right">Age:</td>
                    <td align="left"><input type="number" name="age" length="3"/></td>
                </tr>
                <tr>
                    <td align ="right">Gender:</td>
                    <td><input type="radio" name="gender" value="male" checked/>Male<br>
                    <td><input type="radio" name="gender" value="female"/>Female<br>
                    <td><input type="radio" name="gender" value="non-binary"/>Non-binary<br>
                    </td>
                </tr>
                <tr>
                    <td align ="right">Interests</td>
                    <td align="left"><input type="checkbox" name="topics" value="Skiing"/> Skiing <br>
                    <td align="left"><input type="checkbox" name="topics" value="Hiking"/> Hiking <br>
                    <td align="left"><input type="checkbox" name="topics" value="Dancing"/> Dancing <br>
                    </td>
                </tr>
            </table>
            <p><input type="submit" value="Submit"/></p>
        </form>
    </body>
</html>
