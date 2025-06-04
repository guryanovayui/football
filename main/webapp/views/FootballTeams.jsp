<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="domain.Players"%>
<%@ page import="domain.FootballTeams"%>
<%
    // Создаем игроков
    Players p1 = new Players(1, 1, "Иванов", "Вратарь", "21 мая", 185, 80);
    Players p2 = new Players(2, 3, "Петров", "Вратарь", "10 июня", 180, 75);
    Players p3 = new Players(3, 1, "Сидоров", "Вратарь", "16 января", 178, 76);
    Players p4 = new Players(4, 2, "Макаренко", "Вратарь", "21 марта", 185, 78);
    Players[] playersArray = new Players[]{p1, p2, p3, p4};
    pageContext.setAttribute("players", playersArray);

    // Создаем футбольные команды
    FootballTeams f1 = new FootballTeams(1, "Зенит","Сергей Семак", "Россия", 1925);
    FootballTeams f2 = new FootballTeams(2, "Спартак","Деян Станкович", "Россия", 1922);
    FootballTeams f3 = new FootballTeams(3, "ЦСКА","Марко Николич", "Россия", 1911);
    FootballTeams f4 = new FootballTeams(4, "Ростов","Валерий Карпин", "Россия", 1930);
    FootballTeams[] teamsArray = new FootballTeams[]{f1, f2, f3, f4};
    pageContext.setAttribute("footballTeams", teamsArray);

    // Предположим у вас есть роли (например)
    String[] Players = {"Капитан", "Игрок"};
    pageContext.setAttribute("player", Players);
%>
<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Футбольные клубы</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery -->
<script defer src="js/jquery.min.js"></script>
<!-- Bootstrap JS + Popper JS -->
<script defer src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
 <jsp:include page="/views/header.jsp" />

 <div class="container-fluid">
   <div class="row justify-content-start">
     <div class="col-8 border bg-light px-4">
       <h3>Футбольные клубы</h3>
       <table class="table">
         <thead>
           <tr>
             <th scope="col">Код</th>
             <th scope="col">Название</th>
             <th scope="col">Тренер</th>
             <th scope="col">Страна</th>
             <th scope="col">Год</th>
             <th scope="col">Редактировать</th>
             <th scope="col">Удалить</th>
           </tr>
         </thead>
         <tbody>
           <c:forEach var="player" items="${Players}">
             <tr>
               <td>${player.id}</td>
               <td>${player.fullName}</td>
               <td>${player.position}</td>
               <td>${player.birthDate}</td>
               <td>${player.height}</td>
               <td>${player.weight}</td>
               <td width="20"><a href="#" role="button" class="btn btn-outline-primary"><img alt="Редактировать" src="images/icon-edit.png"></a></td>
               <td width="20"><a href="#" role="button" class="btn btn-outline-primary"><img alt="Удалить" src="images/icon-delete.png"></a></td>
             </tr>
           </c:forEach>
         </tbody>
       </table>
     </div>

     <!-- Форма добавления сотрудника -->
     <div class="col-4 border px-4">
       <form method="POST" action="">
         <h3>Новый клуб</h3><br>

         <!-- Фамилия -->
         <div class="mb-3 row">
           <label for="lastname" class="col-sm-3 col-form-label">Фамилия</label>
           <div class="col-sm-7">
             <input type='text' class='form-control' id='lastname' name='lastname' />
           </div>
         </div>

         <!-- Имя -->
         <div class='mb-3 row'>
           <label for='firstname' class='col-sm-3 col-form-label'>Имя</label>
           <div class='col-sm-7'>
             <input type='text' class='form-control' id='firstname' name='firstname' />
           </div>
         </div>

         <!-- Должность -->
         <div class='mb-3 row'>
           <label for='role' class='col-sm-3 col-form-label'>Должность</label>
           <div class='col-sm-7'>
             <select name='role' id='role' class='form-control'>
               <option>Выберите должность</option>
               <c:forEach var='role' items="${roles}">
                 <!-- Используем ${role} или ${role.namerole} в зависимости от структуры -->
                 <!-- Предположим roles - массив строк -->
                 <!-- Тогда так: -->
                 <!-- -->
                 <!-- Если roles - массив объектов с методом getNamerole(), используйте ${role.namerole} -->
                 <!-- Для массива строк просто ${role} -->
                 <!-- -->
                 <!-- Ниже пример для массива строк -->
                 <option value="${role}">${role}</option>
               </c:forEach>
             </select>
           </div>
         </div>

       
         <!-- Кнопка отправки -->
         <p><br><button type='submit' class='btn btn-primary'>Добавить</button></p>

       </form>
     </div>

   </div> <!-- row -->
 </div> <!-- container-fluid -->

<jsp:include page="/views/footer.jsp" />
</div> <!-- container-fluid -->

</body></html>
