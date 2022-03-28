<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<div class="content-top-bar">
            <div class="inner clearfix">
              <div class="breadcrumb">
                <strong class="hide-element">현재위치</strong>
                <a href="/" class="hide-text breadcrumb__main-btn">메인</a>
                <div>
                  <span class="breadcrumb__main-menu">${MENUNM }</span>
                  <button type="button" class="hide-text">주 메뉴 목록열기</button>
                  <ul class="breadcrumb__drop-down-menu01"></ul>
                </div>
                <span class="hide-element">&gt;</span>
                <div>
                  <span class="breadcrumb__sub-menu">${FM }</span>
                  <button type="button" class="hide-text">서브 메뉴 목록열기</button>
                  <ul class="breadcrumb__drop-down-menu02"></ul>
                </div>
              </div>
              <div class="util-btn">
                <button type="button" class="share-btn"><i class="hide-text">공유하기 펼치기</i></button>
                <ul class="clearfix">
                  <li><a href="/" class="share-btn--facebook"><i class="hide-text">페이스북</i></a></li>
                  <li><a href="/" class="share-btn--twitter"><i class="hide-text">트위터</i></a></li>
                  <li><a href="/" class="share-btn--share"><i class="hide-text">공유하기</i></a></li>
                </ul>
                <button type="button" class="bookmark-btn" id="favorite"><i class="hide-text">즐겨찾기</i></button>
                <button type="button" onclick="print();" class="print-btn"><i class="hide-text">인쇄</i></button>
              </div>
            </div>
          </div>

