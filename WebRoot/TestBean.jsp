<%@page import="com.gdut.bean.CounterBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'TestBean.jsp' starting page</title>

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
	<%
		CounterBean cb = new CounterBean();
	%>

	<font color="red" size="5"> <%=cb.getCount()%>
	</font>
<%-- 
	<!--ÕâÀïÓĞ´í£¡£¡£¡-->
	<jsp:useBean id="cb" class="com.gdut.bean.CounterBean.class">
	 </jsp:useBean>
	<jsp:setProperty property="count" name="cb" value="23" />
	<jsp:getProperty property="count" name="cb" />
--%>
</body>
</html>
