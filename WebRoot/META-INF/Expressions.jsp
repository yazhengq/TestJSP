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

<title>My JSP 'Expressions.jsp' starting page</title>

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
	<!-- ÕÅÈý ×¢ÊÍ -->

	<h2>JSP Expressions</h2>
	<ul>
		<li>Current time : <%=new java.util.Date()%>
		<li>You hostname : <%=request.getRemoteHost()%>
		<li>You session ID : <%=session.getId()%>
		<li>The <code> testParam </code>from parameter:<%=request.getParameter("testParam")%>
	</ul>

</body>
</html>
