<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mMgr" class="Bean.MemberMgr" />
<%@page import="Bean.MemberBean"%>
<html>
<head>
<title>ID ã��</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="white">
	<div align="center">
		
		
		<%
		
		request.setCharacterEncoding("EUC-KR");
		try{
			String id = request.getParameter("id");
			MemberBean mBean = mMgr.findId(id);
			if (mBean !=null) {
				out.println("ȸ������ ���̵��"+mBean.getId()+" �Դϴ�<p/>");
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