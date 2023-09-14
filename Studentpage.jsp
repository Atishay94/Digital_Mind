<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String button1=request.getParameter("btn");
    int RESULT=0;
    int COUNT=0;
    if(button1!=null && button1.equals("Login"))
    {
    
String userid=request.getParameter("useridvalue");
String password=request.getParameter("passvalue");
//String firstname=request.getParameter("firstnameval");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "atishay");
PreparedStatement ft=con.prepareStatement("select*from studentinsertdata where EmailId=? and Password=?");

ft.setString(1, userid);
ft.setString(2, password);

ResultSet rs=ft.executeQuery();
if(rs.next()){
session.setAttribute("CALL",userid);
session.setAttribute("CALL1",password);

response.sendRedirect("student.jsp");


    }
    
    else{
    RESULT=1;
    }
}
%>
<html>
    
    <script>
        function check(){
            if(btn.useridvalue.value==0){
                alert("user-id field cannot be empty");
            }
            
            if(btn.passvalue.value==0){
                alert("password cannot be empty");
            }
        }
    </script> 
    <head>
        <link rel="stylesheet" href="homestyle.css">
    </head>
   
    <body background="wallpaperflare.jpg" background-repeat: no-repeat>
        
<form action="" name="btn">
    <table width="300px" border="0px" cellspacing="7px" cellpadding="5" class="tabletheme" align="center">
      <tr align="center" ><td><img src="student.png" style="width: 100%; height: 180px" ></tr></td>
    <tr>
        <td>
    <%
    if(button1!=null && RESULT==1){%>
    <font color="red">invalid user-id/password</font>
    <%}%></td>
    </tr>
   <tr><td><font color="blue">ID </font></td></tr>
   <tr><td><input type="text" name="useridvalue" placeholder=" enter your user-id" class="fieldtheme"></td></tr>
   
   <tr><td><font color="blue">Password </font> </td></tr>
 <tr><td>  <input type="password"  name="passvalue" placeholder="enter your password" class="fieldtheme"></td></tr>
   
   <tr align="center"><td><input type="submit" value="Login" class="btntheme" name="btn"  onclick="check()">
       
</table>
    
    
    
</form>
                <div align="center" style="color:white">or</div>
                <div align="center" style="color:white">don't have an account? Then SignUp</div>
                
                <form action="usersignup.jsp" name="btn1" method="post">
    <table width="300px" border="0px" cellspacing="7px" cellpadding="5" class="tabletheme" align="center">
     
   
   <tr align="center"><td><input type="submit" value="signup" class="btntheme" name="btn1"  onclick="check()">
       
</table>
    </form>