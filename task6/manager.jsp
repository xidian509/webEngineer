<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>�ҵ���ҳ--��ʱ�������������</title></head>
 <body background="Image/background.gif">
 <table width="80%" align="Center">
  <tr>
    <td ><font size="6">&nbsp;У԰΢��</font>==<span class="title1">����ѧ��</span>==�ҵ���ҳ <a href="mylist.action?ID=<s:property value="#session.ID"/>">�ҵ�΢��</a></td>
    <td style="width:400;height:20 vertical-align:middle;text-align:center;"><s:property value="#session.ID"/>&nbsp;��ã�&nbsp;&nbsp;
    <a href="login.jsp">��¼</a>&nbsp;|&nbsp;<a href="logout.jsp">�˳�</a></td>
  </tr>
</table>
  <table border="0" width="80%" align="left">
      <s:iterator value="users">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/><a href="fansPage.action?ID=<s:property value="ID"/>"><s:property value="ID"/></a>|</td>
         <td width="70%"><a href="deleteUser.action?ID=<s:property value="ID"/>">ɾ���û�</a></td>  
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
     <s:a href="%{url_pre}">��һҳ</s:a>
     
     <s:iterator value="weibos" status="status">
        <s:url id="url" value="pagelist.action">
            <s:param name="pageNow" value="pageNow"/>
        </s:url>
     </s:iterator>
     <s:a href="%{url_next}">��һҳ</s:a> 
   </table>
</body>
</html>
