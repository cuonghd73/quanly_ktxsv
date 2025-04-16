<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Thông tin sinh viên</title>
</head>
<body>
<h2>Thông tin sinh viên</h2>

<form action="/students/save" method="post">
    Mã SV: <input type="text" name="studentId" value="${student.studentId}" ${student.studentId != null ? 'readonly' : ''} required/><br/>
    Họ tên: <input type="text" name="fullName" value="${student.fullName}" required/><br/>
    Lớp: <input type="text" name="className" value="${student.className}"/><br/>
    Quê quán: <input type="text" name="hometown" value="${student.hometown}"/><br/>
    CMND: <input type="text" name="idCard" value="${student.idCard}"/><br/>
    Ngày sinh: <input type="date" name="birthDate" value="${student.birthDate}"/><br/><br/>

    <button type="submit">Lưu</button>
    <a href="/students">Huỷ</a>
</form>
</body>
</html>
