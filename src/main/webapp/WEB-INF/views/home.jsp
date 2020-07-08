<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>공용부점검 관리사이트</title>


</head>
<body>

    <form id="apt_insert_form" action="/aptInsertProc" method="post" enctype="multipart/form-data">
        <div class="mdl-textfield mdl-js-textfield">
            <input class="mdl-textfield__input" type="text" id="aptt_name" name="aptt_name">
            <label class="mdl-textfield__label" for="aptt_name">아파트 이름 입력 후 엔터</label>
        </div>
    </form>
    <div>
        <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
            <thead>
            <tr style="text-align: center">
                <th>아파트이름</th>
                <th>비고</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${list}">
                    <tr>
                        <td>${item.aptt_name}</td>
                        <td><a href="/aptDeleteProc/${item.aptt_numb}" style="color: black;">삭제</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
<%@include file="include/footer.jsp"%>
</body>
</html>
