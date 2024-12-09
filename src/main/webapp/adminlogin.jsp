<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            background-color: #f4f4f4;
        }
        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-container {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px 0;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 12px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        input[type="submit"],
        input[type="reset"] {
            background-color: #337ab7;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin: 0 5px;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #23527c;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <h3><u>Admin Login</u></h3>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
