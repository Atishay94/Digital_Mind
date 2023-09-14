

<html>
    <!-- <script>
        function fun(){
            if(btn.Gender.value==0){
                alert("please specify your gender");
            }
        }
    </script> -->
     <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>    
    <title>FreeFound</title>
    <body style="background-image:url('wallpaperflare.jpg');background-repeat:no-repeat;width:100%;height:1000px ">
        <!--
     <table width="100%" style="">
       <tr align="center">
           <td class="tdtheme"><a href='student.jsp'><img src="homes.png"width="40px"height="40px"></a></td>
           <td class="tdtheme"><a href='usersignup.jsp'><img src="signup.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='about.jsp'><img src="aboutus.png"width="50px"height="50px"></a></td>
           <!--  <td class="tdtheme"><a href='career.jsp'>career</a></td>

           <td class="tdtheme"><a href='passchange.jsp'><img src="resetpassword.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='Snote.jsp'><img src="book.jpg"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='grouplogin.jsp'><img src="group1.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='teacherlogin.jsp'><img src="teacher.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='ShowStudent.jsp'><img src="profil.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='destorysession.jsp'><img src="123.jpg"width="50px"height="50px"></a></td>
        </tr>
    </table> 
    -->
        <div style='margin-left:600px; padding-top:-50px ;width:20px'>
          <font size="300px" color="white">DigitalMind</font>
               </div>
        <div style='margin-left:0px;width:150px;height:200px;border: solid orange;color:blue'>
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
        
    <form action="StudentSignupFile.jsp" method='post' >
            <div style="margin-top: -220px">
    <table  width="500px" border="0px" cellspacing="10" cellpadding="3" class="tabletheme" align="center"style="border-color: whitesmoke"> 
        <tr align="center"><td><img src="signup.png" style="width:100px;height:100px"></td></tr>
    Welcome <%=session.getAttribute("CALL") %> 
    <th>Signup</th>
  <tr><td>Email-Id</td></tr>
    <tr><td><input type="text" placeholder="Enter User I'd" class ="fieldtheme" name="Email Id"></td></tr>
        <tr><td>Password</td></tr>
    <tr><td><input type="password" placeholder="Enter Password" class="fieldtheme" name="Password"></td></tr>
        <tr><td>First-Name</td></tr>
    <tr><td><input type="text" placeholder="Enter First Name" class="fieldtheme" name="First Name"></td></tr>
    <tr><td>Last-Name</td></tr>
    <tr><td><input type="text" placeholder="Enter Last Name" class="fieldtheme" name="Last Name"></td></tr>
    <tr><td>Date-of-Birth</td></tr>
    <tr><td><input type="text" placeholder="Enter Date Of birth" class="fieldtheme" name="Date of Birth"></td></tr>
    <tr><td>Enter Gender</td></tr>
    <tr><td><select name="Gender" class="btntheme">
        <option value="male">male</option>
        <option value="female">female</option>
        <option value="other">other</option>
        </select></td></tr>
    
    <tr><td>Enter Class</td></tr>
    <tr><td><input type="text" placeholder="Enter Your Class" class="fieldtheme" name="College Name"></td></tr>
    <tr><td>Number</td></tr>
    <tr><td><input type="text" placeholder="Enter Number" class="fieldtheme" name="Number"></td></tr>
    <tr><td>Address</td></tr>
    <tr><td><input type="text" placeholder="Enter your Address" class="fieldtheme" name="Address"></td></tr>
        
    <tr align="center">
    <td><input type="submit" value="signup" class="btntheme" name="btn" onclick="fun()"></td></tr>
   </table>
 
 </div>
      <div style='margin-right:100px;padding-down:800px;width: 100%'>
            <tr>
        <td colspane="2"><marquee direction="left" scrollamount="05"><img src="rqpancle.png" width="300px" height="150px"></marquee></td>
        </tr> 
        </div>
   </form>
         </body>
</html>