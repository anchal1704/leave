<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/adminstyle.css">
</script>
  </head>
  <body>
      
<%
     ResultSet resultSet =  null;
     Statement st = null;
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/menagere","root","");
       String uid = (String)(session.getAttribute("userid"));
        st=con.createStatement(); 
try{ 
       
         
        String sql ="SELECT * FROM profile WHERE uid='"+uid+"'";
        resultSet =  st.executeQuery(sql);
//        out.print(resultSet);
}catch(Exception e){
        out.println(e);
}

%>
    <div style="height: 10px; background: #27aae1;"></div>
      <nav class="navbar navbar-inverse" role="navigation">
        <div class="container">
          <div class="navbar-header">
              <h1 style="color:white;">Welcome to Employee Leave Management Dashboard</h1>
          </div>
        </div>
      </nav>
    <div class="Line" style="height: 10px; background: #27aae1;"></div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-2">
          <br>
          <br>
          <ul id="side_menu" class="nav nav-pills nav-stacked">
            <li class="active"><a href="panel.jsp"><span class="glyphicon glyphicon-th"></span>
            &nbsp;My Profile</a></li>
            <li><a href="leave.html"><span class="glyphicon glyphicon-tags"></span>
            &nbsp;Apply leave</a></li>
            <li><a href="history.jsp"><span class="glyphicon glyphicon-user"></span>
            &nbsp;Leave History</a></li>
            <li><a href="Logout.jsp"><span class="glyphicon glyphicon-comment"></span>
            &nbsp;Logout</a></li>
          </ul>
        </div>
        <div class="col-sm-10" style="background-color:white">
            <div class="container">
                <h1>Edit Profile</h1>
                <hr>
              <div class="row">
                  <!-- left column -->
                  <div class="col-md-3">
<!--                    <div class="text-center">
                      <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                      <h6>Upload a different photo...</h6>
                      
                      <input type="file" class="form-control">
                    </div>-->
                  </div>
                  
                  <!-- edit form column -->
                  <div class="col-md-9 personal-info">
                    <h3>Personal info</h3>
                    <%
                        String empid="" ; 
                        String fname="" ; 
                        String lname="" ; 
                        String gender="" ; 
                        String dob="" ; 
                        String contact="" ; 
                        String email="" ; 
                        String dep="";
                    try{ 
                    String sql ="SELECT * FROM profile WHERE uid='"+uid+"'";;

                    resultSet =  st.executeQuery(sql);
                    while(resultSet.next()){
                                empid =resultSet.getString("eid");
                                fname =resultSet.getString("fname");
                                lname =resultSet.getString("lname");
                                gender=resultSet.getString("gender");
                                contact =resultSet.getString("contact");
                                email =resultSet.getString("email");
                                dob = resultSet.getString("dob");
                                dep =resultSet.getString("dep");
                                }

                                } catch (Exception e) {
                                e.printStackTrace();
                                }
                            
                    %>
                    <form class="form-horizontal" role="form" action="profile.jsp">
                      <div class="form-group">
                        <label class="col-lg-3 control-label">Employee Id:</label>
                        <div class="col-lg-8">
                             
                          <input class="form-control" name="empid" type="text" value="<%=empid%>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-lg-3 control-label">First name:</label>
                        <div class="col-lg-8">
                          <input class="form-control" type="text" name="fname" value="<%=fname%>">
                        </div>
                      </div>
                      <div class="form-group">
                          <label class="col-md-3 control-label">Last Name:</label>
                          <div class="col-md-8">
                            <input class="form-control" type="text" name="lname" value="<%=lname%>">
                          </div>
                      </div>
                      <div class="form-group">
                          <label class="col-lg-3 control-label">Gender:</label>
                          <div class="col-lg-8">
                            <input class="form-control" type="text" name="gen" value="<%=gender%>">
                          </div>
                      </div>
                      <div class="form-group">
                        <label class="col-lg-3 control-label">Date of Birth:</label>
                        <div class="col-lg-8">
                          <input class="form-control" name="dob" type="date" value="<%=dob%>">
                      </div>
                      </div>
                      <div class="form-group">
                          <label class="col-md-3 control-label">Contact Number:</label>
                          <div class="col-md-8">
                            <input class="form-control" type="text" name="contact" value="<%=contact%>">
                          </div>
                        </div>
                      <div class="form-group">
                        <label class="col-lg-3 control-label">Email:</label>
                        <div class="col-lg-8">
                          <input class="form-control" type="text" name="email" value="<%=email%>">
                        </div>
                      </div>
                      <div class="form-group">
                          <label class="col-lg-3 control-label">Department:</label>
                          <div class="col-lg-8">
                             <input class="form-control" type="text" name="dep" value="<%=dep%>">
                          </div>
                        </div>
                      <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-8">
                          <input type="submit" class="btn btn-primary" value="Save Changes">
                          <span></span>
                          <input type="reset" class="btn btn-default" value="Cancel">
                        </div>
                      </div>
                    </form>
                  </div>
              </div>
            </div>
            <hr>
        </div>
      </div>
    </div>
  </body>
</html>
