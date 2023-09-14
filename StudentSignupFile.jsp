 <%@page import="java.lang.Long"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%           
            String emailId=request.getParameter("Email Id");
            
            String password=request.getParameter("Password");
            
            String fName=request.getParameter("First Name");
            
            String lName=request.getParameter("Last Name");
            
            String dob=request.getParameter("Date of Birth");
            
            String gender=request.getParameter("Gender");
            
            String cName=request.getParameter("College Name");
            
            String cNumber=request.getParameter("Number");
            
            String address=request.getParameter("Address");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            PreparedStatement st=con.prepareStatement("insert into studentinsertdata values(?,?,?,?,?,?,?,?,?)");
            st.setString(1,emailId);
            st.setString(2,password);
            st.setString(3,fName);
            st.setString(4,lName);
            st.setString(5,dob);
            st.setString(6,gender);
            st.setString(7,cName);
            st.setString(8,cNumber);
            st.setString(9,address);
            
            st.executeUpdate();
            session.setAttribute("CALL", emailId);
            response.sendRedirect("ShowStudent.jsp");
            
        %>