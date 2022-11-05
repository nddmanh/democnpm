<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
    <title>Bang Xep Hang</title>
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
            flex-direction: column;
        }

        .title {
            text-align: center;
        }


        .box select {
            background-color: #0563af;
            color: white;
            padding: 12px;
            width: 250px;
            border: none;
            font-size: 20px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
            -webkit-appearance: button;
            outline: none;
        }

        .box::before {
            content: "\f13a";
            font-family: FontAwesome;
            position: absolute;
            top: 0;
            right: 0;
            width: 20%;
            height: 100%;
            text-align: center;
            font-size: 28px;
            line-height: 45px;
            color: rgba(255, 255, 255, 0.5);
            background-color: rgba(255, 255, 255, 0.1);
            pointer-events: none;
        }

        .box:hover::before {
            color: rgba(255, 255, 255, 0.6);
            background-color: rgba(255, 255, 255, 0.2);
        }

        .box select option {
            padding: 30px;
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
        <p class="title">
            Bang xep hang
            <br>
            Co vua the gioi lan thu 10
        </p>

        <div class="box">
            <select id="selectVongDau">
                <option value="" selected disabled hidden>Chon vong dau</option>
                <c:forEach items="${vongDaus}" var="v">
                    <option value="${v.getVongDau()}" > Vong dau thu ${v.getVongDau()}</option>
                </c:forEach>
            </select>
        </div>
    </main>
    
    <script>
    	const selectElement = document.querySelector('#selectVongDau');
		selectElement.addEventListener('change', (event) => {
			let vongDauSo = event.target.value
			window.location.replace('vongdau?vongDau=' + vongDauSo);
		});
		
    </script>
</body>
</html>
