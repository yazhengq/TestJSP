<%@page import="com.sun.xml.internal.ws.encoding.HasEncoding"%>
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

<title>My JSP 'BGColor.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<!-- html 注释   113123 激活-->

<%-- 注释1 
    	注释
     --%>
<%
	// sysout
	String bgColor = request.getParameter("bgColor");
	boolean hasExplicitColor;
	if (bgColor != null) {
		hasExplicitColor = true;
	} else {
		hasExplicitColor = false;
	}
%>
<body bgcolor="<%=bgColor%>">
	<h2 align="center">Color Testing</h2>
	<%
		if(hasExplicitColor){
			out.println("The background color of " + bgColor + ".");
		}else{
			out.println("Default color of WHITE");
		}
	%>
</body>
</html>
