<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户管理</title>
	<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>
	<script type="text/javascript">
	
	</script>
	
</head>
<body>
 <div class="top_nav">
		<div class="logout">退出登录</div>
		<label>用户管理</label>
	</div>

	<div class="container">
		<div class="search_bar">
			<label>输入关键字：</label>
			<input type="text" id="s_name" placeholder="姓名/手机/邮箱">

			<input class="search btn" type="button" id="s_btn" value ="搜索" onclick="search()">
		</div>

		<hr>

		<table>
		<tbody class="tbody">
		    <tr class="hint">
		        <td id="id">id</td>
		        <td>姓名</td>
		        <td>密码</td>
		        <td>性别</td>
		        <td>手机</td>
		        <td>邮箱</td><!-- 
		        <td id="role">角色</td> -->
		        <td colspan="2">操作</td>
		    </tr>

		    <c:forEach items="${list}" var="admin" varStatus="st">
		        <tr class="tr">
		            <td id="id">${admin.id}</td>
		            <td id="name_">${admin.name}</td>
		            <td id="pwd">${admin.pwd}</td>
		            <td id="gender">${admin.gender}</td>
		        	<td id="phone">${admin.phone}</td>
		            <td id="email">${admin.email}</td>
		        	<%-- <td id="role">${admin.role}</td> --%>
		            <td>
		            	<input class="btn" type="button" id="update_button" value="修改">
		            	<input class="btn" type="button" id="c_btn" value="确认">
		            </td>
		            <td>
		            	<input class="btn del_btn" type="button" id="del_button" value="刪除">
		            </td>
		        </tr>
		    </c:forEach>

		    <tr class="add_bar">
		        <td></td>
		        <td><input type="text" id="add_name"></td>
		        <td><input type="text" id="add_pwd"></td>
		        <td>
		        	<select id="add_gender">
						<option value="1">男</option>
						<option value="0">女</option>
					</select>
				</td>
		        <td><input type="text" id="add_phone"></td>
		        <td><input type="text" id="add_email"></td>
		    <!--     <td>
		        	<select  id="add_role">
						<option value="用户">普通用户</option>
						<option value="0">管理员</option>
					</select>
				</td> -->
		        <td colspan="2">
		        	<input class="btn" type="button" id="add_button" value="添加" onclick="add()">
		        </td>
		    </tr>
		</tbody>
		</table>
	</div>
</body>
</html>