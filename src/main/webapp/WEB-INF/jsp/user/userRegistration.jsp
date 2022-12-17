<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/registration.css"/>" rel="stylesheet">

<link href="//db.onlinewebfonts.com/c/a4e256ed67403c6ad5d43937ed48a77b?family=Core+Sans+N+W01+35+Light" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="form.css" type="text/css">
<div class="body-content">
    <div class="module">
        <h1>Регистрация</h1>
        <form class="form" action="form.php" method="post" enctype="multipart/form-data" autocomplete="off">
            <div class="alert alert-error"></div>
            <input type="text" placeholder="Имя" name="Имя" required />
            <input type="text" placeholder="Фамилия" name="Фамилия" required />
            <input type="text" placeholder="Ник" name="Ник" required />
            <input type="email" placeholder="Почта" name="Почта" required />
            <input type="text" placeholder="Телефон" name="Телефон" required />
            <input type="password" placeholder="Пароль" name="Пароль" autocomplete="новый-пароль" required />
            <input type="password" placeholder="Подтвердите пароль" name="Подтвердите пароль" autocomplete="новый-пароль" required />
            <div class="avatar"><label>Выберите фотографию: </label><input type="file" name="Фотография" accept="image/*" required /></div>
            <input type="submit" value="Зарегистрироваться" name="Зарегистрироваться" class="btn btn-block btn-primary" />
        </form>
    </div>
</div>