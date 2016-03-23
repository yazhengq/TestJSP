<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%request.setCharacterEncoding("GBK");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

	<jsp:useBean id="hello" class="com.gdut.bean.HelloBean" scope="request">
		<jsp:setProperty name="hello" property="*" />
	</jsp:useBean>
<%-- <%
String name = request.getParameter("name");
out.println(new String(name.getBytes("ISO8859_1"),"GBK"));
 %>	 --%>
	
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'SayHelloBean.jsp' starting page</title>

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
	<p>&nbsp;</p>
	<p align="center">
		<font size="4">
<%-- 		<%=new String(hello.getName().getBytes("ISO8859_1"),"GBK") %>
		<%=new String(hello.getSex().getBytes("ISO8859_1"),"GBK") %> --%>
		</font>
		<jsp:getProperty property="name" name="hello"/>
		<jsp:getProperty property="sex" name="hello"/> 
</body>
</html>
