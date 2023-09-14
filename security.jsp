<%
response.addHeader("Pragma","no-Cache");
response.addHeader("Cache-control","no-store");
response.setHeader("Pragma","no-Cache");
response.setHeader("Cache-control","no-store");
String name=(String)session.getAttribute("CALL");

if(session==null)
{
response.sendRedirect("homepage.jsp");
}
if(name==null)
{
response.sendRedirect("homepage.jsp");
}

%>