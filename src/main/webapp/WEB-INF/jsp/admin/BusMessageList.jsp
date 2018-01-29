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
		<h1>巴士信息列表</h1>
		<table width="1300" border="1" cellspacing="0">
				<tr>
					<td>ID</td>
					<td>巴士编号</td>
					<td>巴士类型</td>
					<td>限载人数</td>
					<td>基本价格</td>
					<td>图片ID</td>
					<td>公司ID</td>
					<td>巴士图片</td>
					<td>途径风景</td>
					<td>巴士打折</td>
					<td>始发地址</td>					
					<td>目的地址</td>
					<td></td>
					<td></td>
				</tr>
				<c:forEach var="busmessage" items="${busmessage }">
				<tr>
					<td>${busmessage.bus_id }</td>
					<td>${busmessage.bus_num }</td>
					<td>${busmessage.bustypename }</td>
					<td>${busmessage.bus_peoplenum }</td>
					<td>${busmessage.bus_price }</td>
					<td>${busmessage.pid }</td>
					<td>${busmessage.company_id }</td>
					<td>${busmessage.bus_pic }</td>
					<td>${busmessage.bus_scenic }</td>
					<td>${busmessage.bus_discount }</td>
					<td>${busmessage.start_add }</td>
					<td>${busmessage.end_add }</td>
					<td><a href="${busmessage.bus_id}/updateBusMessage" >更新</a><br/></td>
					<td><a href="${busmessage.bus_id}/delBusMessageSucc" >删除</a><br/></td>
				</tr>
				<br/>
				</c:forEach>
		</table>
		<a href="index.jsp">返回首页</a>
	</center>	
		
	
</body>
</html>