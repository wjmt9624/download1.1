<%--
  Created by IntelliJ IDEA.
  User: 若风
  Date: 2020/6/5
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>project management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/css/styles/e.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        a{
            padding-left: 20px;
            padding-top: 20px;
            font-size: large;
            color: black;
            text-decoration: none;
            font-family:Arial,Helvetica,sans-serif;

        }
        a:hover{
            color: blue;
        }
    </style>

    <style type="text/css">
        #footerLast{
            background: black;
        }
    </style>
</head>

<body bgcolor="#FFFAFA">
<div id="mainWrapper">
    <header>
        <!-- This is the header content. It contains Logo and links -->
        <div id="logo"> <!-- <img src="logoImage.png" alt="sample logo"> -->
            <!-- Company Logo text -->
            <img src="${pageContext.request.contextPath}/images/logo.jpg" height="50px" width="139px"/>
        </div>

    </header>
    <section id="offer">
        <!-- The offer section displays a banner text for promotions -->
        <img src="${pageContext.request.contextPath}/images/test.jpg" height="400px" width="1202px" />

    </section>
    <div id="content">
        <section class="sidebar">
            <!-- This adds a sidebar with 1 searchbox,2 menusets, each with 4 links -->

            <div id="menubar">
                <nav class="menu">
                    <h2>software</h2>
                    <hr>
                    <ul>
                        <!-- List of links under menuset 1 -->
                        <li><a href="index.jsp" style="color: black" title="Link">eclipse</a></li>
                        <li><a href="index.jsp" style="color: black" title="Link">jdk</a></li>
                        <li><a href="index.jsp" style="color: black" title="Link">idea</a></li>

                    </ul>
                </nav>


                <nav class="menu">
                    <h2>jar</h2>
                    <!-- Title for menuset 2 -->
                    <hr>
                    <ul>
                        <!--List of links under menuset 2 -->
                        <li><a href="jar.jsp" style="color: black" title="Link">struts2</a></li>
                        <li><a href="jar.jsp" style="color: black" title="Link">hibernate</a></li>
                        <li><a href="jar.jsp" style="color: black" title="Link">spring</a></li>
                        <li><a href="jar.jsp" style="color: black" title="Link">spring MVC</a></li>
                        <li><a href="jar.jsp" style="color: black" title="Link">MyBatis</a></li>

                    </ul>
                </nav>

                <nav class="menu">
                    <h2>Project management</h2>
                    <!-- Title for menuset 2 -->
                    <hr>
                    <ul>
                        <!--List of links under menuset 2 -->
                        <li><a href="management.jsp" style="color: black" title="Link">svn</a></li>
                        <li><a href="management.jsp" style="color: black" title="Link">git</a></li>
                        <li><a href="management.jsp" style="color: black" title="Link">maven</a></li>

                    </ul>
                </nav>
            </div>
        </section>

        <section id="svn" class="page">
            <div class="productRow"><!-- Each product row contains info of 3 elements -->
                <article class="productInfo"><!-- Each individual product description -->
                    <a href="${pageContext.request.contextPath}/download.action?download=management/TortoiseSVN1.9.2.26806x64svn1.9.2.zip">TortoiseSVN1.9.2.26806x64svn1.9.2</a>
                </article>
            </div>
        </section>

        <section id="git" class="page">
            <div class="productRow"><!-- Each product row contains info of 3 elements -->
                <article class="productInfo"><!-- Each individual product description -->

                </article>
            </div>
        </section>


    </div>
    <foote id="footerLast">
        <!-- This is the footer with default 3 divs -->
        <div style="background: #A9A9A9">
            <form method="post" action="${pageContext.request.contextPath}/message.action">
                <center>
                    <label id="label">
                        <input type="text" style="position:relative;
			width:400px;
			margin:10px auto;
			display:inline-block;" placeholder="Your suggestion!"><br/>
                        <input type="submit" style="position:relative;
			width:400px;
			margin:10px auto;
			display:inline-block;" value="COMMIT">
                    </label>
                </center>
            </form>
        </div>
    </foote>
</div>
</body>
</html>
