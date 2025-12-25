<%
    response.addHeader("Pragma","no-Cache");    //name,value
    response.addHeader("Cache-Control", "no-Store");
    
    String name=(String)session.getAttribute("CALL");
    if(name==null)
    {
    response.sendRedirect("home.jsp");
    }
    if(session==null)
    {
    response.sendRedirect("home.jsp");
    }
%>