<html>
    <head>
        <link  href="style.css" rel="stylesheet"/>
    </head>
    <%@page  import="java.sql.DriverManager" %>
    <%@page  import="java.sql.PreparedStatement" %>
    <%@page  import="java.sql.Connection" %>
    <%@page  import="java.util.ArrayList" %>
    <%@page  import="java.sql.ResultSet" %>

    <%
        
        Class.forName("com.mysql.jdbc.Driver");

        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

        PreparedStatement st= con.prepareStatement("select * from complain");
        ArrayList list2 = new ArrayList();
        ArrayList list1 = new ArrayList();
        ArrayList list3 = new ArrayList();
        ArrayList list4 = new ArrayList();
        ArrayList list5 = new ArrayList();
        ArrayList list6 = new ArrayList();
        ArrayList list7 = new ArrayList();
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            list2.add(rs.getString(2));
            list1.add(rs.getString(1));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            list6.add(rs.getString(6));
            list7.add(rs.getString(7));
        }
    %>
    <body  class="publicbodytheme">
        <%@include  file="complainheader.jsp" %>
        <br><br><br>
        <table width="90%"  align="center" style="background-color:white;color:black" border="1">
            <tr align="center" bgcolor="black" style="color:white" >
                <td>complain id</td>
                <td>user id</td>
                <td>full name</td>
                <td>contact</td>
                <td>complain</td>
                <td>date</td>
                <td>status</td>
            </tr>
            <%
                for (int i = 0; i < list1.size(); i++) 
                {
            %>
            <tr align="center">
                <td><%=list2.get(i)%></td>
                <td><%=list1.get(i)%></td>
                <td><%=list3.get(i)%></td>
                <td><%=list4.get(i)%></td>
                <td><%=list5.get(i)%></td>
                <td><%=list6.get(i)%></td>
                <td><%=list7.get(i)%></td>
            </tr>
            <%
                }
            %>
            
        </table>
            
            
    </body>
</html>