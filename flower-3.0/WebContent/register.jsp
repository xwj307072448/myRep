<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/register" method="post" >
<p>
花卉名称:<input name="name" type="text">
</p>
<p>
花卉价格:<input name="price" type="text">
</p>
<p>
产地编号:<input name="cid" type="text">
</p>

<input type="submit" value="提交">
<input type="reset" value="重置">
</p>

</form>

</body>
</html>