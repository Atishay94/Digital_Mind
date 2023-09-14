
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%           
            String emailId=request.getParameter("Email Id");
            
            String password=request.getParameter("Password");
            
            String fName=request.getParameter("First Name");
            
            String lName=request.getParameter("Last Name");
            
            String cNumber=request.getParameter("Number");
            
            String cName=request.getParameter("College Name");
            
            String gender=request.getParameter("gender");
            
            String address=request.getParameter("Address");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            PreparedStatement st=con.prepareStatement("insert into teachersignup values(?,?,?,?,?,?,?,?)");
            st.setString(1,emailId);
            st.setString(2,password);
            st.setString(3,fName);
            st.setString(4,lName);
            st.setString(5,cNumber);
             st.setString(6,cName);
             st.setString(7,gender);
           st.setString(8,address);
           
            st.executeUpdate();
            session.setAttribute("CALL", emailId);
            response.sendRedirect("ShowTeacher.jsp");
            
        %>

<html>
     <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>    
    <title>FreeFound</title>
    <body style="background-image:url('wallpaperflare.jpg');background-repeat:no-repeat;width:100%;height:1000px ">
        
     <table width="100%" style="" method='post'>
       <tr align="center">
           <td class="tdtheme"><a href='homepage.jsp'><img src="homes.png"width="40px"height="40px"></a></td>
           <td class="tdtheme"><a href='usersignup.jsp'><img src="signup.png"width="50px"height="50px"></a></td>
            <td class="tdtheme"><a href='grouplogin.jsp'><img src="group1.png"width="50px"height="50px"></a></td>
          <!-- <td class="tdtheme"><a href='career.jsp'>career</a></td>-->
           <td class="tdtheme"><a href='passchange.jsp'><img src="resetpassword.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='Tnotes.jsp'><img src="book.jpg"width="50px"height="50px"></a></td>
          <!-- <td class="tdtheme"><a href='9993646722'>admission</a></td>-->
           
            <td class="tdtheme"><a href='ShowTeacher.jsp'><img src="profil.png"width="50px"height="50px"></a></td>
           <td class="tdtheme"><a href='destorysession.jsp'><img src="123.jpg"width="50px"height="50px"></a></td>
        </tr>
    </table> 
        <div style='margin-left:400px; padding-top:50px ;width:20px'>
          <font size="300px" color="blue">LAUNCHING</font>
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
        
        <form action="" >
            <div style="margin-top: -200px">
    <table  width="500px" border="0px" cellspacing="10" cellpadding="3" class="tabletheme" align="center"style="border-color: whitesmoke"> 
        <tr align="center"><td><img src="download (4).jpg"></td></tr>
    Welcome <%=session.getAttribute("CALL") %> 
    <th>Signup</th>
  <tr><td>Email-ID</td></tr>
    <tr><td><input type="text" placeholder="Enter Email/User I'd" class ="fieldtheme" name="Email Id"></td></tr>
        <tr><td>Password</td></tr>
    <tr><td><input type="password" placeholder="Enter Password" class="fieldtheme" name="Password"></td></tr>
        <tr><td>First-Name</td></tr>
    <tr><td><input type="text" placeholder="Enter First Name" class="fieldtheme" name="First Name"></td></tr>
    <tr><td>Last-Name</td></tr>
    <tr><td><input type="text" placeholder="Enter Last Name" class="fieldtheme" name="Last Name"></td></tr>
<tr><td>Number</td></tr>
    <tr><td><input type="text" placeholder="Enter Number" class="fieldtheme" name="Number"></td></tr>
<tr><td>Institude-Name</td></tr>
    <tr><td><input type="text" placeholder="Enter College Name" class="fieldtheme" name="College Name"></td></tr>
    <tr><td>Gender</td></tr>
    <tr><td><input type="text" placeholder="Enter Gender" class="fieldtheme" name="gender"></td></tr>
    <tr><td>Address</td></tr>
    <tr><td><input type="text" placeholder="Enter your Address" class="fieldtheme" name="Address"></td></tr>

        <tr><td><input type="submit" class="btntheme" value="signin">
    <input type="submit" class="btntheme" value="cancel"></td></tr>
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