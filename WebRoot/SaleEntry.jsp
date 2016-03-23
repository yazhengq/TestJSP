<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="com.gdut.bean.SaleEntry"%>
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

<title>My JSP 'SaleEntry.jsp' starting page</title>

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
	<table border="5" align="center">
		<tr>
			<th class="title">Using jsp:setProperty
	</table>
<jsp:useBean id="entry" class="com.gdut.bean.SaleEntry" />

	<jsp:setProperty property="itemID" name="entry"
		value="<%=request.getParameter(\"itemID\")%>" />

	<jsp:setProperty property="numItems" name="entry" param="numItems" />
	
	<jsp:setProperty property="discountCode" name="entry"
		param="discountCode" />
	
	<br>
	<table border="5" align="center">
		<tr class="colored">
			<th>ItemID<th>Unit Price<th>Number Ordered<th>Total Price
		<tr align="left">
			<td><jsp:getProperty property="itemID" name="entry"/>
			<td><jsp:getProperty property="itemCost" name="entry"/>
			<td><jsp:getProperty property="numItems" name="entry"/>
			<td><jsp:getProperty property="totalCost" name="entry"/>
	</table>	

</body>
</html>
