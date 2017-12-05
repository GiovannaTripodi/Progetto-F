<%@ page language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import ="Components.*" %>
<%@ page contentType="te3xt7htarset=ISO-8859-5" %>
<html>
    <head>
	<title> ADMINISTRATION MODE </title>
	<link rel="stylesheet" href="../../CSStyles/UpdateDBCompStyle.css">
    </head>
    <body>
        <div class="grid">
            <div class="header"><h1> Admin Side - Choose Type of Component </h1>
            <%//Success of login
            if ((session.getAttribute("useridadm") == null) || (session.getAttribute("useridadm") == "")) {
                response.sendRedirect("../../indexadmin.jsp"); 
            } else { %>
                Welcome <%=session.getAttribute("useridadm")%> <a href='../../logout.jsp'>Log out</a>
            <%}%>
            </div>
            <div class="navbar">
                <input type="button" value="Motherboard" name="motherboard" onclick="location.href='MotherboardPage.jsp'"/>
                <input type="button" value="CPU" name="cpu" onclick="location.href='CpuPage.jsp'"/>
                <input type="button" value="RAM" name="ram" onclick="location.href='RamPage.jsp'"/>
                <input type="button" value="Graphics Card" name="gcard" onclick="location.href='GCardPage.jsp'"/>
                <input type="button" value="Hard Disk" name="hdisk" onclick="location.href='HDiskPage.jsp'"/>
                <input type="button" value="Power Supply" name="powersupply" onclick="location.href='PowerSupplyPage.jsp'"/>
                <input type="button" value="Case" name="case" onclick="location.href='CasePage.jsp'"/>
            </div>
            <div class="content">
                <p>Component Table:</p>
                <%
                    out.print(new HTMLTableCreator().createCase(true));
                %> 
		<div class="insidebar">
                    <p>Add Component:</p>
                    <form action="../AddPage/AddCase.jsp" method="post">
                    <table id="insertTable" border="0">
                        <tr>
                            <td>Brand:</td>
                            <td><input type="text" name="brand"></td>
                        </tr>
                        <tr>
                            <td>Model:</td>
                            <td><input type="text" name="model"></td>
                        </tr>
                        <tr>	
                            <td>Type:</td>
                            <td><input type="text" name="type"></td>
                        </tr>
                        <tr>	
                            <td>Color:</td>
                            <td><input type="text" name="color"></td>
                        </tr>
                        <tr>	
                            <td>MB_Comp:</td>
                            <td><input type="text" name="mb_comp"></td>
                        </tr>
                        <tr>	
                            <td>Max_hd_Len:</td>
                            <td><input type="text" name="max_hd_len"></td>
                        </tr>
                        <tr>	
                            <td>Price:</td>
                            <td><input type="text" name="price"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Aggiungi"></td>
                        </tr>
                    </table>
                    </form>
		</div>
            </div>
        </div>
    </body>
</html>

