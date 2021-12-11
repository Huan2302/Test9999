<%@ page import="com.example.model.NhanvienModel" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.Vacxin" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    table, th, td {
        border:1px solid black;
    }
</style>
<body>

<form action="<%=request.getContextPath()%>/search" method="post">
    <lable>Search:</lable>
    <input type="text" name="search">
    <input type="submit">
</form>
<br>

<form action="<%=request.getContextPath()%>/vacxin/add">
    <input type="submit" value="Thêm Vacxin">
</form>
    <%
        if (request.getParameter("msg")!=null){
            String thongbao = "Sua thanh cong";
    %>
    <p style="color: green"><%=thongbao%></p>
    <%
        }
    %>
    <table>
        <tr>
            <th>Mã Vacxin</th>
            <th>Tên Vacxin</th>
            <th>Số mũi</th>
            <th>Mô tả</th>
            <th>Giá</th>
            <th>Tên hãng SX</th>
            <th>Sửa</th>
            <th>Xóa</th>
        </tr>

        <%
            List<Vacxin> vacxins = (List<Vacxin>) request.getAttribute("listVacxin");
            for (Vacxin item:vacxins){
        %>
        <tr>
            <td><%=item.getMaVacxin()%></td>
            <td><%=item.getTenVacxin()%></td>
            <td><%=item.getSoMui()%></td>
            <td><%=item.getMoTa()%></td>
            <td><%=item.getGiaVacxin()%></td>
            <td><%=item.getTenHangSX()%></td>
            <td><a href="<%=request.getContextPath()%>/vacxin/edit?id=<%=item.getMaVacxin()%>">Sửa</a></td>
            <td><a href="<%=request.getContextPath()%>/vacxin/del?id=<%=item.getMaVacxin()%>">xoa</a></td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>