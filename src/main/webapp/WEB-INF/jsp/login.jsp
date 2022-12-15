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
<!-- TODO Прочитать про все атрибуты, которые есть на форме. div, span, a, input, h2 и другие -->
<!-- TODO RootController - добавить переход на страницу profile. Добавить страницу profile.jsp -->
<!--  public String editFeed(@RequestParam("id") Integer id - похожий пример -->

<!-- TODO Сложное - Добавить прокидывание вводимых параметров с формы -->
<!-- TODO Сложное - Добавить валидацию логина/пароль пока что без БД, только логику на фронт -->
