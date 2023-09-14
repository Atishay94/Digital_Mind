    
<html>
    <%@page import="java.util.Date" %>
    <%@page import="java.text.DateFormat" %>
    <%@page import="java.text.SimpleDateFormat" %>
    <%@page import="static java.lang.System.out" %>
    <%
        Date date=new Date();
        DateFormat df=DateFormat.getDateInstance(DateFormat.LONG);
        out.print(df.format(date));
        out.print(date);
        //Date dTime=new Date(session.getCreationTime());    
//        SimpleDateFormat sdf=new SimpleDateFormat("E yyyy.MM.dd   'at '  hh:ss:mm a zzz");
//        out.println("<h2 align=\"center\">" + sdf.format(date)+"</h2>");
       %>
    <head>
        <link rel="stylesheet"href="homestyle.css">
    </head>
   <title>DigitalMind</title>
    
    <body style="background-image:url('study1.jpg');background-repeat:no-repeat;width:100%;">
      <div style='margin-left:550px; padding-top:0px ;width:20px'>
             <font size="300px" color="darkkhaki">DIGITALMIND</font>             
   </div>
     <table width="100%" style="background-color: darkkhaki">      
       <tr align="center">
           
       <td class="tdtheme"><a href='homepage.jsp'><img src="homes.png"width="50px"height="50px"></a></td>
       <td class="tdtheme"><a href='aboutus.jsp'><img src="aboutus.png"width="50px"height="50px"></a></td>
       <td class="tdtheme"><a href='Studentpage.jsp'><img src="student.png"width="50px"height="50px"></a></td>
       <td class="tdtheme"><a href='Techerpage.jsp'><img src="teacher.png"width="50px"height="50px"></a></td> 
        <td class="tdtheme"><a href='location.jsp'></a><img src="location.png" width="  50px" height="50px"></td> 
        <td class="tdtheme"><a href='mailto:glance.atishayjain917@gmail.com'><img src="mail1.png" width="  50px" height="50px"></a></td>
        
        </tr>
    </table>
       
     <div style='margin-left:1300px;width:150px;height:150px;border: inset;color:whitesmoke'>
  <marquee direction='up' scrollamount='03'>
                <ul>
                    
                    <li>query</li>
                    <li>Content</li>
                    <li>Notes</li>
                    <li>Contact</li>
                    <li>Solution</li>
                    <li>SignOut</li>
                    
                    
                    <!-- <td><h1 class="btntheme" class="ul ui"><a href='userlogin.jsp'>Login</a></h1></td>
<td><h1 class="btntheme"class="ul ui">
  <div align="justify"><a href='homepage.jsp'>Back-H</a></div>  </h1></td>
                    </li>-->
                    
                </ul>
             </marquee>
     </div>
        <table style="width: 100%; height: 100px" >
            <tr align="center" >
            <td class="tdtheme"><a href='location.jsp'><img src="location.png" width="  50px" height="50px"></a></td>
            <td class="tdtheme"><a href='location.jsp'><img src="location.png" width="  50px" height="50px"></a></td>
            <td class="tdtheme"><a href='location.jsp'><img src="location.png" width="  50px" height="50px"></a></td>
            </tr>
            <tr align="center">
            <td class="tbthemes"><a href='aboutus.jsp'><img src="aboutus.png"width="50px"height="50px"></a></td>
       <td class="tbthemes"><a href='Studentpage.jsp'><img src="student.png"width="50px"height="50px"></a></td>
       <td class="tbthemes"><a href='Techerpage.jsp'><img src="teacher.png"width="50px"height="50px"></a></td>b
            </tr>
            
        </table>
      
         <div style='margin-top:500px;padding-down:800px;width: 100%'>
            <tr>
            <td colspane="2"><marquee direction="left" scrollamount="20"><a href='teacherlogin.jsp'><img src="rqpancle.png" width="250px" height="150px"></a></marquee></td>
        </tr> 
        </div>
<!--      <input type="df.format(date)" style="margin-top:260px;margin-left: 1355px">
     <input type="date" style="margin-left: 1385px">-->
        
 </body>
</html>