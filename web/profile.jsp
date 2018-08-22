<%@ page import ="java.sql.*" %>
<%
    String uid = (String)(session.getAttribute("userid"));
    String empid = request.getParameter("empid");    
    String gen = request.getParameter("gen");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");    
    String contact = request.getParameter("contact");
    String dep = request.getParameter("dep");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/menagere",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("replace into profile(uid,eid,fname,lname,gender, dob,contact,email,dep) values ('" + uid + "','" + empid + "','" + fname + "','" + lname + "','" + gen + "','" + dob + "','" + contact + "','" + email + "','" + dep + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        out.print("<h1>Updation Successful!!!</h1>");%>
       <script>
               setTimeout(function() {
              window.location = 'panel.jsp';
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