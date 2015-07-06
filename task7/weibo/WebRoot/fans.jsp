<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>我的首页--随时分享身边新鲜事</title></head>
 <body background="Image/background.gif">
   <table width="80%" align="Center">
  <tr>
    <td ><font size="6">&nbsp;校园微博</font>==<span class="title1">西电学子</span>== <a href="pagelist.action">我的首页</a>   我的微博</td>
    <td style="width:400;height:20 vertical-align:middle;text-align:center;"><s:property value="#session.ID"/>&nbsp;你好！&nbsp;&nbsp;
    <a href="login.jsp">登录</a>&nbsp;|&nbsp;<a href="logout.jsp">退出</a></td>
  </tr>
</table>
  这里有你感兴趣的人吧，关注ta吧！！！：<br/>
 <br>
 <table border="0" width="80%" align="left">
      <s:iterator value="fans">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/></td>
         <td width="60%"><a href="fansPage.action?ID=<s:property value="ID"/>"><s:property value="ID"/></a>|</td>  
      <td> 
       <form action="fansadd.action" method="post">
	   <table border="0">
	   <tr>
	    <td><input type="hidden" name="fans.C_ID" value=""/></td>
	     <td><input type="hidden" name="fan.C_ID" value="<s:property value="ID"/>"/></td>
	     <td><input type="hidden" name="fan.ID" value="<s:property value="#session.ID"/>"/></td>
	     <td><input type="submit" value="关注ta"/></td>
	    </tr>
	    </table>
	  </form>
	</td>
       </tr>
       <tr>
       <td>.................</td><td>...........................................................</td>
       </tr>
   </s:iterator>
   </table>
 </body>
 </html>