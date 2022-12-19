<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet">

<div class="login-box">
    <h2>Login</h2>
    <form>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Username</label>
        </div>
        <div class="user-box">
            <input type="password" name="" required="">
            <label>Password</label>
        </div>
        <a href="#">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Submit
        </a>
    </form>
</div>

<!-- TODO Сложное - Добавить прокидывание вводимых параметров с формы -->
<!-- TODO Сложное - Добавить валидацию логина/пароль пока что без БД, только логику на фронт -->
