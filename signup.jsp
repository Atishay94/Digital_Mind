<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%
    String button1=request.getParameter("bt1");
    String button2=request.getParameter("bt2");
    if(button2!=null && button2.equals("signup"))
    {
    response.sendRedirect("LoginstudentFile.jsp");
    }
    
    
    String emailid=request.getParameter("idvalue");
    String password=request.getParameter("passvalue");
    String post=request.getParameter("post");
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
       
if(post.equals("student"))
       {
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from studentinsertdata where EmailId=? and Password=? and st=?" );
        st.setString(1,emailid);
        st.setString(2,password);
        st.setString(3,post);
        ResultSet rs= st.executeQuery();
        if (rs.next())
        {
        Cookie ck=new Cookie("dyn",emailid);
        ck.setMaxAge(10000);
        response.addCookie(ck);
        session.setAttribute("CALL",emailid);
        response.sendRedirect("usersignup.jsp");
        }
        else
        {
        response.sendRedirect("homepage.jsp");
        }
}
if(post.equals("teacher"))
       {
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from teachersignup where EmailId=? and Password=? and st=?");
        st.setString(1,emailid);
        st.setString(2,password);
        st.setString(3,post);
        ResultSet rs= st.executeQuery();
        if (rs.next())
        {
        Cookie ck=new Cookie("dyn",emailid);
        ck.setMaxAge(10000);
        response.addCookie(ck);
        session.setAttribute("CALL",emailid);
        response.sendRedirect("teacherlogin.jsp");
        }
        else
        {
        response.sendRedirect("homepage.jsp");
        }
}

%>

<html>
    <head>
        <title>EASE Transport</title>
      <link rel="stylesheet" href="style.css">
    </head> 

    <body>

            <form action=''>
            <table  width="200px" border="0px" cellspacing="10" cellpadding="5" class="signupform" align="center" >
                <tr align="center">
                    <td><img src="person.png" height="80px" width="80px" align="center"></td>
                </tr>
                <tr><td>Id</td></tr> 
                <tr><td><input type="text" placeholder="Enter User Id" class="fieldtheme" name="aidvalue"></td></tr> 
                <tr><td>Password</td></tr> 
                <tr><td><input type="password" placeholder="Enter Password" class="fieldtheme" name="apassvalue"></td></tr>
                <tr><td><%if(button1!=null && COUNT==1)
                {%>
                <font color="red">Invalid password</font>
                <%}%></td></tr>
                <tr><td><%if(button1!=null && RESULT==1)
                {%>
                <font color="red"></font>User name or password Required!!
                <%}%></td></tr>

                 <tr><td><input type="submit" class="btntheme1" value="Login" align="center" name="btnvalue" ><a href="DestroySession.jsp"></a></td></tr> 
                 Welcome <%=session.getAttribute("CALL") %>           
            </table>
        </form>
 Welcome <%=session.getAttribute("CALL") %> 
    </body>
</html>

