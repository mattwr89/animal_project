<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<%@include file="head.jsp"%>
<body >

<header>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="">
      <img src="<c:url value="/resources/images/companyLogo.png" />" width="112" height="28" alt="Logo"/>
    </a>

    <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item">
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
    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a href="/register" class="button is-primary">
            <strong>Zostań wolonatriuszem</strong>
          </a>
          <a class="button is-light">
            Logowanie
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>
</header>
<div style="background-color:aquamarine">
<section class="section">
  <div class="container">
    <h1 class="title">Witamy</h1>
    <h2 class="subtitle">
      Nie możesz wyjść z domu? szukasz ludzi którzy, mogą w potrzebie pomóc Ci zająć się zwierzakiem?
    </h2>
    <p> Jesteśmy grupą wolontariuszy którzy rozumieją Twoją trudną sytuację i chętnie pomożemy w codziennych obowiązkach,
    z troski o Twojego pupila.<br>
      Jeżeli tylko zechcesz, odbierzemy go od Ciebie, wyprowadzimy na spacer i odstawimy bezpiecznie z powrotem do domu.
    </p>
  </div>
</section>

<div class="container">
  <h2>Wystarczy jeden prosty krok</h2>
</div>
  <div class="container">
      <br>
      <h3>Wypełnij formularz poniżej,</h3>
      <p>znajdziemy osobę która ogarnie Ci zwierzaka :)</p>
    </div>
<br>
</div>
<br>
<br>
<br>
<section>
<form:form modelAttribute="animalData" method="post" action="/animal/add">
<div class="container">
  <label class="label">Imię</label>
  <div class="control">
    <form:input path="name" type="name" placeholder="Wpisz swoje imię"/>
  </div>
<br>

  <label class="label">Twoje miasto</label>
  <div class="control">
    <form:input path="city" type="city" placeholder="Wpisz miasto"/>
  </div>
<br>
  <label class="label">Ulica</label>
  <div class="label">
    <form:input path="street" type="street" placeholder="Wpisz miasto"/>
  </div>
<br>
  <label class="label">Nr. kontaktowy</label>
  <div class="label">
    <form:input path="phoneNumber" type="name" placeholder="Wpisz miasto"/>
  </div>
<br>
  <label class="label">Termin spaceru</label>
  <div class="label">
      <label> Data <input pattern="yyyy-MM-dd" type="date" name="pickUpDate" id="pickUpDate" value="${animalData.pickUpDate}"/> </label>
      <label> Godzina <input type="time" name="pickUpTime" id="pickUpTime" value="${animalData.pickUpTime}"/></label>
  </div>
<br>


  <label class="label">Informacja o zwierzaku dla wolontariusza</label>
  <div class="control">
    <textarea class="textarea" name="pickUpComment" placeholder="Np. nie głaskać, nie lubi otoczenia innych zwierząt"></textarea>
  </div>


  <div class="control">
    <label class="checkbox">
      <input type="checkbox">
      Akceptuję <a href="#">regulamin serwisu</a>
    </label>
  </div>


  <div class="control">
    <button class="button is-link">Submit</button>
  </div>

</div>
</form:form>
</section>
</body>
</html>