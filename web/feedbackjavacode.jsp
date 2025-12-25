<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>

<%
        String fullName = request.getParameter("fNm");
        String contact = request.getParameter("contact");
        String feedback = request.getParameter("feedback");
        Date date = new Date();
        DateFormat df = DateFormat.getDateInstance(DateFormat.FULL);
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        
        PreparedStatement st = con.prepareStatement("insert into feedback (fullName, contact, feedback, date) values(?,?,?,?)");
        st.setString(1, fullName);
        st.setString(2, contact);
        st.setString(3, feedback);
        st.setString(4, df.format(date));
        st.executeUpdate();
        response.sendRedirect("home.jsp");
%>