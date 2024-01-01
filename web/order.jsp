<%@ page import="com.db.utils.DbConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid").equals(""))) {
%>
    <p>The Session was expired..........</p><br>
    </hr>
    <a href="index.jsp">Click here to login again....</a>
<%
    } else {
        float sum = 0;
        Connection con = DbConnection.init();
        Statement st = con.createStatement();
        ResultSet rs;
        String[] sports;
        ArrayList<Integer> arraylist = new ArrayList<>();
        sports = request.getParameterValues("chk1[]");
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Confirm your Order..</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="css1.css" type="text/css">
    <link rel="stylesheet" href="w3.css" type="text/css">
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
        .w3-xlarge w3-btn w3-block w3-black{
            background-color: black;
            color:white;
            align-items: center;
        }
    </style>
</head>
<body>
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
    <br/><br/><br/>
    <h1 style='display:inline-block;color:#212121;padding:5px;border:2px solid #616161;'>Your cart</h1>
    <table class='w3-table w3-bordered'>
        <tr>
            <th>Item Name</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>

<%
        float count = 0;
        if (sports != null) {
            for (int i = 0; i < sports.length; i++) {
                st.executeQuery("select item_name,price_rupee from items where id=" + sports[i] + "");
                rs = st.getResultSet();
                while (rs.next()) {
                    String nameVal = rs.getString("item_name");
                    int catVal = rs.getInt("price_rupee");
%>
                    <input type='hidden' id='cost' value="<%= catVal %>">
<%
                    arraylist.add(catVal);
                    sum += catVal;
                    int q = 1;
                    count++;
%>
                    <tr>
                        <td><%= nameVal %></td>
                        <td><%= q %></td>
                        <td><div id='total1'><%= catVal %></div></td>
                    </tr>
<%
                    count += 1;
                }
            }
        }

%>
        <tr>
            <td style='font-size:30px;'>Total</td>
            <td style='font-size:30px;'><%= count / 2 %></td>
            <td style='font-size:30px;'><%= sum %></td>
        </tr>
        <tr>
            <td colspan='3'>
                <div>
                    <a href="post.jsp">
                        <input type='button' style='width:100%' class='w3-xlarge w3-btn w3-block w3-black' value='Proceed to Checkout'>
                    </a>
                </div>
            </td>
        </tr>
    </table>
    <h4>&nbsp<a href="success.jsp" style="color:#212121" >Go Back to menu</a></h4>

    <div id="footer" style="height:270px; display:block;"></div>
</body>
</html>

<%
    }
%>
