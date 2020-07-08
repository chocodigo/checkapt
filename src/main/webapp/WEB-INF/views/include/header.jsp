<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/>

<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<link rel="stylesheet" href="${contextPath}/resources/css/common.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <div class="hds-header mdl-layout__header mdl-shadow--2dp">
        <div class="mdl-layout__header-row">
          <span class="hds-title mdl-layout-title" style="color: #223055">
            <img class="hds-logo-image" src="${contextPath}/resources/images/logo.png" onclick="location.href='/'" style="cursor: pointer; vertical-align: bottom;">
              하자점검 관리 시스템
          </span>
            <!-- Add spacer, to align navigation to the right in desktop -->
            <div class="hds-header-spacer mdl-layout-spacer"></div>

            <!-- Navigation -->
            <div class="hds-navigation-container">
                <nav class="hds-navigation mdl-navigation">
                    <a class="mdl-navigation__link mdl-typography--text-uppercase" href='<c:url value="/main"/>'>아파트등록</a>
                    <a class="mdl-navigation__link mdl-typography--text-uppercase" href='<c:url value="/list"/>'>하자목록</a>
                </nav>
            </div>

        </div>
    </div>
</div>
