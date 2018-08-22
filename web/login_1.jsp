<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/adminstyle.css">
    <style>
      .FieldInfo{
        color: rgb(251,174,44);
        font-family: Bitter,Georgia,"Times New Roman",Times,serif;
        font-size: 1.2em;
      }
      body{
        background-color: #ffffff;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid">
      <div class="row">
          <img src="Image/sopra.png" width=300;height=30;>
      </div>
      <div class="row"  >
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <h1 style="color:#5DBCD2">Leave Managment System !</h1>
        </div>
        <div class="col-sm-4"></div>
      </div>
      <div class="row" style="margin-top:30px;">
        <div class="col-sm-4 col-sm-offset-4">
          <!-- <?php echo Message(); echo  SuccessMessage(); ?> -->
          <div>
            <form class="" action="Login.jsp" method="post">
              <fieldset>
                <div class="form-group">
                  <label for="Username"><span class="FieldInfo">UserId:</span></label>
                  <div class="input-group input-group-lg">
                    <span class="input-group-addon">
                      <span class="glyphicon glyphicon-envelope text-primary"></span>
                    </span>
    	              <input class="form-control" type="email" name="Username" id="Username" placeholder="UserId">
                  </div>
                </div>
                <div class="form-group">
                  <label for="Passowrd"><span class="FieldInfo">Password:</span></label>
                  <div class="input-group input-group-lg">
                    <span class="input-group-addon">
                      <span class="glyphicon glyphicon-lock text-primary"></span>
                    </span>
                    <input class="form-control" type="Password" name="Password" id="Password" placeholder="Password">
                  </div>
                </div>
                <br>
                <input class="btn btn-info btn-block" type="Submit" name="Submit" value="Login">
              </fieldset>
              <br>
            </form>

        </div>
      </div>
    </div>
</html>
