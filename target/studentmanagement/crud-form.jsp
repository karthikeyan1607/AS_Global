<!-- File: F:\Projects\Extra\AS_Global\Stu_Reg\src\main\webapp\crud-form.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="my-4">${student == null ? 'Add' : 'Edit'} Student</h2>
        <form action="${student == null ? 'insert' : 'update'}" method="post">
            <input type="hidden" name="id" value="${student.id}">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" name="name" id="name" value="${student.name}" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" name="email" id="email" value="${student.email}" required>
            </div>
            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" class="form-control" name="age" id="age" value="${student.age}" required>
            </div>
            <button type="submit" class="btn btn-primary">${student == null ? 'Add' : 'Update'} Student</button>
        </form>
    </div>
</body>
</html>
