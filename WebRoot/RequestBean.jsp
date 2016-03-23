<%@page import="com.gdut.bean.CounterBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<jsp:useBean id="counterBean"
	class="com.gdut.bean.CounterBean"></jsp:useBean>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'RequestBean.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<%--   	<%
  		CounterBean counterBean = (CounterBean)request.getAttribute("counterBean");
  		if(counterBean == null){
  			counterBean = new CounterBean();
  			request.setAttribute("counterBean", counterBean);
  		}
  		  		
  	 %> --%>
  	 <% counterBean.setCount(100); %>
  	 <h3>scope = "request"</h3>
  	 <jsp:forward page="RequestBean2.jsp"></jsp:forward>
</body>
</html>
