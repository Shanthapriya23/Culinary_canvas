<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Culinary Canvas</title>
        <link rel="stylesheet" href="w3.css" type="text/css">
        <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('Images/pizzas/culinary_canvas_bg.png');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 100vh;
        }

        .centered-container {
            width: 400px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            margin: auto;
        }

        form {
            text-align: center;
        }

        .footer {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 10px;
        }
        </style>
    </head>
    <body>
        <div class="centered-container">
            <fieldset style="width: 270px; margin: 0 auto;">
                <form method="post" action="login.jsp" class="w3-container">
                    <center>
                        <table border="1" width="30%" cellpadding="3"> 
                            <thead>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Username</td>
                                    <td><input type="text" name="uname" value="" /></td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td><input type="password" name="pass" value="" /></td>
                                </tr>
                                <tr><td></td>
                                    <td><input type="submit" value="Sign In" class="w3-btn w3-hover-black" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><a href="register.jsp">Create an account</a></td>
                                </tr>
                            </tbody>
                        </table>
                </form>
            </fieldset>
        </div>
    </center>
    <div class="w3-container ">
    </div>
   <p class="footer">Made with love by Shantha priya and Mridula.</p>
</body>
</html>