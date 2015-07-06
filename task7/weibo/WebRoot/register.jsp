<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
 <head><title>我的首页--随时分享身边新鲜事</title></head>
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
    <td ><font size="6">&nbsp;个人信息更改</font>==<span class="title1">西电学子</span>==</td>
  </tr>
 </table>
 <hr align="center" width="80%" color="#990000" size="3"/>
 <br/>
<br/>
<font size="3" ><center>你的个人资料</center>
<br/>
</font>
<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
     <tr>
       <td height="5">&nbsp;</td>
     </tr>
      <tr> 
      <td><div align="center"><font size=3><Strong>修改信息</Strong></font><br/><hr width="80%" size="1"></div></td>
     </tr>
     <tr>
       <td>
         <form method=post action="registerAction.action" name="form">
             <table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr height="30">
                   <td width="20%" align="right">&nbsp;用户名:</td>
                   <td width="40%" align="left">&nbsp;<input type="text" name="user.ID" size="15"/>&nbsp;</td>
                   <td width="40" align="left">&nbsp;<font color="#0099FF">姓名不能为空</font></td>
               </tr>
               <tr height="30">
                  <td width="20%"  align="right">&nbsp;密码:</td>
                  <td width="40%" align="left">&nbsp;<input type="password" name="user.password" size="15"/>&nbsp;</td>
                  <td width="40%" align="left">&nbsp;<font color="#0099FF">密码不能为空</font></td>
                </tr>
                <tr height="30">
                   <td width="20%" align="right">&nbsp;确认密码：</td>
                   <td width="40%" align="left">&nbsp;<input type="password" name="rpassword" size="15">&nbsp;</td>
                   <td width="40%" align="left">&nbsp;</td>
                </tr>
                <tr height="30">
                   <td width="20%" align="right">&nbsp;姓名:</td>
                   <td width="40%" align="left">&nbsp;<input type="text" name="user.name" size="15"/></td>
                   <td width="40%" align="left">&nbsp;</td>
                </tr>
                <tr height="30">
                    <td width="20%" align="right">&nbsp;性别:</td>
                    <td width="40%" align="left">&nbsp;
                      <input type="radio" name="user.sex" value="男" checked/>男
                      <input type="radio" name="user.sex" value="女"/>女
                    </td>
                    <td width="40%" align="left"> &nbsp;</td>
                 </tr>
                 <tr height="30">
                   <td width="20%" align="right">&nbsp;年龄:</td>
                   <td width="40%" align="left">&nbsp;
                     <input type="text" size="10" name="user.age"/>
                     </td>
                     <td width="40%" align="left">&nbsp;</td>
                  </tr>
                 <tr height="30">
                   <td width="20%" align="right" >&nbsp;籍贯:</td>
                   <td width="40%" align="left">&nbsp;
                   <input size="10" name="user.jiguan">
                   </td>
                </tr>
                <tr>
                  <td colspan=3 align="center"><hr width="80%" size="1"/></td>
                </tr>
                <tr height="30" align="center" id="submit">
                 <td width="20%" align="center"><input type="submit" value="确认" id="ok"/></td>
                 <td width="20%" align="center"><input type="reset"   value="取消" id="cancle"/></td>
                </tr>   
            </table>           
         </form onsubmit="checkform">
       </td>
     </tr>
  </table>
 
 </body>
 </html>