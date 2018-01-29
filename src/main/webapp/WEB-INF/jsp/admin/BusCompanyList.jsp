<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>巴士公司信息列表</h1>
		<table width="1300" border="1" cellspacing="0">
				<tr>
					<td>巴士公司ID</td>
					<td>cid</td>
					<td>巴士公司名称</td>
					<td>巴士公司地址</td>
					<td>巴士公司信息</td>
					<td>巴士公司图片</td>
					<td></td>
					<td></td>
				</tr>
				<c:forEach var="busCompany" items="${busCompany }">
				<tr>
					<td>${busCompany.company_id }</td>
					<td>${busCompany.cid }</td>
					<td>${busCompany.company_name }</td>
					<td>${busCompany.company_add }</td>
					<td>${busCompany.company_msg }</td>
					<td>${busCompany.company_pic }</td>
					<td><a href="${busCompany.company_id}/updateBusCompany" >更新</a><br/></td>
					<td><a href="${busCompany.company_id}/delBusCompanySucc" >删除</a><br/></td>
				</tr>
				<br/>
				</c:forEach>
		</table>
		<a href="index.jsp">返回首页</a>
	</center>	
		
	
</body>
</html>