
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>更新巴士公司信息</h1>
	</center>
	<form action="updateBusCompanySucc" method="post">
		C I D：<input type="text" name="cid" value="${busCompanyId.cid }"/><br/><br/>
		巴士公司名称：<input type="text" name="company_name" value="${busCompanyId.company_name }"/><br/><br/>
		巴士公司地址：<input type="text" name="company_add" value="${busCompanyId.company_add }"/><br/><br/>
		巴士公司信息：<input type="text" name="company_msg" value="${busCompanyId.company_msg }"/><br/><br/>
		巴士公司图片：<input type="text" name="company_pic" value="${busCompanyId.company_pic }"/><br/><br/>
		
		<input type="submit" value="提交"/>
		<input type="reset" value="重置"/>
		<a href="index.jsp">返回首页</a>
	</form>
</body>
</html>