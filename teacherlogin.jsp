   
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
    String button1=request.getParameter("btn");
    int RESULT=0;
    int COUNT=0;
    if(button1!=null && button1.equals("Login"))
    {
            String email=request.getParameter("ID's");
            String password=request.getParameter("Password's");
              Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            PreparedStatement st=con.prepareStatement("select* from teachersignup where EmailId=? and Password=? ");
            st.setString(1,email);
            st.setString(2,password);
           ResultSet rs=st.executeQuery();
           if(rs.next())
           {
             session.setAttribute("CALL",email);
            response.sendRedirect("teacher.jsp");
            }
        else{
        RESULT=1;
            }
}
            %>

<html>
     <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>
    <title>FreeFound</title>
    <body style="background-image:url('wallpaperflare.jpg');background-repeat:no-repeat;width:100%;">
        Welcome <%=session.getAttribute("CALL") %> 
     <table width="100%" style="">
       <tr align="center">
           <td class="tdtheme"><a href='teacher.jsp'><img src="homes.png"width="40px"height="40px"></a></td>
           <!--<td class="tdtheme"><a href='career.jsp'>career</a></td>-->
            <td class="tdtheme"><a href='grouplogin.jsp'><img src="group1.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='passchange.jsp'><img src="resetpassword.png" width="  50px" height="50px"></a></td>
          <td class="tdtheme"><a href='destorysession.jsp'><img src="123.jpg"width="50px"height="50px"></a></td>
        </tr>
    </table> 
       
        <div style='margin-left:1300px;width:150px;height:200px;border: inset;color:blue'>
            <marquee direction='right' scrollamount='05'>
                <ul>
                    <li><a href='usersignup.jsp'>Signup Student</a> </li>
                    <li><a href='userlogin.jsp'>Student Login</li>
                    <li>query</li>
                    <li>Content</li>
                    <li>Notes</li>
                    <li>Contact</li>
                    <li>Solution</li>
                    <li>SignOut</li>
                </ul>
             </marquee>
        </div>
         
     <form action="" method='post'>
            <div style="margin-top: -200px">
    <table  width="500px" border="0px" cellspacing="10" cellpadding="3" class="tabletheme" align="center" style="border-color: white"> 
        <tr align="center"><td><img src="teacher.png"></td></tr>
  <tr><td>Email-Id</td></tr>
    <tr><td><input type="text" placeholder="Enter User I'd" class ="fieldtheme" name="ID's"></td></tr>
        <tr><td>Password</td></tr>
    <tr><td><input type="password" placeholder="Enter Password" class="fieldtheme" name="Password's"></td></tr>
              <tr><td><input type="submit" class="btntheme" name="btn" value="Login">
    <input type="reset" class="btntheme" value="cancel"></td></tr>
  </table>
                </div>  
 </form>
   
 </body>
</html>