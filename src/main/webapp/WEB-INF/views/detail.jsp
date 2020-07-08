<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<link rel="stylesheet" href="${contextPath}/resources/css/common.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>공용부점검 관리사이트</title>
</head>
<body>

<div>
    <table width="100%" class="mdl-data-table mdl-js-data-table mdl-shadow--2dp" style="table-layout:fixed; margin:0; width:100%" >
        <tbody>
            <colgroup>
                <col width="20%">
                <col width="80%">
            </colgroup>
            <tr>
                <td style="text-align: left">글번호 </td>
                <td style="text-align: left">${detail.idxx_numb}</td>
            </tr>
            <tr>
                <td style="text-align: left">아파트 이름 </td>
                <td style="text-align: left">${detail.aptt_name}</td>
            </tr>
            <tr>
                <td style="text-align: left">세대 </td>
                <td style="text-align: left">${detail.pk1} 동 ${detail.pk2} 호</td>
            </tr>
            <tr>
                <td style="text-align: left">하자부분</td>
                <td style="text-align: left">${detail.cate_name}</td>
            </tr>
            <tr>
                <th colspan="2" style="text-align: left">하자내용</th>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left; word-break:break-word; white-space: normal">${detail.cont_ents}</td>
            </tr>
            <tr>
                <th colspan="2" style="text-align: left">하자부분 사진</th>
            </tr>
            <tr>
                <th colspan="2" style="text-align: left"><img width="300px" src="${imgUrl}"/></th>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>
