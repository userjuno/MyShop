<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mMgr" class="Bean.MemberMgr" />
<%@page import="Bean.MemberBean"%>
<%
	request.setCharacterEncoding("EUC-KR");
	
%>
<html>
<head>
<title>PW ã��</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="white">
	<div align="center">
		<br/><b></b>
		<%

		try{
			String pw = request.getParameter("pw");
			MemberBean mBean = mMgr.findPw(pw);

			if (mBean !=null) {
				out.println("ȸ������ ��й�ȣ��"+mBean.getPwd()+" �Դϴ�<p/>");
			} else {
				out.println("���̵� ���������ʽ��ϴ�.<p/>");
			}
		}
		catch(Exception e){
			out.println("���̵� ���������ʽ��ϴ�.<p/>");
		}
			
		%>

		<a href="#" onClick="self.close()">�ݱ�</a>
	</div>
</body>
</html>