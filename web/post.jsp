<html>
    <head>
        <title>Post Order</title>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="w3.css" type="text/css">
    </head>
    <body>
        <style>
            body, div, ul, li, p {
            font-family: arial;
        }
        body {
            margin: 0;
            padding: 0;
            background-image: url('Images/pizzas/common_bg.png');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 100vh;
        }
        #header {
            height: 120px;
            display: block;
        }

        #header .logo a {
            padding-left: 450px;
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
        </style>
        <div id="header">
            <div>
                <div class="logo">
                    <a href="index.jsp"><img src="Images\pizzas\title.png"/>
                </div>
                <br/>
                <div id="span">
                    <ul id="navigation">
                        <li>
                            <a href="location.html">Locations</a>
                        </li>
                        <li>
                        <a href="about_us.html">About us</a>
                        </li>
                        
                        
                    </ul>
                </div>
            </div>
        </div>
        <br/><br/><br/>
        <fieldset>
            <legend> Enter Your Delivery Address:</legend>
            <table border=0>
                <form method="post" action="order_placed.html" class="w3-container">
                    <tr><th>Enter Full Name :</td><td><input class="w3-input"  type="text" name="fname" id="fname" required></td></tr>
                    <tr><th>Enter Mobile Number :</td><td><input class="w3-input"  typr="number" name="mobile" id="mnum" required></td></tr>
                    <tr><th>Enter Email Address :</td><td><input class="w3-input"  type="email" name="email" id="ename"></td></tr>
   
                    <tr><th>Choose delivery region:</th><td>
                        <select name="area">
                            <option value="1" selected>---Choose Region---</option>
                            <option value="Saidapet">Saidapet</option>
                            <option value="Guindy">Guindy</option>
                            <option value="Adyar">Adyar</option>
                            <option value="Velachery">Velachery</option> 
                            <option value="Koyambedu">Koyambedu</option>  
                        </select>	
                    </td></tr>
                    <tr><th>Enter Full Address :</th><td><input class="w3-input"  type="text" id="address" name="address" /></td></tr>
                    <br>
                    <br>
                    <tr><th colspan=2><input class='w3-xlarge w3-btn w3-block w3-black' type="submit" value="Place Order"/> </th></tr>						  
                </form>
            </table></fieldset>
        <div id="footer" style="height:270px;display:block;">

        </div>
</html>