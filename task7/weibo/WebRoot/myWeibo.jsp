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
 <table width="75%" border="0">
 <tr>
 <td>
  <p align="center"><img src="Image/logo.gif" alt="协同微博" width="800" height="220"/></p>
  </td>
  <td><img src="Image/head.gif" width="90" height="90"/></td>
  <td><a href="myfans.action?C_ID=<s:property value="#session.ID"/>">粉丝|</a>
   <a href="mycons.action?ID=<s:property value="#session.ID"/>">关注</a></td>
  </tr>
  </table>
   <hr align="left" width="60%" color="#990000" size="2"/>
   <table border="0" width="80%" align="left">
      <s:iterator value="myweibos">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/></td>
         <td width="60%"><s:property value="content"/></td>  
         <td><a href="delete.action?num=<s:property value="num"/>">删除</a>|</td>
       </tr>
       <tr>
       <td>.................</td><td>...........................................................</td>
       </tr>
   </s:iterator>
   </table>
   </body>
   </html>