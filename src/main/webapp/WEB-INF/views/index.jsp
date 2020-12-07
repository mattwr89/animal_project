<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<%@include file="head.jsp"%>
<body >

<header>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="">
      <img src="<c:url value="resources/images/companyLogo.png" />" width="112" height="28" alt="Logo"/>
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

<div class="container">
<%--  <img src="resources/images/1.jpg" id="responsive-flamingo" width="1280">--%>
</div>


<br><br><br>
<div class="container">
  <label class="label">Imię</label>
  <div class="control">
    <input class="input" type="text" placeholder="Wpisz swoje imię">
  </div>
</div>

<div class="container">
  <label class="label">Ulica</label>
  <div class="control has-icons-left has-icons-right">
    <input class="input" type="text" placeholder="Nie podawaj dokładnego adresu, jedynie ulicę" >
    <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>
    <span class="icon is-small is-right">
      <i class="fas fa-check"></i>
    </span>
  </div>
</div>

<div class="container">
  <label class="label">Nr. kontakowy</label>

    <input class="input" type="number" placeholder="Wpisz numer telefonu kontaktowego" >
    <span class="icon is-small is-left">
      <i class="fas fa-envelope"></i>
    </span>
    <span class="icon is-small is-right">
      <i class="fas fa-exclamation-triangle"></i>
    </span>
  </div>

<br>
<div class="container">
  <label class="label">Miasto</label>
  <div class="control">
    <div class="select">
      <select>
        <option>Wybierz swoje miasto</option>
        <option>With options</option>
      </select>
    </div>
  </div>
</div>
<br>
<div class="container">
  <label class="label">Termin spaceru</label>
  <div class="form-group form-group--inline">
    <label> Data <input pattern="yyyy-MM-dd" type="date" name="pickUpDate" id="pickUpDate" value="${notificationData.pickUpDate}"/>
    </label>
  </div>

  <div class="form-group form-group--inline">
    <label> Godzina <input type="time" name="pickUpTime" id="pickUpTime" value="${notificationData.pickUpTime}"/>
    </label>
  </div>
<br>
<div class="container">
  <label class="label">Informacje dla wolontariusza, dotyczące zwierzaka</label>
  <div class="control">
    <textarea class="textarea" placeholder="Wpisz to co uważasz za najważniejsze na spacerze, np, trzymać zdala od innych piesków, nie lubi się głaskać"></textarea>
  </div>
</div>

<div class="container">
  <div class="control">
    <label class="checkbox">
      <input type="checkbox">
      I agree to the <a href="#">terms and conditions</a>
    </label>
  </div>
</div>

<div class="container">
  <div class="control">
    <label class="radio">
      <input type="radio" name="question">
      Yes
    </label>
    <label class="radio">
      <input type="radio" name="question">
      No
    </label>
    <br>
  </div>
    <button class="button is-link">Wyślij zgłoszenie</button>
  </div>
</div>
<br>

</div>
</body>
</html>