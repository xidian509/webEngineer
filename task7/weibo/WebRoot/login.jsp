<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>我的首页--随时分享身边新鲜事</title></head>
 <body background="Image/background.gif">
    <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr><td height="35">&nbsp;</td></tr>
 <tr><td height="1" align="center">
 <%
   String info=request.getParameter("info");
  if(("1").equals(info))
	  out.println("<font size=4 color='red'>用户名不存在，请重新登录！</font><br><br><br>");
  else if(("2").equals(info))
	  out.println("<font size=4 color='red'>用户名不存在，请重新登录！</font><br><br><br>");
  else
	  out.println("<font size=4 color='red'>请登录！</font><br><br><br>");
 %>
 
 
 </td></tr>
 <tr>
   <td align="center">
     <form method=post action="loginAction.action" name="form">
        <table border="1"  align="center" width="48%" height="200">
    <tr >
     <td colspan=2 height="44" align="center">欢迎登录系统</td>
    </tr>
    <tr>
     <td>用户名</td><td><input type="text" size="20" name="user.ID"/></td>
    </tr>
    <tr><td>密&nbsp;&nbsp;码</td><td><input type="password" size="20" name="user.password"/></td></tr>
    <tr>
    <td><input type="radio"  value="user" checked name="user.kind"/>user<input type="radio" name="user.kind" value="manager"/>manager</td>
    </tr>
    <tr > 
        <td colspan="2"><div align="center"> 
       
            <input type="submit"  value="登陆">
          </div></td>
      </tr>
     </table>
     </form>
   </td>
 </tr>
 </table>
 </body>
 </html>
 