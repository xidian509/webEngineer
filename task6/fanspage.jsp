 <%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>У԰΢��--��ʱ�������������</title></head>
 <body background="Image/background.gif">
 <table width="80%" align="Center">
  <tr>
    <td ><font size="3">&nbsp;У԰΢��</font>==<span class="title1">==</span>== <a href="pagelist.action">�����ҵ���ҳ</a></td>
    <td style="width:400;height:20 vertical-align:middle;text-align:center;"><s:property value="#session.ID"/>&nbsp;��ã�&nbsp;&nbsp;
    <a href="login.jsp">��¼</a>&nbsp;|&nbsp;<a href="logout.jsp">�˳�</a></td>
  </tr>
</table>
<h1 align="center"><font size="6"><s:property value="ID"/>����ҳ</font></h1>
 <table width="75%" border="0">
 <tr>
 <td>
  <p align="center"><img src="Image/logo.gif" alt="Эͬ΢��" width="800" height="220"/></p>
  </td>
  <td><img src="Image/head.gif" width="90" height="90"/></td>
     
  </tr>
  </table>
   <hr align="left" width="60%" color="#990000" size="2"/>
   <table border="0" width="80%" align="left">
      <s:iterator value="myweibos">
       <tr height="150">
         <td width="30%"><img src="Image/head.gif" width="90" height="90"/></td>
         <td width="60%"><s:property value="content"/></td>  
       </tr>
       <tr>
       <td>.................</td><td>...........................................................</td>
       </tr>
   </s:iterator>
   </table>
   </body>
   </html>