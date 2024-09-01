<%@page import="MysqlConnection.SqlConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    Connection con1 = SqlConnection.getConnection();
    Statement st1 = con1.createStatement();


    String msg = (String) session.getAttribute("message");
    System.out.println("Checking  : " + msg);
    boolean bol = false;

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/detection", "root", "root");
    Statement st = con.createStatement();
    String Query = "select * from mdwords";
    ResultSet rs = st.executeQuery(Query);
    while (rs.next()) {
        String val1 = rs.getString("word");
        System.out.println("val1 is :" + val1);
        if (msg.indexOf(val1) >= 0) {

            st1.executeUpdate("update tweet set status='1' where msg='" + msg + "'");
            response.sendRedirect("user_home.jsp?word=" + msg);

            bol = false;
            break;
        } else {
            bol = true;
        }
    }
    if (bol == true) {
        st1.executeUpdate("update tweet set status='0' where msg='" + msg + "'");

        response.sendRedirect("user_home.jsp?" + msg);
    }

%>

