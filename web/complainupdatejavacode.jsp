<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String comId = request.getParameter("comId");
    String status = request.getParameter("status");

    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

    PreparedStatement st = con.prepareStatement("select * from complain where comId=?");
    st.setString(1, comId);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
            PreparedStatement st1 = con.prepareStatement("update  complain set status=? where comId=?");
            st1.setString(1, status);
            st1.setString(2, comId);
            st1.executeUpdate();
            response.sendRedirect("employeedashboard.jsp");
        
    } 
%>