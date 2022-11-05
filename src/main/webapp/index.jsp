<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang chu</title>
    <style>
        body {
            margin:0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        header {
            background-color:  #04AA6D;
            display: flex;
            justify-content: end;
            align-items: center;
            gap: 20px;
            color: white;
            font-size: 16px;
        }

        .dropbtn {
            background-color: #04AA6D;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #ddd;}

        .dropdown:hover .dropdown-content {display: block;}

        .dropdown:hover .dropbtn {background-color: #3e8e41;}

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            font-size: 40px;
            font-weight: 800;
        }
        
        a {
		    text-decoration: none;
		    color: white;
		}
    </style>
</head>
<body>
    <header>
        <span><a href="index.jsp">Trang chu</a> </span>
        <div class="dropdown">
            <button class="dropbtn">Thong ke</button>
            <div class="dropdown-content">
                <a href="/democnpm/thongke">Bang xep hang</a>
                <a href="#">Ky thu</a>
                <a href="#">Ban to chuc</a>
            </div>
        </div>
        <span>Thong tin</span>
        <span>Dang ky</span>
        <span>Dang nhap</span>
    </header>
    <main>
        <p class="title">Co vua the gioi lan thu 10</p>
    </main>
</body>
</html>