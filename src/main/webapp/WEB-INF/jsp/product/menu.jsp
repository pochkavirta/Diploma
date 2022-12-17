<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/menu.css"/>" rel="stylesheet">

<div class="menu">
    <header class="headerMenu">
        <div>
            <a href="" class="logo">MarketPlace Golyshkin</a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
            <ul class="menu">
                <li><a href="user/login">Войти</a></li>
                <li><a href="#about">Регистрация</a></li>
                <li><a href="#careers">Корзина</a></li>
                <li><a href="#contact">Заказы</a></li>
            </ul>
        </div>
    </header>
</div>