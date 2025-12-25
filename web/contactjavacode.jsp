<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String fullName = request.getParameter("fNm");
    String contact = request.getParameter("contact");
    String purpose = request.getParameter("purpose");
   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        
        PreparedStatement st = con.prepareStatement("insert into contact values(?,?,?)");
        st.setString(1, fullName);
        st.setString(2, contact);
        st.setString(3, purpose);
        st.executeUpdate();
        response.sendRedirect("contact.jsp");
%>