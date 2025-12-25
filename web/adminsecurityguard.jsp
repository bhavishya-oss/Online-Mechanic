<%
    response.addHeader("Pragma","no-Cache");    //name,value
    response.addHeader("Cache-Control", "no-Store");
    
    String name=(String)session.getAttribute("CALLA");
    if(name==null)
    {
    response.sendRedirect("authlogin.jsp");
    }
    if(session==null)
    {
    response.sendRedirect("authlogin.jsp");
    }
%>