<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">

<header class="header">
    <a href="" class="logo">CSS Nav</a>
    <input class="menu-btn" type="checkbox" id="menu-btn" />
    <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
    <ul class="menu">
        <li><a href="<c:url value="user/login"/>">SIGN IN</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#careers">Careers</a></li>
        <li><a href="#contact">Contact</a></li>
    </ul>
</header>