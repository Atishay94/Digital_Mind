<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
            String email=request.getParameter("ID's");
            String password=request.getParameter("Password's");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            PreparedStatement st=con.prepareStatement("select* from studentinsertdata where EmailID=? and Password=? ");
            st.setString(1,email);
            st.setString(2,password);
           ResultSet rs=st.executeQuery();
           if(rs.next())
           {
          
            response.sendRedirect("student.jsp");
            }
        else{
        out.println("invalid id/password");
            }
   
       
   
         %> 