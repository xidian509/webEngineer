<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>�ҵ���ҳ--��ʱ��������������</title></head>
 <body background="Image/background.gif">
   <table width="80%" align="Center">
  <tr>
    <td ><font size="6">&nbsp;У԰΢��</font>==<span class="title1">����ѧ��</span>== <a href="pagelist.action">�ҵ���ҳ</a>   �ҵ�΢��</td>
    <td style="width:400;height:20 vertical-align:middle;text-align:center;"><s:property value="#session.ID"/>&nbsp;��ã�&nbsp;&nbsp;
    <a href="login.jsp">��¼</a>&nbsp;|&nbsp;<a href="logout.jsp">�˳�</a></td>
  </tr>
</table>
   �ҵķ�˿��<br/>
 <br>
 <table border="0" width="80%" align="left">
      <s:iterator value="myfans">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/></td>
         <td width="60%"><a href="fansPage.action?ID=<s:property value="ID"/>"><s:property value="ID"/></a>|</td>  
       </tr>
       <tr>
       <td>.................</td><td>...........................................................</td>
       </tr>
   </s:iterator>
   </table>
 </body>
 </html>