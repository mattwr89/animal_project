
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<body lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Zostań wolonatiuszem</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>



<div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
        <a href="/home" class="navbar-item">
            Start
        </a>


        <div class="navbar-item has-dropdown is-hoverable">

            <a class="navbar-link">
                Więcej informacji
            </a>

            <div class="navbar-dropdown">
                <a class="navbar-item">
                    O nas
                </a>
                <a class="navbar-item">
                    Jak pomagamy?
                </a>
                <a class="navbar-item">
                    Kontakt
                </a>
                <hr class="navbar-divider">
                <a class="navbar-item">
                    Zgłoś problem
                </a>
            </div>
        </div>
    </div>
    <img src="<c:url value="resources/images/companyLogo.png" />" width="290" height="28" alt="Logo"/>
</div>

<div style="background-color:aquamarine">
    <section class="section">
        <div class="container">
            <h1 class="title">Jeszcze tylko krok i działasz z nami !</h1>
            <h2 class="subtitle">
                Zarejestruj się i dołącz do ekipy która ogarnia zwierzaki.
            </h2>
            <p>Wystarczy że podasz swoje imię, lub pseudonim oraz adres mailowy aby stać się pomocą dla tych którzy jej potrzebują.
            </p>
        </div>
    </section>

<form:form modelAttribute="data" method="post" action="/register">
<div class="container">
    <label class="label">Imię / Nick</label>
    <div class="control">
        <form:input path="username" type="text" name="username" placeholder="Wpisz swoje imię"/>
    </div>
</div>

<div class="container">
    <label class="label">Mail</label>
    <div class="control">
        <form:input path="email" type="email" placeholder="Wpisz email"/>

    </div>

    <div class="container">
        <label class="label">Hasło</label>
    <div class="control">
        <form:input path="password" type="passord" placeholder="Wprowadź hasło"/>

    </div>
    </div>
    <br>
    <button class="button is-link" type="submit">Zarejestruj</button>
</div>
    <br>
    <br>
    <br>
</div>
</div>

</div>
</form:form>

</body>
</html>