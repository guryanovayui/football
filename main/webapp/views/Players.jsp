<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="domain.Players" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%
    // Создаем список игроков
    Players p1 = new Players(1, 1, "Иванов", "Вратарь", "21 мая", 185, 80);
    Players p2 = new Players(2, 2, "Петров", "Защитник", "10 июня", 180, 75);
    Players p3 = new Players(3, 3, "Сидоров", "Нападающий", "16 января", 178, 76);
    Players p4 = new Players(4, 4, "Макаренко", "Хавбек", "21 марта", 185, 78);

    List<Players> playersList = new ArrayList<>();
    playersList.add(p1);
    playersList.add(p2);
    playersList.add(p3);
    playersList.add(p4);

    request.setAttribute("players", playersList);
%>

<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Игроки</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Bootstrap Icons (если используете) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
<!-- jQuery -->
<script src="js/jquery-3.6.4.js"></script>
<!-- Bootstrap JS -->
<script src="js/bootstrap.min.js"></script>

<script>
function deletePlayer(id) {
    if (confirm('Вы уверены, что хотите удалить игрока?')) {
        // Логика удаления
        alert('Удаление игрока с кодом: ' + id);
        // Можно сделать AJAX-запрос или отправить форму
    }
}

function editPlayer(id) {
    // Логика редактирования
    alert('Редактировать игрока с кодом: ' + id);
}
</script>
</head>
<body>
<div class="container-fluid">
<jsp:include page="/views/header.jsp" />

<div class="container-fluid mt-3">
<div class="row justify-content-start">
<!-- Таблица игроков -->
<div class="col-8 border bg-light px-4">
<h3>Список игроков</h3>
<table class="table table-striped">
<thead>
<tr>
<th scope="col">Код</th>
<th scope="col">Имя</th>
<th scope="col">Позиция</th>
<th scope="col">Дата рождения</th>
<th scope="col">Рост</th>
<th scope="col">Вес</th>
<th scope="col">Редактировать</th>
<th scope="col">Удалить</th>
</tr>
</thead>
<tbody>
<c:forEach var="player" items="${players}">
<tr>
<td>${player.id}</td>
<td>${player.fullName}</td>
<td>${player.position}</td>
<td>${player.birthDate}</td>
<td>${player.height}</td>
<td>${player.weight}</td>

<!-- Кнопки редактирования и удаления -->
<td>
<button onclick="editPlayer(${player.id})" class="btn btn-outline-primary">
<i class="bi bi-pencil"></i> Редактировать
</button>
</td>

<td>
<button onclick="deletePlayer(${player.id})" class="btn btn-outline-danger">
<i class="bi bi-trash"></i> Удалить
</button>
</td>

</tr>
</c:forEach>
</tbody>
</table>
</div>

<!-- Форма добавления нового игрока -->
<div class='col-4 border px-4'>
<h3>Новый игрок</h3>

<form method='POST' action=''>
<!-- Поле для имени игрока -->
<div class='mb-3'>
<label for='inputName' class='form-label'>Имя</label>
<input type='text' name='inputName' class='form-control' id='inputName' />
</div>

<!-- Можно добавить другие поля по необходимости -->

<!-- Кнопка отправки формы -->
<button type='submit' class='btn btn-primary'>Добавить</button>

</form>
</div>

</div> <!-- row -->
</div> <!-- container-fluid -->

<jsp:include page='/views/footer.jsp' />
</div> <!-- container-fluid -->
</body>
</html>