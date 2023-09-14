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
            
            PreparedStatement st=con.prepareStatement("select* from studentinsertdata where EmailId=? and Password=?");
            st.setString(1,emailId);
            st.setString(2,oldPassword);
            ResultSet rs=st.executeQuery();
           if(rs.next())
           {
            if(newPass.equals(cNewPass))
        {
        PreparedStatement st1=con.prepareStatement(" update studentinsertdata set Password=? where EmailId=?");
            st1.setString(1,newPass);
            st1.setString(2,emailId);
           // st1.setString(2,emailId);
            st1.executeUpdate();
            session.setAttribute("CALL",emailId);
             response.sendRedirect("student.jsp");
            }
        else{
        out.println("new password and confirm new password doesn't match");
            }
        }
   
       else{
        out.println("invalid id/password");
            } 
      
        %>