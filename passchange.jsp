
<html>
     <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>
   <title>FreeFound</title>
    <body style="background-image:url('wallpaperflare.jpg');background-repeat:no-repeat;width:100%;">
        
     <table width="100%" style="">
       <tr align="center">
           <td class="tdtheme"><a href='student.jsp'><img src="homes.png"width="40px"height="40px"></a></td>
           <td class="tdtheme"><a href='usersignup.jsp'><img src="signup.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='passchange.jsp'><img src="resetpassword.png" width="  50px" height="50px"></a></td>
           <td class="tdtheme"><a href='ShowStudent.jsp'><img src="profil.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='grouplogin.jsp'><img src="group1.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='teacherlogin.jsp'><img src="teacher.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='destorysession.jsp'><img src="123.jpg"width="50px"height="50px"></a></td>
        </tr>
    </table> 
        <div style='margin-left:400px; padding-top:50px ;width:20px'>
            
    <font size="200px" color="blue">LAUNCHING</font>
               </div>
        <div style='margin-left:1300px;width:150px;height:200px;border: inset;color:blue'>
            <marquee direction='right' scrollamount='05'>
                <ul>
                    <li><a href='usersignup.jsp'>Signup</a> </li>
                    <li>Login</li>
                    <li>query</li>
                    <li>Content</li>
                    <li>Notes</li>
                    <li>Contact</li>
                    <li>Solution</li>
                    <li>SignOut</li>
                </ul>
             </marquee>
        </div>
        
    
            
        
        
         
        <form action="passchangecode.jsp" method="post" >
    <div style="margin-top: -200px">
    <table  width="500px" border="0px" cellspacing="10" cellpadding="3" class="tabletheme" align="center"> 
        <tr align="center"><td><img src="download (4).jpg"></td></tr>
    <th>Do you won a new password</th>
  <tr><td><font color="blue">ID </font></td></tr>
    <tr><td><input type="text" placeholder="Enter User I'd" class ="fieldtheme" name="Email Id"></td></tr>
        <tr><td><font color="blue">Old Password</font></td></tr>
    <tr><td><input type="password" placeholder="Enter Old Password" class="fieldtheme" name="oldpass"></td></tr>
        <tr><td><font color="blue">New Password </font></td></tr>
    <tr><td><input type="text" placeholder="Enter New Password" class="fieldtheme" name="newpass"></td></tr>
    <tr><td><font color="blue">Confirm Password </font></td></tr>
    <tr><td><input type="text" placeholder="Enter Confirm Password" class="fieldtheme" name="cnewpass"></td></tr>
    
        <tr><td><input type="submit" class="btntheme" value="change">
    <input type="reset" class="btntheme" value="cancle"></td></tr>
    Welcome <%=session.getAttribute("CALL") %> 
  </table>
 </form>
  </div>
        <div style='margin-right:100px;padding-down:800px;width: 100%'>
            <tr>
        <td colspane="2"><marquee direction="left" scrollamount="25"><img src="rqpancle.png" width="300px" height="150px"></marquee></td>
        </tr> 
        </div>
        
 </body>
 
</html>
