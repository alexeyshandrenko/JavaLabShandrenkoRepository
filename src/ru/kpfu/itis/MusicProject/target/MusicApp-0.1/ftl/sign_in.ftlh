<#ftl encoding="UTF-8"/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../front/icons/favicon.svg" type="image/x-icon">
    <title>Вход в аккаунт</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-position: top;
            background-image: url(https://static.tumblr.com/918c6a8c8a6db456611409460d660e71/zocfpr0/1Fvpsgdmh/tumblr_static_tumblr_static_8clfch985e0440w8sswskk0kk_focused_v3.jpg);
            font-family: "Arial";
        }

        .registrationBox {
            width: 350px;
            padding: 40px 10px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #fdf4e3;
            text-align: center;
            border-radius: 25px;
        }

        .registrationBox h1 {
            text-transform: uppercase;
            font-weight: 500;
            margin-bottom: 50px;
            color: #363237;
        }

        .bi-shop {
            position: relative;
            margin: 20px auto;
        }

        .registrationBox input[type = "text"], .registrationBox input[type = "password"], .registrationBox input[type = "email"], .registrationBox input[type = "number"] {
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #af4425;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            border-radius: 24px;
            transition: 0.25s;
            color: #363237;
        }

        .registrationBox input[type = "text"]:focus, .registrationBox input[type = "password"]:focus, .registrationBox input[type = "email"]:focus, .registrationBox input[type = "number"]:focus {
            width: 280px;
            border-color: #785a46;
            background: #f8a07a;
        }

        .registrationBox input[type = "submit"] {
            border: 0;
            background: none;
            display: block;
            margin-top: 20px;
            margin-right: auto;
            margin-left: auto;
            margin-bottom: 10px;
            text-align: center;
            border: 2px solid #662e1c;
            padding: 14px 40px;
            outline: none;
            border-radius: 24px;
            transition: 0.25s;
            color: #363237;
        }

        .registrationBox input[type = "submit"]:hover {
            background: #662e1c;
            color: white;
        }

        .remember_me {
            display: inline;
            font-size: 12px;
            color: #363237;
            margin-bottom: 10px;
        }

        .notification {
            font-size: 12px;
            color: #363237;
            margin-bottom: 10px;
            margin-top: 20px;

        }

        .notification a:link {
            color: #363237;
            text-decoration: none;

        }

        .notification a:hover {
            color: #357898;
        }

        .anonymous {
            font-size: 12px;
            color: #363237;
            margin-top: 10px;
        }

        .anonymous a:link {
            color: #363237;
            text-decoration: none;
        }

        .anonymous a:hover {
            color: #357898;
        }
    </style>
</head>
<body>
<form class="registrationBox" name="myForm" action="/sign_in" method="post">
    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-vinyl-fill"
         viewBox="0 0 16 16">
        <path d="M8 6a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm0 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4 8a4 4 0 1 0 8 0 4 4 0 0 0-8 0z"/>
    </svg>
    <h1>Sign In</h1>
    <input type="email" name="email" placeholder="Email">
    <input type="password" name="password" placeholder="Password">
    <a href="" style="text-decoration: none"><input type="submit" name="" value="Sign In"></a>
    <div class="anonymous"> Enter like <a href="#"><b>Anonymous</b></a></div>
    <div class="anonymous">Don't have an account? <a href="/sign_up"><b>Sign Up</b></a></div>
</form>

<script>
    var myForm = document.forms.myForm;

    myForm.onsubmit = function () {
        if (myForm.password.value === "" || myForm.email === "") {
            alert("Please, enter forms");
            return false;
        } else {
            return true;
        }
    }
</script>
</body>
</html>