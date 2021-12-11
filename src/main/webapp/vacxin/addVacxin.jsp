<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/15/21
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/vacxin/add" method="post">
    <table border="0" cellpadding="5">
        <tr>
            <td>Tên Vacxin: </td>
            <td><input type="text" name="ten"></td>
        </tr>
        <tr>
            <td>Số Mũi: </td>
            <td><input type="text" name="somui"></td>
        </tr>
        <tr>
            <td>Mô tả: </td>
            <td><input type="text" name="mota"></td>
        </tr>
        <tr>
            <td>Giá: </td>
            <td><input type="text" name="gia"></td>
        </tr>
        <tr>
            <td>Tên Hãng SX: </td>
            <td><input type="text" name="tenhang"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>
</body>
</html>
