<%@page import="Beans.PromotionDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.Promotion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<html>
    <head>
        <title>promotion</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    </head>
    <style>
        .btn {
            margin-right: 30px;
        }
    </style>
    <body style="background-color: #edeaea">
        <%
            HttpSession sessionUser = request.getSession(false);
            String email = (String) sessionUser.getAttribute("email");

            User user1 = new User();
            user1.setEmail(email);
            user1.getUser();
            String log;
            String logLink;
            String name = user1.getName();
            String sign = "";
            String signupLink = "";

            if (name == "") {
                log = "login";
                logLink = "login.jsp?login=promotion.jsp";
                sign = "Signup";
                signupLink = "signup.jsp";
            } else {
                log = "logout";
                logLink = "logout.jsp?page=promotion.jsp";
                sign = name;
                signupLink = "#";
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

            Promotion promotions = new Promotion();
            ArrayList<PromotionDetails> proDetails = new ArrayList<PromotionDetails>();
            proDetails = promotions.getPromotions();

        %>
        <!----start-header----->
        <div class="header">
            <div class="wrap">
                <div class="top-header">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo2.png" title="logo" /></a>
                    </div>
                    <div class="social-icons">
                        <ul>
                            <li><a href="https://www.facebook.com/pages/Maharaja-Palace-Colombo-7/102829946533873?nr"><img src="images/facebook.png" title="facebook" /></a></li>
                            <li><a href="#"><img src="images/twitter.png" title="twitter" /></a></li>
                            <li><a href="#"><img src="images/google.png" title="google pluse" /></a></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>
                <div class="top-nav">
                    <div class="top-nav-left">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="menu.jsp">Menu</a></li>
                            <li><a href="reservation.jsp">Reservations</a></li>
                            <li class="active"><a href="promotion.jsp">Promotions</a></li>
                            <li><a href="reviews.jsp">Reviews</a></li>
                            <div class="clear"> </div>
                        </ul>
                    </div>
                    <div class="top-nav-right">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="<% out.print(signupLink); %>"><span class="glyphicon glyphicon-user"></span><% out.print(" "+sign); %></a></li>        
                            <li><button class="btn btn-default navbar-btn"><a href="${logLink}">${log}</a></button></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>

            </div>
        </div>
        <div class="content">
            <div><img src="images/promosion.png"></div>
            <div class="gallerys">				
            </div>
        </div>
        <div class="container-fluid" style="margin-top:40px">
            <div class="row">
                <div class="col-md-12">
                    <%                        
                        for (int i = 0; i < proDetails.size(); i++) {
                            PromotionDetails temp = proDetails.get(i);
                    %>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="thumbnail">
                                <img alt="Bootstrap Thumbnail First" src="<% out.print(temp.getImagePath()); %>" />
                                <div class="caption">
                                    <h3><% out.print(temp.getTitle()); %></h3>
                                    <p><% out.print(temp.getDescription()); %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="wrap">
                <div class="footer-grid">
                    <h3></h3>
                </div>
                <div class="footer-grid center-grid">
                    <h3></h3>
                    <ul>

                    </ul>
                </div>
                <div class="footer-grid"></div>
                <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
        </div>
        <div class="copy-right">
            <div class="top-to-page">
                <a href="#top" class="scroll"></a>
                <div class="clear"></div>
            </div>	
        </div>        
    </body>
</html>


