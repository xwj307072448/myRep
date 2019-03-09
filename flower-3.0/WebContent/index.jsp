<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${ctx}/JS/jquery.js"></script>
<meta charset="UTF-8">


<script type="text/javascript">
  var entry=function(namea,lowpricea,highpricea,cnamea){
	  $.post("${ctx}/showController",{name:namea,lowprice:lowpricea,highprice:highpricea,cname:cnamea},function(data){
	           	  var tb=$("#tb");
	           	  tb.empty();
	           	  eval("var x="+data);
	           	  for(var i=0;i<x.length;i++){
	           	  tb.append(
	           			 '<tr>'+
	           		    '<td>'+x[i].id+'</td>'+
	           		    '<td>'+x[i].name+'</td>'+
	           		    '<td>'+x[i].price+'</td>'+
	           		    '<td>'+x[i].cname+'</td>'+
	           		  '</tr>'
	           	  );
	           	  };
	  });
  };
$(function(){
	entry();
	
	$("#c1").click(function(){
		var name=$("#name").val();
		var lowprice=$("#lowprice").val();
		var highprice=$("#highprice").val();
		var cname=$("#cname").val();
		entry(name,lowprice,highprice,cname);
	});
	
	$("#c2").click(function(){
		window.location.href="${ctx}/register.jsp"
	});
	
});


</script>
<title>Insert title here</title>
</head>
<body>
	<form action="${ctx}/showController" method="post">
		<table border="1px" style="margin: auto;">
			<thead id="th">
				<tr>
					<th>花卉编号</th>
					<th>花卉名称</th>
					<th>花卉价格（元）</th>
					<th>花卉产地</th>
				</tr>
			</thead>
				<tbody id="tb">

				</tbody>
		</table>


		<div align="center" style="margin-top: 50px">
			花卉名：<input type="text" name="name" id="name" style="width: 60px"> 
			价格区间<input type="text"
				name="lowprice" style="width: 40px" id="lowprice"> 
				-<input type="text"
				name="highprice" style="width: 40px" id="highprice">
				
				
				 产地名：<input type="text"
				name="cname" id="cname" style="width: 60px">

		</div>
		<div align="center" style="margin-top: 20px">
			<input type="button" value="查询" id="c1">
			 <input type="button" value="添加花卉" id="c2">
		</div>
	</form>



</body>
</html>