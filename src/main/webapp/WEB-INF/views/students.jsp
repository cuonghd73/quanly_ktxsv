<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách sinh viên</title>
</head>
<body>
<h2>Danh sách sinh viên</h2>
<a href="/students/add">➕ Thêm sinh viên</a><br/><br/>
<table border="1">
    <tr>
        <th>Mã SV</th>
        <th>Họ tên</th>
        <th>Lớp</th>
        <th>Quê quán</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="sv" items="${students}">
        <tr>
            <td>${sv.studentId}</td>
            <td>${sv.fullName}</td>
            <td>${sv.className}</td>
            <td>${sv.hometown}</td>
            <td>
                <a href="/students/edit/${sv.studentId}">✏️ Sửa</a>
                <a href="/students/delete/${sv.studentId}" onclick="return confirm('Xác nhận xoá?');">🗑 Xoá</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
