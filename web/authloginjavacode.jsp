<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId = request.getParameter("uId");
    String password = request.getParameter("pass");
    String post = request.getParameter("post");

    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
    if (post.equalsIgnoreCase("operator")) 
    {
        PreparedStatement st = con.prepareStatement("select * from operator where opId=? and opPassword=?");
        st.setString(1, userId);
        st.setString(2, password);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            session.setAttribute("CALLO",userId);
            response.sendRedirect("operatordashboard.jsp");
        } else {
            out.println("invalid id/password");
        }
    }
    
    
    if (post.equalsIgnoreCase("admin")) 
    {
        PreparedStatement st = con.prepareStatement("select * from admin where adminId=? and adminPass=?");
        st.setString(1, userId);
        st.setString(2, password);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
                session.setAttribute("CALLA",userId);
                response.sendRedirect("admindashboard.jsp");
        } else {
            out.println("invalid id/password");
        }
    }
    

    if (post.equalsIgnoreCase("employee")) 
    {
        PreparedStatement st = con.prepareStatement("select * from employee where empId=? and password=?");
        st.setString(1, userId);
        st.setString(2, password);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
                session.setAttribute("CALLE",userId);
                response.sendRedirect("employeedashboard.jsp");
        } else {
            out.println("invalid id/password");
        }
    }

%>