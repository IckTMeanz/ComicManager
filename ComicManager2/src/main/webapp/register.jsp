<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Đăng ký</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous"></script>
<style>
.red {
	color: red;
}
</style>
</head>
<body>
	<%
		String baoLoi = request.getAttribute("baoLoi")+"";
		baoLoi = (baoLoi.equals("null"))?"":baoLoi;
	
		
		String username= request.getAttribute("username")+"";	
		username = (username.equals("null"))?"":username;
		
		String fullname= request.getAttribute("fullname")+"";
		fullname = (fullname.equals("null"))?"":fullname;
		
		
	%>
	<div class="container">
		<div class="text-center">
			<h1>ĐĂNG KÝ TÀI KHOẢN</h1>
		</div>
		
		<div class="red" id="baoLoi">
			<%=baoLoi %>
		</div>
		<form class="form" action="register" method="post">
			<div class="row">
				<div class="col-sm-6">
					<h3>Account</h3>
					<div class="mb-3">
						<label for="tenDangNhap" class="form-label">Username<span
							class="red">*</span></label> <input type="text" class="form-control"
							id="username" name="username" required="required" value="<%=username%>">
					</div>
					<div class="mb-3">
						<label for="matKhau" class="form-label">Password<span
							class="red">*</span></label> <input type="password" class="form-control"
							id="password" name="password" required="required" onkeyup="kiemTraMatKhau()">
					</div>
					<div class="mb-3">
						<label for="comfirmpassword" class="form-label" >Confirm password<span class="red">*</span> <span id="msg" class="red" ></span>
						</label> <input type="password" class="form-control" id="confirmpassword"
							name="confirmpassword" required="required" onkeyup="kiemTraMatKhau()">
					</div>
					<hr />
					<h3>Thông tin khách hàng</h3>
					<div class="mb-3">
						<label for="fullname" class="form-label">Full name</label> <input
							type="text" class="form-control" id="fullname" name="fullname" value="<%=fullname%>">
					</div>
					
					<input class="btn btn-primary form-control" type="submit"
						value="Sign up" name="submit" id="submit"  />
				</div>
			</div>
		</form>
	</div>
</body>

<script>
	function kiemTraMatKhau(){
		matKhau = document.getElementById("password").value;
		matKhauNhapLai = document.getElementById("confirmpassword").value;
		if(matKhau!=matKhauNhapLai){
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp!";
			return false;
		}else{
			document.getElementById("msg").innerHTML = "";
			return true;
		}
	}
	
	
</script>

</html>