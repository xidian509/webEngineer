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
  <form action="add.action" method="post">
     <table width="60%">
      <tr>
       <td><textarea rows="5" cols="100"name="weibo.content"></textarea></td><td><input type="hidden" name="weibo.ID" value="<s:property value="#session.ID"/>"/></td><td><input type="submit" value="发表微博"></td>
      </tr>
     </table>
    </form>
  <table width="90%">
  <tr><td width="70%"> <p align="left"><img src="Image/body.gif" alt="协同微博" width="800" height="220"/></p></td>
  <td><a href="fanslist.action">找找看都有谁</a></td>
  </tr>
  </table><br/>
   <hr align="left" width="60%" color="#990000" size="2"/>
   <table border="0" width="80%" align="left">
      <s:iterator value="weibos">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/><a href="fansPage.action?ID=<s:property value="ID"/>"><s:property value="ID"/></a>|</td>
         <td width="70%"><s:property value="content"/></td>  
       </tr>
       <tr>
       <td>.................</td><td>...........................................................</td>
       </tr>
   </s:iterator>
   <s:url id="url_pre" value="pagelist.action">
         <s:param name="pageNow" value="pageNow-1"></s:param>
     </s:url>
     <s:url id="url_next" value="pagelist.action">
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