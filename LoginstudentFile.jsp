<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
            String email=request.getParameter("ID's");
            String password=request.getParameter("Password's");
            String post=request.getParameter("post");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            if(post.equals("admin"))
            {
            PreparedStatement st=con.prepareStatement("select* from loginstudent where EmailID=? and Password=? ");
            st.setString(1,email);
            st.setString(2,password);
           ResultSet rs=st.executeQuery();
           if(rs.next())
           {
            response.sendRedirect("homepage.jsp");
            }
        else{
        out.println("invalid id/password");
            }
        }
   
        if(post.equals("student"))
        {
        PreparedStatement st=con.prepareStatement("select* from loginstudent where EmailID=? and Password=? ");
            st.setString(1,email);
            st.setString(2,password);
           ResultSet rs=st.executeQuery();
           if(rs.next())
           {
            response.sendRedirect("StudentSignupFile.jsp");
        }else{
        out.println("invalid id/password");
            }
             }
   
         %> 