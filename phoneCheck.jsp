<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mMgr" class="Bean.MemberMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	String phone = request.getParameter("phone");
	boolean result = mMgr.checkPhone(phone);
%>
<html>
<head>
<title>��ȭ��ȣ �ߺ�üũ</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="white">
	<div align="center">
		<br/><b><%=phone%></b>
		<%
			if (result) {
				out.println("�� �̹� �����Ѵ� ��ȭ��ȣ�Դϴ�.<p/>");
			} else {
				out.println("�� ��� ���� �մϴ�.<p/>");
			}
		%>
		<a href="#" onClick="self.close()">�ݱ�</a>
	</div>
</body>
</html>