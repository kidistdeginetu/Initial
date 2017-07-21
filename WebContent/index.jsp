<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		//function formValidation(form){
		//name is required
		//var uname;
		$('#submit').on('click', function() {
			$('span.error_msg').html('');
			uname = $('#username').val();
			var pwd = $('#password').val();
			
			var special = /^[^-&].*/;
			var reg1= /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;
			 var regex = /^[A-z]+$/;
			
             if(uname.length==0)
            	 {
 				$('#username').next().html("the username is required");
                return false;
            	 }
			 if (uname.length<=6|uname.length>=50) {
				$('#username').next().html("the length should be between 6 and 50");
				return false;
			}
			 var regex = /^[a-zA-z]+$/;
			 if (!uname.charAt(0).match(regex)) {
					$('#username').next().html("first letter should be an alphabet");
					return false;
				}
			 var regex2 = /[$&+,:;=?@#|<>.^*()%!]/;
					///^[a-zA-z'-]+$/;
			 
			 if (uname.match(regex2)) {
					$('#username').next().html("it mustn't contain other special characters");
					return false;
				}
			 if(pwd.length==0)
        	 {
				$('#password').next().html("the password is required");
            return false;
        	 }
			  if(pwd.length!=8)
        	 {
				$('#password').next().html("the password must be 8 characters long");
            return false;
        	 }
			  if(pwd==uname)
        	 {
				$('#password').next().html("password and username cant be the same");
            return false;
        	 }
			  if(!pwd.match(reg1))
        	 {
				$('#password').next().html("the password must have at least one number,one character");
            return false;
        	 }
		});
		
		

	});
	
</script>
	
  <style type="text/css">
body {
	margin: 0 auto;
	background-color: #558C89;
}

#container {
	width: 400px;
	height: 350px;
	text-align: center;
	margin-top:50px;
	background-color: #558C89;
    box-shadow: 5px 5px 5px 5px #4682B4;
    border-style: outset;
	padding-top:50px;
	border-radius: 4px;
	margin: 0 auto;
}

.error {
	color: white;
}


</style>
</head>
<body>


	<div class="modal-dialog"  >
		<!--  <div class="modal-content">-->
		<div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
		<form class="col-md-12 center-block" id="container" >
         <!--   <div class="panel-heading">
                  <strong>Login</strong>
                </div>-->
			

			<div class="modal-body">
				
             
					<div class="form-group">
						<input type="text"
							class="form-control input-sm" id="username"
							placeholder="Enter username"> <span class="error"></span>

					</div>

					<div class="form-group">
						 <input type="password"
							class="form-control input-sm" id="password"
							placeholder="enter Password"> <span class="error"></span>
							
					</div>

					<div class="form-group">

						<input name="submit" type="submit" id="submit" value="login"
							class="btn btn-block btn-lg btn-primary" />

					</div>

<div class="panel-footer">
                    Not Registered? <a href="#">Register here</a></div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
