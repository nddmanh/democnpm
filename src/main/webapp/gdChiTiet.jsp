<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
    <title>Tran dau</title>
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
            align-items: center;
            height: 80vh;
            flex-direction: column;
        }

        .title {
            text-align: center;
            font-size: 40px;
            font-weight: 800;
        }

        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 80%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
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
            Vong  ${vong} - Ky thu: ${tenkt.getName()}
        </p>

        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Ten doi thu</th>
                <th>Ket qua</th>
                <th>Muc tang elo</th>
            </tr>
			<c:forEach items="${listtd}" var="trandau">
	            <tr>
		            <td> ${trandau.getId()} </td>
		            <td> ${trandau.getDoithu().getName()} </td>
		            <td> ${trandau.getKetQua()} </td>
		            <td> ${trandau.getMucTangElo()} </td>
		        </tr>
	        </c:forEach>
        </table>
    </main>
</body>
</html>
