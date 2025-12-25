<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
        String fullName = request.getParameter("fNm");
        String userId = request.getParameter("uId");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String emailId = request.getParameter("eId");
        String city = request.getParameter("city");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        
        PreparedStatement st = con.prepareStatement("update signup set fullname=?,gender=?,address=?,contact=?,mailId=?,city=? where userId=?");
        st.setString(1, fullName);
        st.setString(2, gender);
        st.setString(3, address);
        st.setString(4, contact);
        st.setString(5, emailId);
        st.setString(6, city);
        st.setString(7, userId);
        st.executeUpdate();
        response.sendRedirect("userdashboard.jsp");
    
    
%>