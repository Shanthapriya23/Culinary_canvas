<%@ page import="Demo.MinPath_1"%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {

%>
<center>
    <p align="center" style="font-size:45px">Culinary Canvas</p>
    Session expired.
    <a href="index.jsp" style="color:#616161;padding-top:23px">Sign in here</a>
</center>
<%} else {

%>
<html>
    <head><title>Culinary Canvas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="stylesheet" href="css1.css" type="text/css">
        <link rel="stylesheet" href="w3.css" type="text/css">

        <script>
            var b = 0;
            function update_value(chk_bx) {
                if (chk_bx.checked)
                {
                    var a = "checked";
                    b += 1;
                } else {
                    var a = "not checked";
                    if (b > 0) {
                        b -= 1;
                    } else if (b == 0) {
                        b = 0;
                    }
                }
                if (b == 0)
                {
                    document.getElementById('wish').innerHTML = '<img src="Images/shopping-cart.png" height=40 width=40>&nbsp&nbsp0';

                } else {
                    document.getElementById('wish').innerHTML = '<img src="Images/shopping-cart.png" height=40 width=40>&nbsp&nbsp' + b + '';
                }
            }
        </script>
    </head>
    <body>
       
        <style>
        body,div, ul, li, p {
            font-family: 'Montserrat', sans-serif;
            font-size: 45px;
            color:#6D2F0F;
            font-weight:bold;
        }
        form{
            margin: 0;
            background-image: url('Images/pizzas/success_bg.png');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 100vh;
        }
        #header {
            height: 130px;
            color: black;
            display: block;
            text-align: center;
        }

        #header .logo a {
            padding-left: 0;
            color: black;
            text-decoration: none;
            font-size: 40px;
        }
        #navigation {
            display: block;
            list-style: none;
            line-height: 50px;
            margin: 0;padding-left: 20;
            font-size: 30px;
            font-weight: bold; 
            text-align: center;
            background-color: white;
            color:#6D2F0F;
        }

        #navigation ul {
            display: inline-block;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        #navigation li {
            float: none;
            display: inline-block;
            width: 300px;
            text-align: center;
        }

        #navigation li a {
            font-size: 30px;
            line-height: 10px;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease-in-out;
        }

        #navigation li a:hover {
            font-size: 30px;
            color: #FF5733; 
        }

        #navigation li.active a {
            color: black;
            padding: 12px;
            background-color: transparent;
            font-size: 30px;
            border: 2px solid black;
            border-radius: 10px;
        }
    input[type="checkbox"], input[type="radio"] {
        width: 30px;
        height: 30px;
        border-width: 0;
        transition: all .3s linear;
    }

    #footer {
        display: block;
        background-color: #f5f5f5;
        color: #212121;
        padding-bottom: 70px;
        text-align: center;
    }

    table.w3-table td {
        text-align: center;
        padding: 15px; /* Add padding for spacing */
    }

    table.w3-table tr:first-child td {
        border-top: 2px solid #fff; /* Add border at the top of the first row */
    }

    table.w3-table tr:last-child td {
        border-bottom: none; /* Remove border at the bottom of the last row */
    }

    #order input {
        font-size: 45px;
        margin-top: 20px; /* Add margin for spacing */
    }

    table.w3-table td:hover {
        background-color: rgba(255, 255, 255, 0.1);
        transition: background-color 0.3s ease-in-out;
    }

</style>
        <div id="header">
            <div>
                <div class="logo">
                    <a href="index.jsp"><img src="Images\pizzas\title.png"/></a>&nbsp;&nbsp;&nbsp;
                    <span id="wish"><img src="Images/shopping-cart.png" height=40 width=40> 0</span>
                </div>
                <div id="span">
                    <ul id="navigation">
                        <li class="active">
                            <a href="#">Welcome</a>
                        </li>
                        <li>
                            <a href="location.html">Locations</a>
                        </li>
                        <li>
                            <a href="about_us.html">About us</a>
                        </li>
                        <li>
                            <a href="logout.jsp">Log out</a>	
                        </li>
                        <li>
                            <a href="#"><i><%out.print(session.getAttribute("userid")); %></i></a>	
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <br/>
        <form method="post" action="order.jsp">
            <table class="w3-table"> 
                <tr>
                    <td><img src="Images/pizzas/pasta.jpg" height=240 width=290></td>
                    <td><img src="Images/pizzas/red_muffin.jpeg" height=240 width=290></td>
                    <td><img src="Images/pizzas/choco_cake.jpeg" height=240 width=290></td>
                </tr>
                <tr>
                    <td><input class="mv1" type="checkbox" name="chk1[]" value="1" onchange="update_value(this);"></td>
                    <td><input class="mv2" type="checkbox" name="chk1[]" value="2" onchange="update_value(this);"></td>
                    <td><input class="mv3" type="checkbox" name="chk1[]" value="3" onchange="update_value(this);"></td>
                </tr>
                <tr>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Penne Alfredo Pasta RS.150</td>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Red Velvet Muffin RS.120</td>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Chocolate Cake RS.170</td>
                </tr>
                <tr>
                    <td><img src="Images/pizzas/pan_pizza.jpeg" height=240 width=290></td>
                    <td><img src="Images/pizzas/rings.jpeg" height=240 width=290></td>
                    <td><img src="Images/pizzas/cheese_cake.jpeg" height=240 width=290></td>
                </tr>
                <tr>
                    <td><input class="mv4" type="checkbox" name="chk1[]" value="4" onchange="update_value(this);"></td>
                    <td><input class="mv5" type="checkbox" name="chk1[]" value="5" onchange="update_value(this);"></td>
                    <td><input class="mv6" type="checkbox" name="chk1[]" value="6" onchange="update_value(this);"></td>
                </tr>
                <tr>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Chicken Supreme Pizza RS.350</td>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Onion Rings RS.200</td>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Blueberry Cheese Cake RS.200</td>
                </tr>
                <tr>
                    <td><img src="Images/pizzas/ice_cream.jpeg" height=240 width=290></td>
                    <td><img src="Images/pizzas/chole_batura.jpeg" height=240 width=290></td>
                    <td><img src="Images/pizzas/fish_fingers.jpeg" height=240 width=290></td>
                </tr>
                <tr>
                    <td><input class="mv7" type="checkbox" name="chk1[]" value="7" onchange="update_value(this);"></td>
                    <td><input class="mv8" type="checkbox" name="chk1[]" value="8" onchange="update_value(this);"></td>
                    <td><input class="mv9" type="checkbox" name="chk1[]" value="9" onchange="update_value(this);"></td>
                </tr>
                <tr>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Brownie Oreo Sundae RS.250</td>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Chole Batura RS. 220</td>
                    <td style="font-size: 30px;font-weight: bold; text-align: center;background-color: white;">Fish Fingers RS.300</td>
                </tr>
            </table>
            <br>
            <div id="order"><input type="submit" style="font-size:45px;" value="Add to cart" class="w3-btn-block w3-black" /></div>
        </form>
        <%
            }
        %>
    </body>
</html>