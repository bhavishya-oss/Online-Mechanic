<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String fullName = request.getParameter("fNm");
    String adminId = request.getParameter("aId");
    String password = request.getParameter("pass");
    String cpassword = request.getParameter("cpass");
    if(password.equals(cpassword))
    {
        String gender = request.getParameter("gen");
        String orgname = request.getParameter("orgname");
        String orgaddress = request.getParameter("orgaddress");
        String contact = request.getParameter("contact");
        String emailId = request.getParameter("eId");
        String city = request.getParameter("city");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        
        PreparedStatement st = con.prepareStatement("insert into admin values(?,?,?,?,?,?,?,?,?)");
        st.setString(1, fullName);
        st.setString(2, adminId);
        st.setString(3, password);
        st.setString(4, gender);
        st.setString(5, orgname);
        st.setString(6, orgaddress);
        st.setString(7,contact);
        st.setString(8, emailId);
        st.setString(9, city);
        st.executeUpdate();
        response.sendRedirect("operatordashboard.jsp");
    }
    
    else
    {
        out.println("password and confirm password does not match!!!");
    }
%>