<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>공용부점검 관리사이트</title>
</head>
<body>
<%@ include file="include/header.jsp" %>

<div class="table_box">
    <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
        <colgroup>
            <col width="10%">
            <col width="35%">
            <col width="25%">
            <col width="5%">
            <col width="5%">
            <col width="20%">
        </colgroup>
        <thead>
        <tr>
            <th>번호</th>
<%--            <th style="padding:0;">--%>
<%--                <select id="select_category" onchange="changeList()">--%>
<%--                    <option value="00">방분류</option>--%>
<%--                    <c:forEach var="item" items="${category_list }">--%>
<%--                        <option value="${item.cate_idxx}">${item.cate_name }</option>--%>
<%--                    </c:forEach>--%>
<%--                </select>--%>
            <th>방분류</th>
            <th>아파트</th>
            <th>동</th>
            <th>호수</th>
            <th>날짜</th>
            <th>상세내용</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${list}">
            <tr align="center">
                <td>${item.numb_keyx}</td>
                <td class="text_c">${item.cate_name}</td>
                <td>${item.aptt_name}</td>

                <td>${item.pk1}</td>
                <td>${item.pk2}</td>
                <td>
                    <fmt:formatDate pattern="yyyy-MM-dd" value="${item.reg_date}" />
                </td>
                <td><a href="/detail/${item.idxx_numb}">보기</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
    <!-- 페이징 하단 -->
    <div class="paging_box">
        <ul class="">
            <!-- 이전 버튼 생성되면 시작 페이지의 전 페이지로 링크 걸기 -->
            <c:if test="${pageMaker.prev}">
                <li>
                    <a class="mdl-navigation__link" href="/list?page=${pageMaker.startPage-1}" title="이전" class="prev">
                        <span><i class="material-icons">chevron_left</i></span>
                    </a>
                </li>
            </c:if>
            <!-- 시작 페이지부터 마지막 페이지 링크 걸기 -->
            <li>
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx" varStatus="status">
                    <c:if test="${curpage == status.index}">
                        <a class="mdl-navigation__link" href="/list?page=${idx}"><span class="active">${idx}</span></a>
                    </c:if>

                    <c:if test="${curpage != status.index}">
                        <a class="mdl-navigation__link" href="/list?page=${idx}"><span>${idx}</span></a>
                    </c:if>
                </c:forEach>
            </li>
            <!-- 다음 버튼 생성되면  마지막 페이지의 다음 페이지로 링크 걸기 -->
            <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
                <li>
                    <a class="mdl-navigation__link" href="/list?page=${pageMaker.endPage+1}" title="다음" class="next">
                        <span><i class="material-icons">chevron_right</i></span>
                    </a>
                </li>
            </c:if>
        </ul>
    </div>

<%@include file="include/footer.jsp"%>
</body>
</html>
