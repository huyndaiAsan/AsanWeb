<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div class="site-header">
      <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">현대아산 기업</a>
          </div>
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" role="navigation">
              <li role="presentation" class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">계정관리
                  <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="/scadmin/manager/read" class="">비밀번호 변경</a>
                  </li>
                </ul>
              </li>
              <li role="presentation"><a href="/scadmin/board/notice/list">공지사항</a></li>
              <li role="presentation"><a href="/scadmin/board/news/list">언론보도</a></li>
              <li role="presentation"><a href="/scadmin/board/reference/list">자료실</a></li>
              <li role="presentation"><a href="/scadmin/board/announce/list">전자공고</a></li>
              <li role="presentation"><a href="/scadmin/board/recruit/list">채용공고</a></li>
              <li role="presentation"><a href="/scadmin/board/construct/list">건설</a></li>
              
            </ul>
            <p class="navbar-text navbar-right"> 안녕하세요. ${adminSession.nm }님
              <button type="submit" class="btn  btn-default btn-xs" onclick="location.href='/scadmin/logout';">
                <i class="fa fa-sign-out" aria-hidden="true"></i> 로그아웃</button>
            </p>
          </div>
          <!-- //collapse -->
        </div>
        <!-- //container-fluid -->
      </nav>
    </div>