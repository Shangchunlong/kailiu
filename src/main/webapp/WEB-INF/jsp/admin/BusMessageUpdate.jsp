
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
		<h1>更新巴士信息</h1>
	</center>
	<form action="updateBusMessageSucc" method="post">
		巴士类型：<input type="text" name="bustypename" value="${busMessageId.bustypename }"/><br/><br/>
		巴士编号：<input type="text" name="bus_num" value="${busMessageId.bus_num }"/><br/><br/>
		限载人数：<input type="text" name="bus_peoplenum" value="${busMessageId.bus_peoplenum }"/><br/><br/>
		基本价格：<input type="text" name="bus_price" value="${busMessageId.bus_price }"/><br/><br/>
		公 司 I D：<input type="text" name="company_id" value="${busMessageId.company_id }"/><br/><br/>
		图 片 I D：<input type="text" name="pid" value="${busMessageId.pid }"/><br/><br/>
		巴士图片：<input type="text" name="bus_pic" value="${busMessageId.bus_pic }" /><br/><br/>
		途径风景：<input type="text" name="bus_scenic" value="${busMessageId.bus_scenic }" /><br/><br/>
		巴士打折：<input type="text" name="bus_discount" value="${busMessageId.bus_discount }" /><br/><br/>
		始发地址：<input type="text" name="start_add" value="${busMessageId.start_add }" /><br/><br/>
		目的地址：<input type="text" name="end_add" value="${busMessageId.end_add }" /><br/><br/>
		<input type="submit" value="提交"/>
		<input type="reset" value="重置"/>
		<a href="/liuwan/index.jsp">返回首页</a>
	</form>
</body>
</html>