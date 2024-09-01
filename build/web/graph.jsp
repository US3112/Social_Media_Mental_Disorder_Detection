<%@page import="java.sql.*"%>
<%@page import="ActionPage.Percentage" %>
<%@page import="MysqlConnection.SqlConnection" %>
<%
    int re = 0, d = 0;
    String id = request.getParameter("id");
    System.out.println("count : " + id);
    int a = 0, b = 0, c = 0;
    try {
        Connection con1 = SqlConnection.getConnection();
        Statement st1 = con1.createStatement();
        String sql1 = "SELECT COUNT(*) AS tocount FROM tweet";
        ResultSet rs1 = st1.executeQuery(sql1);
        if (rs1.next()) {
            a = rs1.getInt("tocount");
            System.out.println("Total Count : " + a);
//
//            response.sendRedirect("user_home.jsp?msg=success");
//        } else {
//            response.sendRedirect("index.jsp?ulmsgg=Failed");
        }
        Connection con2 = SqlConnection.getConnection();
        Statement st2 = con2.createStatement();
        String sql2 = "SELECT COUNT(*) FROM tweet where status='1'";
        ResultSet rs2 = st2.executeQuery(sql2);
        if (rs2.next()) {
            b = rs2.getInt(1);
            System.out.println("MH Message : " + rs2.getInt(1));
//
//            response.sendRedirect("user_home.jsp?msg=success");
//        } else {
//            
        }

        c = a - b;
        System.out.println("Total Normal Msg : " + c);

        session.setAttribute("abnormal", b);
        session.setAttribute("normal", c);

//        response.sendRedirect("user_mhr1.jsp?ulmsgg=Failed");
        Percentage per = new Percentage();

        re = per.getPercentage(a, b);
        d = 100 - re;
        System.out.println("*******************************---------- : " + re);


    } catch (Exception ex) {
        ex.printStackTrace();
    }
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Home Page</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
        <%@ page import="java.util.*" %>
        <%@ page import="com.google.gson.Gson"%>
        <%@ page import="com.google.gson.JsonObject"%>

        <%
            System.out.println("******************************* : " + re);
            Gson gsonObj = new Gson();
            Map<Object, Object> map = null;
            List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

            map = new HashMap<Object, Object>();
            map.put("label", "Abnormal");
            map.put("y", re);
            list.add(map);
            map = new HashMap<Object, Object>();
            map.put("label", "Normal");
            map.put("y", d);
            list.add(map);


            String dataPoints = gsonObj.toJson(list);
        %>
        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
               
    </head>
    <body>
        <!-- HEADER -->
    <header>
    </div>
    <!-- container -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<div id="navigation">
    <!-- container -->
    <div class="container">
        <div id="responsive-nav">
            <!-- category nav -->
            <div class="category-nav">
                <span class="category-header">ADMIN HOME PAGE<i class="fa fa-list"></i></span>
                <ul class="category-list">
                    <li><a href="admin_home.jsp">Home</a></li>
                    <li><a href="user_de.jsp">User Details</a></li>
                    <li><a href="User_Tweet.jsp">User Tweets</a></li>
                    <li><a href="user_de1.jsp">User Mental health</a></li>
                    <li><a href="graph.jsp">Overall Mental health</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div>
            <!-- /category nav -->

            <!-- menu nav -->
            <div class="menu-nav">
                <span class="menu-header">Menu <i class="fa fa-bars"></i></span>
                <font style="color: white; font-size: 19px"><br><center>A Comprehensive Study on Social Network Mental Disorders Detection via Online Social Media Mining<br><br></center></font>
            </div>
            <!-- menu nav -->
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /NAVIGATION -->

<!-- HOME -->
<div id="home">
    <!-- container -->
    <div class="container">
        <!-- home wrap -->
        <div class="home-wrap">
            <!-- home slick -->
            <div id="home-slick">
                <!-- banner -->
                <div class="banner banner-1">
                    <img src="img/banner01.jpg" alt="">
                    <div class="banner-caption text-center">
                        <h1>SOCIAL MEDIA</h1>
                        <!--<h3 class="white-color font-weak"></h3>-->
                        <!--<button class="primary-btn">Shop Now</button>-->
                    </div>
                </div>
                <!-- /banner -->

                <!-- banner -->
                <div class="banner banner-1">
                    <img src="./img/banner06.jpg" alt="">
                    <div class="banner-caption">
                        <h1 class="primary-color">SOCIAL MEDIA</h1>
                        <!--SOCIAL MEDIASOCIAL MEDIA    <button class="primary-btn">Shop Now</button>-->
                    </div>
                </div>
                <!-- /banner -->

                <!-- banner -->
                <div class="banner banner-1">
                    <img src="./img/banner03.jpg" alt="">
                    <div class="banner-caption">
                        <h1 class="white-color">SOCIAL MEDIA</h1>
                        <!--<button class="primary-btn">Shop Now</button>-->
                    </div>
                </div>
                <!-- /banner -->
            </div>
            <script type="text/javascript">
                    window.onload = function() { 
 
                        var chart = new CanvasJS.Chart("chartContainer", {
                            theme: "light2", // "light1", "dark1", "dark2"
                            exportEnabled: true,
                            animationEnabled: true,
                            title: {
                                text: "Overall analysis Mental Health Research using Tweets"
                            },
                            data: [{
                                    type: "pie",
                                    toolTipContent: "<b>{label}</b>: {y}%",
                                    indexLabelFontSize: 16,
                                    indexLabel: "{label} - {y}%",
                                    dataPoints: <%out.print(dataPoints);%>
                                }]
                        });
                        chart.render();
 
                    }
                </script>
            <!-- /Content -->
            <div style="width:100%;" align="center" class="container">
                    <div id="chartContainer" style="height: 370px; width: 100%;"></div>




                </div>
            <!-- /Content -->

        </div>


    </div>


</div>
<!-- /HOME -->

<!-- section -->



<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/canvasv5.js"></script>
<script src="js/main.js"></script>

</body>

</html>

