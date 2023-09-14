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
            response.sendRedirect("homepage.jsp");
            }
        else{
        RESULT=1;
            }
   
         %> 