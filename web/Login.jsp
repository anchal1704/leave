<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("Username");    
    String pwd = request.getParameter("Password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/menagere",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from x where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("panel.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>