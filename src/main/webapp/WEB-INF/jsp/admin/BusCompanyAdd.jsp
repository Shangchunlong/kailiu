<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>添加巴士公司信息</h1>
	</center>
	<form action="saveBusCompany" method="post">
		C I D：<input type="text" name="cid" /><br/><br/>
		巴士公司名称：<input type="text" name="company_name"/><br/><br/>
		巴士公司地址：<input type="text" name="company_add" /><br/><br/>
		巴士公司信息：<input type="text" name="company_msg" /><br/><br/>
		巴士公司图片：<input type="text" name="company_pic" /><br/><br/>
		
		<input type="submit" value="提交"/>
		<input type="reset" value="重置"/>
		<a href="index.jsp">返回首页</a>
	</form>
</body>
</html>