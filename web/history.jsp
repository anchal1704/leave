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
    <style>
             h2 {
            text-align: center;
            }

            table caption {
                padding: .5em 0;
            }

            @media screen and (max-width: 767px) {
            table caption {
                border-bottom: 1px solid #ddd;
            }
            }

            .p {
            text-align: center;
            padding-top: 140px;
            font-size: 14px;
            }
     </style>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/adminstyle.css">
</script>
  </head>
  <body>
      <%
    Statement st=null;
    String uid = (String)(session.getAttribute("userid"));
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/menagere","root","");
        st=con.createStatement();
         }catch(Exception e){
        out.println(e);
        
    }
    ResultSet resultSet = null;
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
            <li><a href="panel.jsp"><span class="glyphicon glyphicon-th"></span>
            &nbsp;My Profile</a></li>
            <li ><a href="leave.html"><span class="glyphicon glyphicon-tags"></span>
            &nbsp;Apply leave</a></li>
            <li class="active"><a href="history.jsp"><span class="glyphicon glyphicon-user"></span>
            &nbsp;Leave History</a></li>
            <li><a href="Logout.jsp"><span class="glyphicon glyphicon-comment"></span>
            &nbsp;Logout</a></li>
          </ul>
        </div>
        <div class="col-sm-10" style="background-color:white">
                <h2>Employee Leave History</h2>
                <br>
                <br>
                <div class="container">
                  <div class="row">
                    <div class="col-xs-12">
                      <div class="table-responsive">
                        <table summary="Leave history of Employee" class="table table-bordered table-hover">
                            <tr>
                              <th>Leave Type</th>
                              <th>From</th>
                              <th>To</th>
                              <th>Description</th>
                              <th>Posting Date</th>
                              <th>Status</th>
                            </tr>
                             <% try{ 
                                String sql ="SELECT * FROM  leave_history where uid='"+uid+"'";

                                resultSet =  st.executeQuery(sql);
                                while(resultSet.next()){
                                   
                                %>
                            <tr>
                              <td><%=resultSet.getString("type") %></td>
                              <td><%=resultSet.getString("start") %></td>
                              <td><%=resultSet.getString("end") %></td>
                              <td><%=resultSet.getString("des") %></td>
                              <td><%=resultSet.getString("date") %></td>
                              <td><%=resultSet.getString("status") %></td>
                            </tr><% 
                                    }

                                    } catch (Exception e) {
                                    e.printStackTrace();
                                    }
                                    %>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
        </div>
      </div>
    </div>
  </body>
</html>
