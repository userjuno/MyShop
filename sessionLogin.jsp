<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%session.setAttribute("id", request.getParameter("id")); %>    //�Ķ���͸� �޾Ƽ� ���ǰ��� �����Ѵ�.
<%session.setAttribute("pwd", request.getParameter("pwd")); %>   
<html>
<head>
<title>Session Login</title>
</head>
<body>
<center>
    <h3>Login Success!!!</h3>
    <h3>Login ID : <%=(String)session.getAttribute("id") %></h3>    // �̿Ͱ��� �������� �����Ǵµ��� 
    <h3>Login PASSWORD : <%=(String)session.getAttribute("pwd") %></h3>  //���ǰ����� ��� �����ȴ�.
    <a href="sessionLogout.jsp">�α׾ƿ�</a>
</center>
</body>
</html>
