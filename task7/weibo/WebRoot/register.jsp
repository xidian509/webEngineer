<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>�ҵ���ҳ--��ʱ�������������</title></head>
 <body background="Image/background.gif">
 <script language=javascript>

  function checkform(){
	  if(form.name.value==""){
		  alert("");
	  }
	  if(form.password.value==""){
		  alert("");
	  }
	  if((form.rpassword.value)!=(form.password.value)){
		  alert("");
	  }
	  else{
		  form.sumit();
	  }
 }
 
</script>
<style>
	#submit{
		align:center;
	}
</style>
<table width="80%" align="Center">
  <tr>
    <td ><font size="6">&nbsp;������Ϣ����</font>==<span class="title1">����ѧ��</span>==</td>
  </tr>
 </table>
 <hr align="center" width="80%" color="#990000" size="3"/>
 <br/>
<br/>
<font size="3" ><center>��ĸ�������</center>
<br/>
</font>
<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
     <tr>
       <td height="5">&nbsp;</td>
     </tr>
      <tr> 
      <td><div align="center"><font size=3><Strong>�޸���Ϣ</Strong></font><br/><hr width="80%" size="1"></div></td>
     </tr>
     <tr>
       <td>
         <form method=post action="registerAction.action" name="form">
             <table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr height="30">
                   <td width="20%" align="right">&nbsp;�û���:</td>
                   <td width="40%" align="left">&nbsp;<input type="text" name="user.ID" size="15"/>&nbsp;</td>
                   <td width="40" align="left">&nbsp;<font color="#0099FF">��������Ϊ��</font></td>
               </tr>
               <tr height="30">
                  <td width="20%"  align="right">&nbsp;����:</td>
                  <td width="40%" align="left">&nbsp;<input type="password" name="user.password" size="15"/>&nbsp;</td>
                  <td width="40%" align="left">&nbsp;<font color="#0099FF">���벻��Ϊ��</font></td>
                </tr>
                <tr height="30">
                   <td width="20%" align="right">&nbsp;ȷ�����룺</td>
                   <td width="40%" align="left">&nbsp;<input type="password" name="rpassword" size="15">&nbsp;</td>
                   <td width="40%" align="left">&nbsp;</td>
                </tr>
                <tr height="30">
                   <td width="20%" align="right">&nbsp;����:</td>
                   <td width="40%" align="left">&nbsp;<input type="text" name="user.name" size="15"/></td>
                   <td width="40%" align="left">&nbsp;</td>
                </tr>
                <tr height="30">
                    <td width="20%" align="right">&nbsp;�Ա�:</td>
                    <td width="40%" align="left">&nbsp;
                      <input type="radio" name="user.sex" value="��" checked/>��
                      <input type="radio" name="user.sex" value="Ů"/>Ů
                    </td>
                    <td width="40%" align="left"> &nbsp;</td>
                 </tr>
                 <tr height="30">
                   <td width="20%" align="right">&nbsp;����:</td>
                   <td width="40%" align="left">&nbsp;
                     <input type="text" size="10" name="user.age"/>
                     </td>
                     <td width="40%" align="left">&nbsp;</td>
                  </tr>
                 <tr height="30">
                   <td width="20%" align="right" >&nbsp;����:</td>
                   <td width="40%" align="left">&nbsp;
                   <input size="10" name="user.jiguan">
                   </td>
                </tr>
                <tr>
                  <td colspan=3 align="center"><hr width="80%" size="1"/></td>
                </tr>
                <tr height="30" align="center" id="submit">
                 <td width="20%" align="center"><input type="submit" value="ȷ��" id="ok"/></td>
                 <td width="20%" align="center"><input type="reset"   value="ȡ��" id="cancle"/></td>
                </tr>   
            </table>           
         </form onsubmit="checkform">
       </td>
     </tr>
  </table>
 
 </body>
 </html>