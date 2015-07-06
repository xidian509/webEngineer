<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>我的首页--随时分享身边新鲜事</title></head>
 <body background="Image/background.gif">
   <table width="80%" align="Center">
  <tr>
    <td ><font size="6">&nbsp;校园</font>==<span class="title1">西电学子</span>== <a href="pagelist.action">我的首页</a>   我的微博</td>
    <td style="width:400;height:20 vertical-align:middle;text-align:center;"><s:property value="#session.ID"/>&nbsp;你好！&nbsp;&nbsp;
    <a href="login.jsp">登录</a>&nbsp;|&nbsp;<a href="logout.jsp">退出</a></td>
  </tr>
</table>
   我关注的好友：<br/>
 <br>
 <table border="0" width="80%" align="left">
      <s:iterator value="mycons">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/></td>
         <td width="60%"><a href="fansPage.action?ID=<s:property value="C_ID"/>"><s:property value="C_ID"/></a>|</td>  
         <td><a href="fansdelete.action?num=<s:property value="num"/>">删除</a> |</td>
       </tr>
       <tr>
       <td>.................</td><td>...........................................................</td>
       </tr>
   </s:iterator>
   </table>
  </body>
</html>
