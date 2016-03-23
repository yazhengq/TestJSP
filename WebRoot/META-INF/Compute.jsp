<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'Compute.jsp' starting page</title>

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
    	String value1 = request.getParameter("value1");
    	String value2 = request.getParameter("value2");
    %>

	<%	if(request.getParameter("compute").equals("division")){ %>
	<jsp:include page="divide.jsp" flush="true">
		<jsp:param name="v1" value="<%=value1%>" /> 
		<jsp:param name="v2" value="<%=value2%>" />
	</jsp:include>
	<%
		} else {
	%>
	<%@ include file="multiply.jsp"%>
	<%
		}
	%>
</body>
</html>
