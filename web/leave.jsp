<%@ page import ="java.sql.*" %> 
<%@ page import = "java.time.format.DateTimeFormatter"%>;  
<%@ page import = "java.time.LocalDateTime"%>;    
<% 
    String uid = (String)(session.getAttribute("userid"));
    String type = request.getParameter("type");    
    String from = request.getParameter("from");
    String to = request.getParameter("to");
    String des = request.getParameter("des");
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
    LocalDateTime now = LocalDateTime.now();  
    String date=dtf.format(now);
    String status = "Unapproved";
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/menagere",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into leave_history(uid,type,start,end,des, date,status) values ('" + uid + "','" + type + "','" + from + "','" + to + "','" + des + "','" + date + "','" + status + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        out.print("<h1>Sucessfully Applied for leave!!!</h1>");%>
       <script>
               setTimeout(function() {
              window.location = 'leave.html';
            },2000);
      </script>


    
   <% }
        
else {
        out.print("<h1>Something went wrong!!! Try again!!!</h1>");
    %>
    <script>
               setTimeout(function() {
              window.location = 'panel.jsp';
            },2000);
      </script>
 <%
    }
%>