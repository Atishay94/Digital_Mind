
<%@page import="java.sql.PreparedStatement, java.sql.Connection,java.sql.DriverManager"%>
                   <%@page import="java.sql.ResultSet, java.util.ArrayList"%>
                   <%
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
                   PreparedStatement st=con.prepareStatement("select * from complain");
                   ResultSet rs=st.executeQuery();
                   ArrayList list1=new ArrayList();
                  
                   while(rs.next())
                   {
                    list1.add(rs.getString(2));
                    
                    
                   }
                   
           %>
<html>
    <head>
        <link rel="stylesheet" href="homestyle.css">
    </head>
    <body>
       
       
       <form action="" method='post'>
           
           
           <table class="tabletheme" cellspacing="10" cellpadding="5" align="center">
               <tr >
                   <td>Student</td>
                  <td>
                       <%
                           for(int i=0;i<list1.size();i++)
                           {
                           %>
                       <tr align="center">
                           <td><%=list1.get(i)%></td>
                       </tr>
                       <%}
                       %>
                   </td>
               </tr>  
               Welcome <%=session.getAttribute("CALL") %> 
            </table>
</form>
    </body>
</html>