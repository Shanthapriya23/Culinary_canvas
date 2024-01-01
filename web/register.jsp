<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="w3.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <style>
            body {
                margin: 0;
                padding: 0;
                background-image: url('Images/pizzas/register.png');
                background-size: cover;
                background-position: center;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                min-height: 100vh;
                color: white; 
                font-family: 'Ariel', sans-serif; 
                font-weight: bold; 
                font-size: 22px; 
            }

            fieldset {
                width: 800px;
                margin: auto; 
                margin-top: 120px; 
            }

            legend {
                color: white; /* Change legend color to white */
                font-size: 24px;
            }

            form {
                margin-top: 20px; /* Add margin from the top of the form */
            }

            table {
                width: 100%;
            }

            table tr td {
                padding: 10px;
            }

            input.w3-input {
                width: 100%;
                padding: 8px;
                box-sizing: border-box;
                margin-bottom: 10px; /* Add margin below each input */
            }

            input[type="submit"] {
                width: auto;
                padding: 10px 20px;
            }

            /* Style the link to sign in */
            td[colspan="2"] a {
                color: white;
                text-decoration: none;
                font-weight: bold; /* Make the font a little bolder */
            }

            td[colspan="2"] a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
    <center>
        <fieldset style="width:420px">
            <br/>
            <legend>Create an account</legend>
            <form method="post" action="check.jsp">
                <table>
                    <tr>
                        <td>First Name</td>
                        <td><input class="w3-input" type="text" name="fname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input class="w3-input" type="text" name="lname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input class="w3-input" type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input class="w3-input" type="text" name="uname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input class="w3-input" type="password" name="pass" value="" required/></td>
                    </tr>
                    <tr>
                        <td></td> <td align="right"><input type="submit" value="Sign up" class="w3-button w3-black"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">  Already have account <a href="index.jsp"><input type="button" class="w3-button w3-black" value="Sign In"></a></td>
                    </tr>
                </table>
            </form>
        </fieldset>

    </body>
</html>