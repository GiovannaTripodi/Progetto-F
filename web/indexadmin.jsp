<%@ page language="java" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>V I R T U A L</title>
        <link rel="stylesheet" type="text/css" href="./CSStyles/LoginStyle.css">
        <link rel="icon" href="./../../CSStyles/projectIcon.png" type="image/png"/>
    </head>
    <body>
           <div class="login-page">
            <div class="form">
            <form class="login-form" method="post" action="loginadmin.jsp">
                <h1>Admin Login</h1>
                <input type="text" name="uname" placeholder="Username..."/>
                <input type="password" name="pass" placeholder="Password..."/>
                <button>Sign In</button>
            </form>
          </div>
        </div>
    </body>
</html>