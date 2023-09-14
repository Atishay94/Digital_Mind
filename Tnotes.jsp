   
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
            String name=request.getParameter("ID's");
            String notes=request.getParameter("cnq");
              Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            
            PreparedStatement st1=con.prepareStatement("insert into tnotes value(?) ");
            st1.setString(1,notes);
            
           st1.executeUpdate();
             session.setAttribute("CALL",name);
            response.sendRedirect("student.jsp");
            
           
}
            %>

<html>
     <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>
    <title>DigitalMind</title>
    <body style="background-image:url('wallpaperflare.jpg');background-repeat:no-repeat;width:100%;">
        Welcome <%=session.getAttribute("CALL") %> 
     <!--<table width="100%" style="">
       <tr align="center">
           <td class="tdtheme"><a href='teacher.jsp'><img src="homes.png"width="40px"height="40px"></a></td>
           <td class="tdtheme"><a href='career.jsp'>career</a></td>
           <td class="tdtheme"><a href='passchange.jsp'>Password change</a></td>
           <td class="tdtheme"><a href='homepage.jsp'><img src="123.jpg"width="50px"height="50px"></a></td>
        </tr>
    </table>--> 
       
        <div style='margin-left:1300px;width:150px;height:200px;border: inset;color:blue'>
            <marquee direction='right' scrollamount='02'>
                <ul>
                    <li><a href='teacher.jsp'>Home</a> </li>
                    <li><a href='Teacherpage.jsp'>Signup</a> </li>
                    <li><a href='Teacherpage.jsp'>Login</a></li>
                    <li><a href='mailto:glance.atishayjain917@gmail.com'>query</a></li>
                    <li><a href='Tnotes.jsp'>Content</a></li>
                    <li><a href='Tnotes.jsp'>Notes</a></li>
                    <li><a href='mailto:glance.atishayjain917@gmail.com'>Contact</a></li>
                    <li><a href='mailto:glance.atishayjain917@gmail.com'>Solution</a></li>
                    <li><a href='homepage.jsp'>SignOut</a></li>
                </ul>
             </marquee>
        </div>
         
     <form action="" method="post">
             <div style="margin-top: -200px">
    <table  width="500px" border="0px" cellspacing="10" cellpadding="3" class="tabletheme" align="center"style="border-color: whitesmoke"> 
        <tr align="center"><td><img src="teacher.png"width='150px'height='150px'></td></tr>
  <tr><td>Enter your Name </td></tr>
    <tr><td><input type="text" placeholder="Enter User I'd" class ="fieldtheme" name="ID's"></td></tr>
<tr><td>Create your own Notes here  </td></tr>
<tr><td><textarea  placeholder="--Type Here.............." class ="fieldtheme" name="cnq" style="width: 95%; height: 500px"></textarea></td></tr>
<!--<tr><td>old Notes  </td></tr>
<tr><td><textarea  placeholder="" class ="fieldtheme" name="cnq" style="width: 95%; height: 100px"></textarea><a href='ShowTnotes.jsp'>Old Notes</a></td></tr>
-->
              <tr align="center"><td><input type="submit" class="btntheme" name="btn" value="Sumbit">
    <input type="reset" class="btntheme" value="clear"></td></tr>
   <tr align="center"><td><input type="submit" class="btntheme" name="btn" value="Open"><a href='ShowTnotes.jsp'>Old Notes</a>
  </table>
                 </div>
 </form>
   
 </body>
</html>