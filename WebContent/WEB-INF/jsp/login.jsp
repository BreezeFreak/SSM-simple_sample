<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link href="${pageContext.request.contextPath }/css/main.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#name").keydown(function(e) {
			if (e.keyCode == 13) {
				login();
			}
		});
		$("#pwd").keydown(function(e) {
			if (e.keyCode == 13) {
				login();
			}
		});

	})
	function login() {
		var name = $("#name").val();
		var pwd = $("#pwd").val();
		if (name === "") {
			alert("用户名不能为空！");
			return false;
		} else if (pwd === "") {
			alert("密码不能为空！");
			return false;
		} else {
			$.ajax({
				type : 'post',
				url : 'login_check',
				dataType : "json",
				async : true,
				data : {
					name : name,
					pwd : pwd
				},
				success : function(data) {
					if (data === null) {
						alert("没有这个用户！")
					} else {
						alert("登录成功")
						window.location.href = "adminList";
					}
				}
			});
		}
	}
	/* $.ajax({
	    url:"login_check",
	    type: "POST",
	    datatype:"json",
	    data:{
	    	"name":$("#name").val(),
	    	"pwd":$("#pwd").val(),
	    },
	    success:function(data){
	        //alert(typeof data);
	        var str = data.result;
	        if(str == "ok"){
	            alert('登录成功！')
	        }else{
	            alert('登录失败！')
	        } 
	    }
	    
	}) */
</script>
<style type="text/css">
.login_form {
	padding: 20px 40px 40px 40px;
	margin: 180px auto;
	width: 350px;
	background-color: rgb(19, 102, 44);
	border-radius: 10px;
}

.login_form h2 {
	font-size: 30px;
}

.login_form input {
	width: 220px;
	height: 25px;
	font-size: 20px;
	border-radius: 5px;
}

.login_form div {
	margin-top: 15px;
}

.login_form .btn {
	margin-top: 20px;
	height: 40px;
	background-color: rgb(0, 180, 0);
}

.login_form .btn:hover {
	background-color: green;
}

.login_form .btn:active {
	background-color: rgb(25, 55, 45);
}
</style>
</head>
<body>

	<div class="login_form">
		<form>
			<h2>用户登录</h2>
			<div>
				<input type="text" id="name" placeholder="输入手机或邮箱">
			</div>
			<div>
				<input type="password" id="pwd" placeholder="输入密码">
			</div>
			<div>
				<input class="btn" type="button" id="login_btn" value="登录"
					onclick="login()")>
			</div>
		</form>

	</div>
</body>
</html>