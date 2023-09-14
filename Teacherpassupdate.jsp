 <%@page import="java.lang.Long"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%           
            String emailId=request.getParameter("Email Id");
            
            String oldPassword=request.getParameter("oldpass");
            
            String newPass=request.getParameter("newpass");
            
            String cNewPass=request.getParameter("cnewpass");
            
            
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            PreparedStatement st=con.prepareStatement("select* from teachersignup where EmailId=? and Password=?");
            st.setString(1,emailId);
            st.setString(2,oldPassword);
            ResultSet rs=st.executeQuery();
           if(rs.next())
           {
            if(newPass.equals(cNewPass))
        {
        PreparedStatement st1=con.prepareStatement(" update teachersignup set Password=? where EmailId=?");
            st1.setString(1,newPass);
            st1.setString(2,emailId);
           // st1.setString(2,emailId);
            st1.executeUpdate();
            session.setAttribute("CALL",emailId);
             response.sendRedirect("teacher.jsp");
            }
        else{
        out.println("new password and confirm new password doesn't match");
            }
        }
   
       else{
        out.println("invalid id/password");
            } 
      
        %>
<html>
     <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>
   <title>DigitalMind</title>
    <body style="background-image:url('wallpaperflare.jpg');background-repeat:no-repeat;width:100%;">
        
     <table width="100%" style="">
       <tr align="center">
           <td class="tdtheme"><a href='teacher.jsp'><img src="homes.png"width="40px"height="40px"></a></td>
           <td class="tdtheme"><a href='usersignup.jsp'><img src="signup.png"width="50px"height="50px"></a></td>
           
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
        
    
            
        
        
         
        <form action="" method="post" >
    <div style="margin-top: -200px">
    <table  width="500px" border="0px" cellspacing="10" cellpadding="3" class="tabletheme" align="center"> 
        <tr align="center"><td><img src="teacher.png"></td></tr>
    <th>Do you won a new password</th>
  <tr><td>Email-Id</td></tr>
    <tr><td><input type="text" placeholder="Enter User I'd" class ="fieldtheme" name="Email Id"></td></tr>
        <tr><td>Old Password</td></tr>
    <tr><td><input type="password" placeholder="Enter Old Password" class="fieldtheme" name="oldpass"></td></tr>
        <tr><td>New Password</td></tr>
    <tr><td><input type="text" placeholder="Enter New Password" class="fieldtheme" name="newpass"></td></tr>
    <tr><td>Confirm Password</td></tr>
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
