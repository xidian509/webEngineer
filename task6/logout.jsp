<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>我的首页--随时分享身边新鲜事</title></head>
 <body background="Image/background.gif">

  <%
     session.removeAttribute("ID");
    response.sendRedirect("login.jsp");
    %>

 </body>
 </html>
 