<%-- 
    Document   : signup
    Created on : Sep 8, 2016, 5:39:29 PM
    Author     : Savinda Keshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pontano+Sans" rel="stylesheet">
        <style>
            body {
                background-image:url(img/res.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            }
            table {
                border: 1px solid black;
                padding: 10px 10px;
                margin-left: 800px;
                margin-top: 150px;
                width: 350px;
                background-color: black;
                border-radius: 0.3em;
                opacity: 0.9;
                height: 300px;
            }

            h3 {
                
                margin-top:5px;
                font-size: 18px;
                color:darkblue;
            }

            tr {
                padding: 10px;
                width: 200px;
                
            }

            td {
                padding: 5px;
                height: 5px;
                color: white;
                font-family: 'Acme', sans-serif;
              
            }
            input{
                width: 95%;
                height: 35px;
                margin-left: 6px;
                margin-right: 6px;
                border-radius: 0.4em;
            }

            .td1{
              background-color:gray; 
                
                
            }
            .button{
               margin-top: 5px;
               width: 95%;
               padding: 5px;
               height: 36px;
               margin-left: 7px;
               margin-right: 7px;
               
               color: black;
               font-family: 'Pontano Sans', sans-serif;
               background-color: #008fbf;
            }
            
            .dob {
                width: 53%;
                margin-left: 40px;
            }
            .l1 {
                margin-left: 10px;
            }
            
            .img {
                margin-left: 50px;
                
            }




        </style>

    </head>
    <body>
        <form action="SignUp" method="post">
            <table>
                <tr>
                    <td colspan="2"><img class="img" src="img/login.png"</td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="name" placeholder="Name" required="required"></td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="email"placeholder="E-mail" required="required"></td>
                </tr>             
                <tr>
                    <td colspan="2"><label class="l1">Date of Birth</label> <input class="dob" type="date"  name="bod" required="required"></td>
                </tr>              
                <tr>
                    <td colspan="2"> <input type="text" name="password" placeholder="Mobile Number" required="required"></td>
                </tr>              
                <tr>
                    <td colspan="2"> <input type="password" name="password" placeholder="Password" required="required"></td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="password" name="rePassword" placeholder="Retype your Password" required="required"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"> <input class="button" type="submit" value="Submit" ></td>
                </tr>

            </table>
        </form>
    </body>
</html>
