
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
        <jsp:useBean id="user" scope="session" class="com.apress.faq.User">
            <jsp:setProperty name="user" property="*"/>
        </jsp:useBean>

        Welcome Friend, here is what we got from you:
        <p>Your name is <jsp:getProperty name="user" property="firstName" /> <jsp:getProperty name="user" property="lastName" />.</p>
        <p>You are <jsp:getProperty name="user" property="age" /> years old.</p>
        <p>You identify as <jsp:getProperty name="user" property="gender" />.</p>
        <p>You are interested in:
    <%
        String[] topics = request.getParameterValues("topics");
        if (topics == null) { topics = new String[] {"Nothing."}; }
        for (int i = 0; i < topics.length; i++) {
    %>
    <br><%= topics[i] %>

<%
  }
        session = request.getSession();
        session.setAttribute("interests", topics);
%>
    <p>Go to <a href="index.jsp">Talk About Yourself Page</a></p>
    </body>
</html>
