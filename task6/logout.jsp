<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>�ҵ���ҳ--��ʱ�������������</title></head>
 <body background="Image/background.gif">

  <%
     session.removeAttribute("ID");
    response.sendRedirect("login.jsp");
    %>

 </body>
 </html>
 