   
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
    String button1=request.getParameter("btn");
    int RESULT=0;
    int COUNT=0;
    if(button1!=null && button1.equals("Sumbit"))
    {
            String email=request.getParameter("ID's");
            String notes=request.getParameter("cnq");
              Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            PreparedStatement st=con.prepareStatement("select * from studentinsertdata where EmailId=? ");
            st.setString(1,email);
            ResultSet rs=st.executeQuery();
            
            if(rs.next()){
            PreparedStatement st1=con.prepareStatement("insert into notes value(?,?) ");
            st1.setString(1,notes);
            st1.setString(2,email);
           st1.executeUpdate();
             session.setAttribute("CALL",email);
            response.sendRedirect("student.jsp");
            }
            PreparedStatement st1=con.prepareStatement("select * from teachersignup where EmailId=? ");
            st1.setString(1,email);
            ResultSet rs1=st.executeQuery();
            
            if(rs1.next()){
            PreparedStatement st2=con.prepareStatement("insert into notes value(?,?) ");
            st2.setString(1,notes);
            st2.setString(2,email);
           st2.executeUpdate();
             session.setAttribute("CALL",email);
            response.sendRedirect("teacher.jsp");
            }
            
           
}
            %>

<html>
     <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>
    <title>DigitalMind</title>
    <body style="background-image:url('wallpaperflare.jpg');background-repeat:no-repeat;width:100%;">
        Welcome <%=session.getAttribute("CALL") %> 
     <table width="100%" style="">
       <tr align="center">
           <td class="tdtheme"><a href='homepage.jsp'><img src="homes.png"width="40px"height="40px"></a></td>
           <td class="tdtheme"><a href='career.jsp'>career</a></td>
           <td class="tdtheme"><a href='passchange.jsp'>Password change</a></td>
           <td class="tdtheme"><a href='homepage.jsp'>Sign-Out</a></td>
        </tr>
    </table> 
       
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
         
     <form action="" method="post">
             <div style="margin-top: -200px">
    <table  width="500px" border="0px" cellspacing="10" cellpadding="3" class="tabletheme" align="center"style="border-color: whitesmoke"> 
        <tr align="center"><td><img src="person.png"></td></tr>
  <tr><td>Enter Email I'd </td></tr>
    <tr><td><input type="text" placeholder="Enter User I'd" class ="fieldtheme" name="ID's"></td></tr>
<tr><td>Create your own Notes here  </td></tr>
<tr><td><textarea  placeholder="--Type Here.............." class ="fieldtheme" name="cnq" style="width: 95%; height: 500px"></textarea></td></tr>
              <tr align="center"><td><input type="submit" class="btntheme" name="btn" value="Sumbit">
    <input type="reset" class="btntheme" value="clear"></td></tr>
  </table>
                 </div>
 </form>
   
 </body>
</html>