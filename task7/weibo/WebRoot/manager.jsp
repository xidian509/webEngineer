<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>我的首页--随时分享身边新鲜事</title></head>
 <body background="Image/background.gif">
 <table width="80%" align="Center">
  <tr>
    <td ><font size="6">&nbsp;校园微博</font>==<span class="title1">西电学子</span>==我的首页 <a href="mylist.action?ID=<s:property value="#session.ID"/>">我的微博</a></td>
    <td style="width:400;height:20 vertical-align:middle;text-align:center;"><s:property value="#session.ID"/>&nbsp;你好！&nbsp;&nbsp;
    <a href="login.jsp">登录</a>&nbsp;|&nbsp;<a href="logout.jsp">退出</a></td>
  </tr>
</table>
  <table border="0" width="80%" align="left">
      <s:iterator value="users">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/><a href="fansPage.action?ID=<s:property value="ID"/>"><s:property value="ID"/></a>|</td>
         <td width="70%"><a href="deleteUser.action?ID=<s:property value="ID"/>">删除用户</a></td>  
       </tr>
       <tr>
       <td>.................</td><td>...........................................................</td>
       </tr>
   </s:iterator>
   <s:url id="url_pre" value="userlist.action">
         <s:param name="pageNow" value="pageNow-1"></s:param>
     </s:url>
     <s:url id="url_next" value="userlist.action">
         <s:param name="pageNow" value="pageNow+1"></s:param>
     </s:url>  
     <s:a href="%{url_pre}">上一页</s:a>
     
     <s:iterator value="weibos" status="status">
        <s:url id="url" value="pagelist.action">
            <s:param name="pageNow" value="pageNow"/>
        </s:url>
     </s:iterator>
     <s:a href="%{url_next}">下一页</s:a> 
   </table>
</body>
</html>
