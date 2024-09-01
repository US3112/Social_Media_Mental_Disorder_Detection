<%@page import="java.sql.*" %>
<%
    String id = (String) session.getAttribute("sid");
    String name = (String) session.getAttribute("sname");
    String email = (String) session.getAttribute("semail");
    String gender = (String) session.getAttribute("sgender");
    String dob = (String) session.getAttribute("sdob");
    String state = (String) session.getAttribute("sstate");
    String country = (String) session.getAttribute("scountry");

    System.out.println("Session Values User Details : " + id + name + email + dob + gender + state + country);
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

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
        <script>
            function countChar(val) {
                var len = val.value.length;
                if (len >= 140) {
                    val.value = val.value.substring(0, 140);
                } else {
                    $('#charNum').text(140 - len);
                }
            }
            ;
        </script>
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
                <![endif]-->

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
                    <span class="category-header"><img style="border-radius: 50%;" src="view1.jsp?id=<%=id%>" width="100" height="70"> <i class="fa fa-list"></i></span>
                    <ul class="category-list">
                        <li><a href="user_home.jsp">Home</a></li>
                        <li class="dropdown side-dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Compose Tweet <i class="fa fa-angle-right"></i></a>
                            <div class="custom-menu">
                                <div class="row">
                                    <div class="col-md-4">
                                        <ul><form action="Tweets" method="post"  enctype="multipart/form-data">
                                                <li><h3 class="list-links-title">COMPOSE NEW TWEET</h3></li>
                                                <li><textarea name="msg" onkeyup="countChar(this)" required="" style="width: 360px; height: 100px; border-bottom-color: #00abf0; color: black"></textarea></li>
                                                <div id="charNum"></div><br>
                                                <li><input type="file" name="file" /><br></li>                                                
                                                <li><button style="width: 100px; height: 30px; background-color: tomato; color: wheat">TWEET</button></li>
                                            </form>
                                        </ul>
                                        <!--<hr class="hidden-md hidden-lg">-->
                                    </div>


                                </div>
                                <div class="row hidden-sm hidden-xs">
                                    <div class="col-md-12">
                                        <hr>
                                        <a class="banner banner-1" href="#">
                                            <img src="./img/banner05.jpg" alt="">
                                            <div class="banner-caption text-center">
                                                <h2 class="white-color" style="color: black">COMPOSE TWEET</h2>
                                                <h3 class="white-color font-weak" style="color: black">HERE</h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown side-dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Profile <i class="fa fa-angle-right"></i></a>
                            <div class="custom-menu">
                                <div class="row">
                                    <div class="col-md-4">
                                        <ul><form method="post" action="Register" enctype="multipart/form-data">
                                                <li>
                                                    <h3 class="list-links-title">MY PROFILE</h3></li>
                                                <li><img src="view1.jsp?id=<%=id%>" width="200" height="150"></li>
                                                <li><label>User ID</label><input style="width: 320px; height: 30px" type="text" readonly="" value="<%=id%>" required="" placeholder="Password"></li>
                                                <li><label>User Name</label><input style="width: 320px; height: 30px" type="text" readonly="" value="<%=name%>" placeholder="User name"></li>
                                                <li><label>Email ID</label><input style="width: 320px; height: 30px" type="text" readonly="" value="<%=email%>" placeholder="Email"></li>

                                                <li><label>Date Of Birth</label><input style="width: 320px; height: 30px" type="text" readonly="" value="<%=dob%>" placeholder="Date Of Birth"></li>
                                                <li><label>Gender</label><input style="width: 320px; height: 30px" type="text" readonly="" value="<%=gender%>" placeholder="Gender"></li>
                                                <li><label>State</label><input style="width: 320px; height: 30px" type="text" readonly="" value="<%=state%>" placeholder="State"></li>
                                                <li><label>Country</label><input style="width: 320px; height: 30px" type="text" readonly="" value="<%=country%>" placeholder="Country"></li>
                                                <!--<li><label>Select Profile</label><input style="width: 320px; height: 30px" type="file" required="" name="photo" placeholder=""></li><br>-->
                                                <!--<li><button style="width: 100px; height: 30px; background-color: tomato; color: wheat">Submit</button></li>-->
                                            </form>
                                        </ul>
                                        <!--<hr class="hidden-md hidden-lg">-->
                                    </div>


                                </div>
                                <div class="row hidden-sm hidden-xs">
                                    <div class="col-md-12">
                                        <hr>
                                        <!--                                        <a class="banner banner-1" href="#">
                                                                                    <img src="./img/banner05.jpg" alt="">
                                                                                    <div class="banner-caption text-center">
                                                                                        <h2 class="white-color" style="color: black">COMPOSE TWEET</h2>
                                                                                        <h3 class="white-color font-weak" style="color: black">HERE</h3>
                                                                                    </div>
                                                                                </a>-->
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li><a href="follow.jsp">Follower</a></li>
                        <li><a href="following.jsp">Following</a></li>
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
                <!-- /Content -->

                <div style="float:left; width:100%; background-color: #ccc; " >
                    <div style="background-color: #fefefe">
                        <font style="font-family: initial; color: #269abc "><strong><font size="5"><br>Following</font></strong></font><br><br>
                        <table>
                            <tr>
                                <th style="text-align: center;width: 200px; font-size: 16px; color: black">User ID</th>
                                <th style="text-align: center;width: 200px; font-size: 16px; color: black">User Name</th>
                                <th style="text-align: center;width: 200px;  font-size: 16px; color: black">Photo</th>
                            </tr>
                            <tr>
                                <%
                                    Connection con5 = MysqlConnection.SqlConnection.getConnection();
                                    Statement st5 = con5.createStatement();
                                    String sql3 = "select * from follow where uid='" + id + "' and status='following'";
                                    try {
                                        ResultSet rs5 = st5.executeQuery(sql3);
                                        while (rs5.next()) {
                                %>
                                <td style="font-size: 16px; color: #000033"><center><%=rs5.getString("fid")%></center></td>   
                            <td style="font-size: 16px; color: #000033"><center><%=rs5.getString("fname")%></center></td>  
                            <td><center><img src="view2.jsp?id=<%=rs5.getString("fid")%>" width="120" height="100"><br><br><br></center></td>
                            </tr>
                            <%
                                    }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table><br><br><br><br><br><br>
                    </div>
                </div>



                <!-- /Content -->

            </div>


        </div>


    </div>
    <!-- /HOME -->

    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- banner -->
                <div class="col-md-4 col-sm-6">
                    <a class="banner banner-1" href="#">
                        <img src="./img/banner10.jpg" alt="">
                        <div class="banner-caption text-center">
                            <h2 class="white-color">NEW COLLECTION</h2>
                        </div>
                    </a>
                </div>
                <!-- /banner -->

                <!-- banner -->
                <div class="col-md-4 col-sm-6">
                    <a class="banner banner-1" href="#">
                        <img src="./img/banner11.jpg" alt="">
                        <div class="banner-caption text-center">
                            <h2 class="white-color">NEW COLLECTION</h2>
                        </div>
                    </a>
                </div>
                <!-- /banner -->

                <!-- banner -->
                <div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3">
                    <a class="banner banner-1" href="#">
                        <img src="./img/banner12.jpg" alt="">
                        <div class="banner-caption text-center">
                            <h2 class="white-color">NEW COLLECTION</h2>
                        </div>
                    </a>
                </div>
                <!-- /banner -->

            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /section -->

    <!-- section -->

    <!-- section -->
    <div class="section section-grey">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- banner -->

                <!-- /banner -->

                <!-- /banner -->

                <!-- /banner -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /section -->

    <!-- section -->


    <!-- FOOTER -->
    <footer id="footer" class="section section-grey">
        <!-- row -->
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <!-- footer copyright -->
                <div class="footer-copyright">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <!--Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>-->
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </div>
                <!-- /footer copyright -->
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</footer>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>

</body>

</html>

